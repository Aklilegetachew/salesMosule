const axios = require("axios");

const instance = axios.create({
  baseURL: "https://warehouse.proplast.et",
  // baseURL: "http://localhost:42000",
});

export default instance;
