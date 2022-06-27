import config                  from '../config/config.json' assert {type: 'json'}; // eslint-disable-line
import dbConfig from '../config/db.json ' assert {type: 'json'}; // eslint-disable-line
import * as api                from './api/rest-api/app.mjs';
import { initModels } from './domain-model/index.mjs';
import UseCaseBase             from './use-cases/Base.mjs';

export default class AppProvider {
    config = null;

    sequelize = null;

    api = null;

    params = {};

    static create() {
        console.log("create APP")
        return new this();
    }

    initApp() {
        console.log("init APP")
        this.config = config;
        this.api = api;
        this.dbConfig = dbConfig;

        this.initDb();
        this.initUseCases();

        return this;
    }

    start(params = {}) {
        this.api.init({ sequelize: this.sequelize});
        this.api.start({
            appPort : this.config.appPort,
            secure  : this.config?.https,
            ...params
        });
    }

    initDb() {
        console.log("init Db")
        const {sequelize, models} = initModels(this.dbConfig, this.params);
        this.sequelize = sequelize;
        this.models = models;
    }

    getTable(tableName){
        for (let i = 0; i < this.models.length; i++){
            if (this.models[i].TableName === tableName) return this.models[i];
        }
    }

    initUseCases() {
        console.log("init use cases")
        UseCaseBase.setApp(this)
        UseCaseBase.setSequelizeInstanse(this.sequelize);
        UseCaseBase.setAppConfig(this.config);
    }
}
