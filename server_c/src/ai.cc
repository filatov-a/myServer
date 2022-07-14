#include "ai.hh"
#include <vector>

using namespace std;

bool custom_sort(double a, double b) /* this custom sort function sorts based on the minimum absolute value */
{
    double a1=abs(a-0);
    double b1=abs(b-0);
    return a1<b1;
}

AI::AI()
{
	x = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};    // defining x values
	y = {1, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22};    // defining y values
	b0 = 0;                   //initializing b0
	b1 = 0;                   //initializing b1
	learnRate = 0.01;             //initializing error rate
	epochs = 10;
}

AI::~AI(){}

void AI::run()
{
	while (stage != ERROR && stage != UNDEF)
	{
        switch (stage)
		{
            case START:
                stage = start();
                break;
            case FITNESS:
                stage = fitness();
                break;
            case TEST:
                stage = test();
                break;
            case END:
                stage = end();
                break;
            default:
                stage = UNDEF;
                break;
        }
    }
}

AI::STAGE AI::start()
{
	stage = FITNESS;
	return stage;
}
AI::STAGE AI::fitness()
{
	for (int i = 0; i < x.size()*epochs; i ++) {
		int index = i % (epochs+1);
		double p = b0 + b1 * x[index];
		devi = p - y[index];
		b0 = b0 - learnRate * devi;
		b1 = b1 - learnRate * devi * x[index];
		// cout<<"B0="<<b0<<" "<<"B1="<<b1<<" "<<"error="<<devi<<endl;
		error.push_back(devi);
	}
	return TEST;
}
AI::STAGE AI::test()
{
	sort(error.begin(),error.end(),custom_sort);
	cout<<"Optimal end values are: "<<"B0="<<b0<<" "<<"B1="<<b1<<" "<<"error="<<error[0]<<endl;
	return END;
}
AI::STAGE AI::end()
{
	cout << "Enter a test x value";
	double test;
	cin >> test;
	double pred = b0+b1*test;
	cout << "The value predicted by the model = " << pred << endl;
	return UNDEF;
}