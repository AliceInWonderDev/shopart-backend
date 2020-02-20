import express from "express";

const router = express.Router();

export default ({ usersService }) => {
  router.get("/", async (req, res) => {
    try {
      const users = await usersService.select();

      res.status(200).json({ data: users });
    } catch (error) {
      console.log("error", error);
      res.status(500).json({ error });
    }
  });

  router.get("/:id", async (req, res) => {
    const { id } = req.params;

    try {
      const users = await usersService.getById(id);

      res.status(200).json({ data: users });
    } catch (error) {
      res.status(500).json({ error });
    }
  });

  router.post("/", async (req, res) => {
    const { user } = req.body;

    try {
      const newUserID = await usersService.create(user);

      res.status(200).json({ data: newUserID });
    } catch (error) {
      res.status(500).json({ error });
    }
  });
  return router;
};
