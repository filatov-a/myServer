import Models         from '../../domain-model/Models.mjs';
import Base from '../../use-cases/Base.mjs';

export default class UsersList extends Base {
    // async validate(data = {}) {
    //     console.log(data);
    //     const rules = {
    //         title   : [ 'required', 'string' ],
    //         content	: [	'required', 'string' ]
    //     };
    //
    //     return this.doValidation(data, rules);
    // }

    async execute() {
        const users = await Models.findAll();

        console.log(users);

        return {
            users
        };
    }
}
