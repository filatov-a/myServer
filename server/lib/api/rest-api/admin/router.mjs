import express     from 'express';

import controllers from './controllers/index.mjs';
// import middlewares from './../middlewares.mjs';


const router = express.Router();
// const { fileUpload, detectDevice, detectIp, sequelizeSession, errorHandler } = middlewares;
// const { check } = controllers.sessions;

export default function init() {
    // router.use(sequelizeSession({ sequelize }));
    // router.use(fileUpload().any());
    // router.use(csrfProtection);

    // users
    router.get('/users',  controllers.users.show);
    router.get('/users/:id',  controllers.users.getOne);
    router.post('/update-verify',  controllers.users.getUpdateToken);
    router.patch('/users/:token',  controllers.users.update);

    // authentication
    router.post('/login',  controllers.authentication.login);
    router.post('/register',  controllers.authentication.register);
    router.get('/verify-email/:token',  controllers.authentication.emailVerify);

    // router.use(errorHandler);

    return router;
}

