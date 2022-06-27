import Models         from '../../domain-model/Models.mjs';
import Base from '../../use-cases/Base.mjs';

export default class UsersGetOne extends Base {
    async validate(data = {}) {
        console.log(data);
        const rules = {
            id : [ 'required', 'string' ]
        };

        return this.doValidation(data, rules);
    }

    async execute({ id }) {
        const user = await Models.findOne({ where: { id } });

        return {
            user
        };
    }
}
