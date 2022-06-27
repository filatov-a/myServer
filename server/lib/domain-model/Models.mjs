import fs from 'fs';
import {fileURLToPath} from 'url';
import path from 'path';
import config from '#global-config' assert {type: 'json'};
import { DataTypes as DT }     from 'sequelize';
import Base                from './Base.mjs';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

function createStaticClassModel(TableName, ExtraModelSchema) {
    return class Model extends Base {
        static TableName = TableName
        static generateSchema() {
            this.ModelSchema = {
                id: { type: DT.UUID, defaultValue: DT.UUIDV4, primaryKey: true },
                ...ExtraModelSchema,
                createdAt: { type: DT.DATE, allowNull: false },
                updatedAt: { type: DT.DATE, allowNull: false }
            }

            return this.ModelSchema;
        }

        static initRelations() {

        }
    }
}

export function convertJSON(path_file) {
    let seqData = {}
    JSON.parse(fs.readFileSync(path_file), (key, value) => {
        if (key !== ''){
            switch (key){
                case 'string':
                    seqData[key] = { type: DT.STRING }
                    break;
                case 'id':
                    seqData[key] = { type: DT.UUID }
                    break;
                case 'int':
                    seqData[key] = { type: DT.INTEGER }
                    break;
                case 'double':
                    seqData[key] = { type: DT.DOUBLE }
                    break;
                case 'bool':
                    seqData[key] = { type: DT.BOOLEAN }
                    break;
                default:
                    seqData[key] = { type: DT.STRING }
            }

        }
    })
    return seqData;
}

function Models(){
    let models = []
    fs
        .readdirSync(__dirname + config.dirCreatedModels)
        .filter(file => {
            return (file.indexOf('.') !== 0) && (file.slice(-5) === '.json');
        })
        .forEach( async file => {
            const path_file = __dirname + config.dirCreatedModels + "/" + file;
            const dataObjectJSON = convertJSON(path_file);
            const nameOfFile = file.slice(0, file.length-5);
            models.push(createStaticClassModel(nameOfFile, dataObjectJSON));
        });
    models.forEach(i => {
        console.log(i.TableName)
    })
    return models;
}

export default Models;
