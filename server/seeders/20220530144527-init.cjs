module.exports = {
    up : async (queryInterface, Sequelize) => {
        // await queryInterface.bulkInsert('Currencies', [
        //     {
        //         id: crypto.randomUUID(),
        //         currency : 'EUR',
        //         createdAt: new Date(),
        //         updatedAt: new Date(),
        //     },
        // ]);
    },
    down : async (queryInterface, Sequelize) => {
        // await queryInterface.bulkDelete('Currencies', null, {});
    }
};
