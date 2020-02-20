import express from "express";

import Server from "./server";
import routes from "./routes";
import db from "./database";

import UsersService from "./services/users";

const app = express();
const port = 3001;

// Initialize services
// this should contain business logic for every use case and entity.
const services = {
  usersService: new UsersService(db)
};

// we should have a server class to attach several services
const server = new Server({
  app,
  services, // services
  routePrefix: "/api/v1"
});

server.Middleware(express.json());

server.RegisterRoutes(routes);

server.Middleware((err, req, res, next) => {
  if (err) {
    res.json({
      messaje: err.message
    });
  }
});

server.Listen(port, () => {
  console.log(`App running on port ${port}.`);
});
