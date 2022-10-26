const db = require("../utils/db");
const axios = require("axios");

module.exports = class salesRequest {
  static async addRequest(requestBody) {
    return await axios
      .post("https://versavvy.com/ERP_backend/wareHouse/StoreRequestion", {
        material: requestBody,
      })
      .then((res) => {
        return res.data;
      })
      .catch((error) => {
        console.error(error);
      });
  }

  static async addStatus() {
    return await axios
      .get("https://versavvy.com/ERP_backend/wareHouse/StoreRequestion", {
        material: requestBody,
      })
      .then((res) => {
        return res.data;
      })
      .catch((error) => {
        console.error(error);
      });
  }

  static showrecivedItems() {
    return db
      .execute("SELECT * FROM sales_store WHERE salesStore_status = 'ACCEPTED'")
      .then((respo) => {
        return respo[0];
      })
      .catch((err) => {
        console.log(err);
      });
  }

  static addtoLocalRequest(materialRequested) {
    return db
      .execute(
        "INSERT INTO material_request(mat_requestname, 	mat_requestdate, mat_requestdept, mat_reqpersonid, mat_description, mat_quantity, req_materialtype, mat_status) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
        [
          materialRequested.mat_requestname,
          materialRequested.mat_requestdate,
          "SALES",
          materialRequested.mat_reqpersonid,
          materialRequested.mat_description,
          materialRequested.mat_quantity,
          materialRequested.req_materialtype,
          "PENDING",
        ]
      )
      .then((result) => {
        return true;
      })
      .catch((err) => {
        console.log(err);
        return false;
      });
  }
};
