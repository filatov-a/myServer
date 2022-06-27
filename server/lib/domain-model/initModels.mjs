import cls                     from 'cls-hooked';
import Sequelize               from 'sequelize';
// import mysql                   from 'mysql2/promise';
import Models                  from './Models.mjs';

const namespace = cls.createNamespace('sequelize');

Sequelize.useCLS(namespace);

export function initModels(dbConfig) {
    const models = Models();
    const { database, username, password, dialect, host, port } = dbConfig.development;

    // const connection = await mysql.createConnection({ host, port, username, password });
    // await connection.query(`CREATE DATABASE IF NOT EXISTS \`${database}\`;`);
    const sequelize = new Sequelize(database, username, password, {
        host,
        port,
        dialect,
        logging : false
    });


    Object.values(models).forEach(model => model.init(sequelize));
    Object.values(models).forEach(model => model.initRelationsAndHooks(sequelize));
    Object.values(models).forEach(model => model.sync({ alter: true }));

    return {
        models,
        sequelize
    };
}
