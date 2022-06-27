import jwt from 'jsonwebtoken';
import Models from '../../domain-model/Models.mjs';
import config from '#global-config' assert {type: 'json'};
import {Exception} from "../../use-cases/Exception.mjs";

export async function runUseCase(useCaseClass, { params = {} }) {
    const result = await new useCaseClass().run(params);

    return result;
}

export function makeUseCaseRunner(
    useCaseClass,
    paramsBuilder,
    params,
    render = renderPromiseAsJson
) {
    return async function useCaseRunner(req, res, next) {
        const resultPromise = runUseCase(useCaseClass, {
            params : paramsBuilder(req, res),
        });

        return render(req, res, resultPromise, next);
    };
}

export async function renderPromiseAsJson(req, res, promise) {
    try {
        const data = await promise;

        // data.status = 1;

        return res.send(data);
    } catch (error) {
        /* istanbul ignore next */
        if (error instanceof Exception) {
            res.send({
                status : 0,
                error  : error.toHash()
            });
        } else {
            console.log(error);
            res.send({
                status : 0,
                error  : {
                    code    : 'SERVER_ERROR',
                    message : 'Please, contact your system administartor!'
                }
            });
        }
    }
}
