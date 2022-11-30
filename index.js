const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const routes = require("./routes/route");

const app = express();
app.use(cors());
app.use(bodyParser.json());

const port = process.env.PORT || 3000;

app.use(routes);

console.log("here is sales"+ port);

app.listen(port);
