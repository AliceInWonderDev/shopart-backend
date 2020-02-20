class Server {
  constructor(config) {
    this.app = config.app;
    this.services = config.services;
    this.routePrefix = config.routePrefix;
  }

  Middleware(cb) {
    this.app.use(cb);
  }

  RegisterRoute(path, router) {
    this.app.use(path, router);
  }

  RegisterRoutes(routes) {
    routes.forEach(route => {
      this.app.use(
        `${this.routePrefix}${route.path}`,
        route.router(this.services)
      );
    });
  }

  Listen(port, cb) {
    this.app.listen(port, cb);
  }
}

module.exports = Server;
