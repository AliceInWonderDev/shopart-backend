// import UserModel from '../../database/models/users'

class Users {
  constructor(db) {
    this.db = db;
  }

  async select() {
    console.log(">>> select");
    return await this.db("users").select(
      "id",
      "first_name",
      "last_name",
      "username",
      "email",
      "phone",
      "status",
      "is_artist"
    );
  }

  async getById(id) {
    console.log(">>> getById", id);
    return await this.db("users")
      .select(
        "first_name",
        "last_name",
        "username",
        "email",
        "phone",
        "status",
        "is_artist"
      )
      .where("id", "=", id);
  }

  async create(user) {
    console.log(">>> create");
    // const user = new UserModel(userData);
    return await this.db("users")
      .insert(user)
      .returning("id");
  }
}

module.exports = Users;
