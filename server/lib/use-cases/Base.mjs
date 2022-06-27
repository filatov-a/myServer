import LIVR from 'livr';
import { Exception } from './Exception.mjs';

import '../utils/livr.mjs';


export default class UseCaseBase {
    static sequelizeInstanse = null;

    static setApp(App) {
        UseCaseBase.App = App;
    }

    static setSequelizeInstanse(sequelize) {
        UseCaseBase.sequelizeInstanse = sequelize;
    }

    static setAppConfig(config) {
        UseCaseBase.appConfig = config;
    }

    async run(args) {
        return UseCaseBase.sequelizeInstanse.transaction(async () => {
            this.sequelize = UseCaseBase.sequelizeInstanse;
            this.app = UseCaseBase.App;

            let result = null;

            let cleanParams = args;

            if (this?.validate) cleanParams = await this.validate(args);

            result = this.execute(cleanParams);

            return result;
        });
    }


    async doValidation(data, rules) {
        const validator = new LIVR.Validator(rules).prepare();
        const result = validator.validate(data);

        if (!result) {
            const exception = new Exception({
                code   : 'FORMAT_ERROR',
                fields : validator.getErrors()
            });

            throw exception;
        }

        return result;
    }
}
