const salesModle = require("../models/salesOrder");

module.exports.creatSalesOrder = async (req, res, then) => {
  const data = req.body;
  var itemsDetail = [];
  console.log(data);
  await salesModle.addSalesOrder(data).then((respo) => {
    if (respo[0]) {
      data.order_information.forEach(async (element) => {
        console.log(element);
        await salesModle.savetoCart(element, respo[1]).then(async (respons) => {
          await salesModle.sendtoWareHouse(element, respons[1]).then((ret) => {
            // res.status(200).json("yayyyy");
            console.log("respo", ret);
          });
          ////////////////////////////////////////////////////////////
          // send to finance and production
        });
      });
      res.status(200).json("yayyyy");
    } else {
      res.status(404).json({ error: respo[1] });
    }
  });

  console.log(itemsDetail);
};

module.exports.showSalesOrder = (req, res, next) => {
  salesModle.showAllOrder().then((respo) => {
    res.status(200).json(respo);
  });
};

module.exports.showSalesOrderById = (req, res, next) => {
  const uniqueId = req.body.ID;

  salesModle.fetchCartDetail(uniqueId).then((respo) => {
    res.status(200).json(respo);
  });
};
