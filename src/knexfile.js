// Update with your config settings.

module.exports = {
  development: {
    client: "pg",
    connection: {
      database: "shopart",
      user: "shopart",
      password: "shopart1810"
    },
    pool: {
      min: 2,
      max: 10
    }
  },

  staging: {
    client: "pg",
    connection: {
      database: "shopart",
      user: "shopart",
      password: "shopart1810"
    },
    pool: {
      min: 2,
      max: 10
    }
  },

  production: {
    client: "pg",
    connection: {
      database: "shopart",
      user: "shopart",
      password: "shopart1810"
    },
    pool: {
      min: 2,
      max: 10
    }
  }
};
