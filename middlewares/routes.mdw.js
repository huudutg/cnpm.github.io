module.exports = function (app) {
  app.use('/account', require('../routes/account.route'));
  app.use('/categories', require('../routes/category.route'));
  app.use('/admin/categories', require('../routes/admin/category.route'));
};
