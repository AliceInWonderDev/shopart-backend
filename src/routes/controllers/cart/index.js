import express from "express";

const router = express.Router();

export default ({ cartService }) => {
  router.get("/", (req, res) => {
    res.status(500).json({ error: "method not implemented" });
  });

  return router;
};
