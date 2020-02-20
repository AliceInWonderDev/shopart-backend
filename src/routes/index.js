import users from "./controllers/users";
import products from "./controllers/products";
import orders from "./controllers/orders";
import cart from "./controllers/cart";

module.exports = [
  {
    path: "/users",
    router: users
  },
  {
    path: "/products",
    router: products
  },
  {
    path: "/orders",
    router: orders
  },
  {
    path: "/cart",
    router: cart
  }
];
