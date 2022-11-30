const axios = require("axios");

const instance = axios.create({
    baseURL: "https://auth.proplast.et",
    // baseURL: "http://localhost:42000",
})

export default instance;