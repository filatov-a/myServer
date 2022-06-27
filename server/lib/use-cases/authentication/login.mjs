import jwt from 'jsonwebtoken';
import argon2  from 'argon2';
import Models         from '../../domain-model/Models.mjs';
import Base from '../../use-cases/Base.mjs';
import config from '#global-config' assert {type: 'json'};

export default class login extends Base {
    async validate(data = {}) {
        console.log(data);
        const rules = {
            id   	: [	'required', 'string' ],
            password	: [	'required', 'string', { min_length: 8, max_length: 20 } ]
        };

        return this.doValidation(data, rules);
    }

    async execute({ id, password }) {

    }
}
