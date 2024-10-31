const express = require('express');
const dotenv = require('dotenv');
dotenv.config({path: `../.env.${NODE_ENV}}`})

require('./config/db_config');

const app = express();

app.use("*", (req, res) => {
    res.StatusCode(404).send({
        message: 'Inavlid page'
    })
})

app.listen(process.env.PORT, () => {
    console.log('listening on port ' + process.env.PORT)
})