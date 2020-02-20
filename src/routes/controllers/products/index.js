const express = require("express");

const router = express.Router();

export default ({ productsService }) => {
  router.get("/", (req, res) => {
    res.status(500).json({ error: "method not implemented" });
  });

  return router;
};
