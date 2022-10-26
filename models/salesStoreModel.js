const db = require("../utils/db");

module.exports = class salesStore {
  static MakeSold(itemSold) {
    return db
      .execute("SELECT * FROM sales_store WHERE id = '" + itemSold.iD + "'")
      .then((res) => {
        const currentVal = parseInt(res[0][0]["salesStore_quantity"]);
        const soldVal = parseInt(itemSold.quantity);
        var valueLast = currentVal - soldVal;
        var totalValue = soldVal * itemSold.sold_value;

        console.log(valueLast);

        return db
          .execute(
            "UPDATE sales_store SET salesStore_quantity = '" + valueLast + "'"
          )
          .then((result) => {
            return db
              .execute(
                "INSERT INTO sales_summery(sold_name, sold_qty, sold_description, sold_personid, sold_value, sold_total, store_purchaserName) VALUES (?, ?, ?, ?, ?, ?, ?)",
                [
                  res[0][0]["salesStore_name"],
                  itemSold.quantity,
                  res[0][0]["salesStore_description"],
                  itemSold.soldPerson,
                  itemSold.sold_value,
                  totalValue,
                  itemSold.Name,
                ]
              )
              .then((res) => {
                return db
                  .execute(
                    "UPDATE sales_store SET salesStore_status = '" +
                      itemSold.status +
                      "' WHERE id ='" +
                      itemSold.id +
                      "'"
                  )
                  .then((respo) => {
                    return respo;
                  });
              });

            // send to finanace noeee
          });
      })
      .catch((err) => {
        console.log(err);
      });
  }

  static makeHold(itemHold) {
    return db
      .execute(
        "UPDATE sales_store SET salesStore_status = '" +
          itemHold.status +
          "' WHERE id ='" +
          itemHold.id +
          "'"
      )
      .then((respo) => {
        return respo;
      });
  }

  static getallSalesStore() {
    return db
      .execute("SELECT * FROM sales_store")
      .then((result) => {
        return result[0];
      })
      .catch((err) => {
        return console.log(err);
      });
  }

  static addSalesStore(newMaterialForm) {
    return db
      .execute(
        "INSERT INTO sales_store(salesStore_name, salesStore_quantity, salesStore_description, salesStore_materialcode, salesStore_spec, salesStore_materialunit, salesStore_value, salesStore_referncenum, salesStore_date, salesStore_remark) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
        [
          newMaterialForm.salesStore_name,
          newMaterialForm.salesStore_quantity,
          newMaterialForm.salesStore_description,
          newMaterialForm.salesStore_materialcode,
          newMaterialForm.salesStore_spec,
          newMaterialForm.salesStore_materialunit,
          newMaterialForm.salesStore_value,
          newMaterialForm.salesStore_referncenum,
          newMaterialForm.salesStore_date,
          newMaterialForm.salesStore_remark,
        ]
      )
      .then(() => {
        return "new finished good added to sales store";
      })
      .catch((err) => {
        console.log(err);
      });
  }

  static selectbyIDSales(ID) {
    return db
      .execute("SELECT * FROM sales_store WHERE id='" + ID + "'")
      .then((result) => {
        return result;
      })
      .catch((err) => {
        console.log(err);
      });
  }

  static updatebyIDSales(ID, updatedData) {
    return db
      .execute(
        "UPDATE sales_store SET salesStore_name ='" +
          updatedData.salesStore_name +
          "', salesStore_quantity = '" +
          updatedData.salesStore_quantity +
          "', salesStore_description = '" +
          updatedData.salesStore_description +
          "', salesStore_materialcode = '" +
          updatedData.salesStore_materialcode +
          "', salesStore_spec ='" +
          updatedData.salesStore_spec +
          "', salesStore_materialunit = '" +
          updatedData.salesStore_materialunit +
          "', salesStore_value = '" +
          updatedData.salesStore_value +
          "', salesStore_referncenum = '" +
          updatedData.salesStore_referncenum +
          "', salesStore_date = '" +
          updatedData.salesStore_date +
          "', salesStore_remark = '" +
          updatedData.salesStore_remark +
          "' WHERE id = " +
          ID +
          ""
      )
      .then((result) => {
        return result;
      })
      .catch((err) => {
        console.log(err);
      });
  }
  static addQty(oldMat, newMat) {
    const updateQuan =
      parseInt(oldMat[0].salesStore_quantity) + parseInt(newMat.fin_quantity);
    console.log(updateQuan);
    return db
      .execute(
        "UPDATE sales_store SET salesStore_quantity ='" +
          updateQuan +
          "' WHERE salesStore_name ='" +
          oldMat[0].salesStore_name +
          "'"
      )
      .then((result) => {
        const today = new Date();
        return db
          .execute(
            "INSERT INTO summery(material_id, material_type, summery_date, stockat_hand, stock_recieved, stock_issued, department_issued, stockat_end) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
            [
              oldMat[0].id,
              "FIN",
              today,
              oldMat[0].salesStore_quantity,
              newMat.fin_quantity,
              "",
              "",
              updateQuan,
            ]
          )
          .then((res) => {
            return "summery Updated";
          });
      })
      .catch((e) => {
        console.log(e);
      });
  }

  static subQty(oldMat, newMat) {
    var updateQuan;
    if (oldMat[0].salesStore_quantity >= parseInt(newMat.fin_quantity)) {
      updateQuan =
        parseInt(oldMat[0].salesStore_quantity) - parseInt(newMat.fin_quantity);
      console.log(updateQuan);
      return db
        .execute(
          "UPDATE salesStore_goods SET	salesStore_quantity ='" +
            updateQuan +
            "' WHERE salesStore_name ='" +
            oldMat[0].salesStore_name +
            "'"
        )
        .then((result) => {
          const today = new Date();
          return db
            .execute(
              "INSERT INTO summery(material_id, material_type, summery_date, stockat_hand, stock_recieved, stock_issued, department_issued, stockat_end) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
              [
                oldMat[0].id,
                "FIN",
                today,
                oldMat[0].salesStore_quantity,
                "",
                newMat.fin_quantity,
                newMat.fin_requestdept,
                updateQuan,
              ]
            )
            .then((res) => {
              return "summery Updated";
            });
        })
        .catch((e) => {
          console.log(e);
        });
    } else {
      return "Low in stock";
    }
  }

  static checkExisFinM(newName, material_type) {
    return db
      .execute(
        "SELECT * FROM salesStore_goods WHERE salesStore_name='" + newName + "'"
      )
      .then((result) => {
        return result[0].length !== 0 ? [true, result[0]] : [false, result[0]];
      })
      .catch((err) => {
        console.log(err);
      });
  }
};
