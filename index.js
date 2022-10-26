const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const routes = require("./routes/route");

const app = express();
app.use(cors());
app.use(bodyParser.json());

const port = process.env.PORT || 4000;

app.use(routes);

console.log("here is sales");

app.listen(port);
