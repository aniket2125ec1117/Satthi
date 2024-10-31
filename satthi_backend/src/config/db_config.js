const mongoose = require("mongoose");
const dotenv = require("dotenv");

dotenv.config({ path: `../.env.${NODE_ENV}` });

mongoose
  .connect(MONGO_URL)
  .then(() => {
    console.log("Connection sucessfully established");
  })
  .catch((e) => console.log(e));
