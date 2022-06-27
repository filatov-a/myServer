import List from '../../../../use-cases/protocol/List.mjs';
import GetOne from '../../../../use-cases/protocol/GetOne.mjs';
import Add from '../../../../use-cases/protocol/Add.mjs';
import { makeUseCaseRunner } from '../../serviceRunner.mjs';

export default {
    show   : makeUseCaseRunner(List, req => ({ ...req.query, ...req.params })),
    getOne : makeUseCaseRunner(GetOne, req => ({ ...req.query, ...req.params })),
    add : makeUseCaseRunner(Add, req => ({ ...req.query, ...req.params, ...req.body })),
};
