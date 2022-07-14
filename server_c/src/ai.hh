#pragma onec

#include <ctime>
#include <numeric>
#include <fstream>

#include <iostream>

#include <vector>
#include <limits>
#include <thread>

class AI
{
    std::vector<double> x;
	std::vector<double> y;
	std::vector<double>error;
	double devi;
	double b0 = 0;
	double b1 = 0;
	double learnRate = 0.01;
	int epochs = 10;

    enum STAGE{
        START,
        END,

        FITNESS,
        TEST,

        ERROR,
        UNDEF
    } stage;

    STAGE start();
    STAGE fitness();
    STAGE test();
    STAGE end();
public:
    AI();
    ~AI();

    void run();
};