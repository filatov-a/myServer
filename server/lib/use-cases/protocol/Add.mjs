import Base from '../../use-cases/Base.mjs';
import config from '#global-config' assert {type: 'json'};
import dbConfig from '#global-dbConfig' assert {type: 'json'};
import mail from "../utils/email.mjs";
import jwt from "jsonwebtoken";
import fs from 'fs';
import {convertJSON} from "../../domain-model/Models.mjs";

function delay(time) {
	return new Promise(resolve => setTimeout(resolve, time));
}

export default class Add extends Base {
	async execute(data) {
		const {table_name} = data
		let dumpData = {};
		let keys = Object.keys(data);
		keys.forEach(i => {
			if (i !== "table_name"){
				dumpData[i] = data[i];
			}
		})
		await this.app.getTable(table_name).create(dumpData);
	}
}
