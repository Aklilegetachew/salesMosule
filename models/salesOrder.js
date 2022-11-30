const db = require("../utils/db");
const axios = require("axios");
const wareAxios = require("../midelware/warehouseaxios")

module.exports = class salesOrder {
  static uniqueId() {
    const dateString = Date.now().toString(36);
    const randomness = Math.random().toString(36).substr(2);
    return dateString + randomness;
  }

  static showSalesId(id) {
    return db
      .execute("SELECT * FROM sales_order WHERE id = '" + id + "'")
      .then((respo) => {
        return [true, respo[0]];
      })
      .catch((err) => {
        return [false, err];
      });
  }
  static addSalesOrder(data) {
    var IDgenerator = this.uniqueId();
    return db
      .execute(
        "INSERT INTO sales_order(company_name, customer_name, cus_bussinessName, cus_phoneNum, cus_email, ship_contactName, ship_address1, ship_address2, ship_city, cust_tinNumber, cust_bussinesNameTin, payment_status, paymentTotal, paymentLeft, unique_id, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ? , ?, ?, ?)",
        [
          data.company_name,
          data.customer_name,
          data.cus_bussinessName,
          data.cus_phoneNum,
          data.cus_email || "",
          data.ship_contactName || "",
          data.ship_address1 || "",
          data.ship_address2 || "",
          data.ship_city,
          data.Business_Tin,
          data.Business_Name,
          data.payment_status,
          data.total,
          data.leftPayable,
          IDgenerator,
          "PENDING",
        ]
      )
      .then((resu) => {
        return [true, IDgenerator];
      })
      .catch((err) => {
        return [false, err];
      });
  }

  static async sendtoWareHouse(data, ID) {
    data.mat_requestdate = "";
    data.mat_requestdept = "SALES";
    data.req_materialtype = "FIN";
    await db
      .execute("SELECT id FROM sales_order WHERE unique_id ='" + ID + "'")
      .then(async (respo) => {
        console.log(respo[0][0].id)
        data.SalesId = respo[0][0].id;
        console.log("wareHouse", data);
        await wareAxios
          .post("/StoreRequestion", {
            material: data,
          })
          .then((response) => {
            return response;
          })
          .catch((e) => {
            return e;
          });
      });
  }

  static savetoCart(data, requestId) {
    console.log(data);
    console.log(requestId);
    return db
      .execute(
        "INSERT INTO cart_detaile (item_name, item_spec, item_description, item_quantity, material_id) VALUES (?, ?, ?, ?, ?)",
        [
          data.mat_requestname,
          data.mat_spec,
          data.mat_description,
          data.mat_quantity,
          requestId,
        ]
      )
      .then((respo) => {
        return [true, requestId];
      })
      .catch((err) => {
        return [false, err];
      });
  }

  static showAllOrder() {
    return db
      .execute("SELECT * FROM sales_order")
      .then((resp) => {
        return resp[0];
      })
      .catch((err) => {
        return err;
      });
  }

  static fetchCartDetail(id) {
    return db
      .execute("SELECT * FROM cart_detaile WHERE material_id = '" + id + "'")
      .then((respo) => {
        return respo[0];
      })
      .catch((err) => {
        return err;
      });
  }
};
