import express     from 'express';

import controllers from './controllers/index.mjs';
// import middlewares from './../middlewares.mjs';


const router = express.Router();
// const { fileUpload, detectDevice, detectIp, sequelizeSession, errorHandler } = middlewares;
// const { check } = controllers.sessions;

export default function init({ sequelize }) {
    // router.use(sequelizeSession({ sequelize }));
    // router.use(fileUpload().any());
    // router.use(csrfProtection);

    // protocol
    router.get('/protocols',  controllers.protocol.show);
    router.get('/protocols/:table_name',  controllers.protocol.getOne);

    router.post('/protocol/:table_name',  controllers.protocol.add);

    // router.use(errorHandler);

    return router;
}

