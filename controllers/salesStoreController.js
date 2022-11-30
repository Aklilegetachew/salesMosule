const salesStore = require("../models/salesStoreModel");
const axios = require("axios");

exports.confirmRelease = (req, res, then) => {
  const materialRec = req.body;

  salesStore.addSalesStore(materialRec).then((response) => {});
};

exports.makeComplete = (req, res, then) => {
  const salesID = req.body.ID;

  salesStore.completeSales(salesID).then((response) => {
    if (response[0]) {
      res.status(200).json({ message: "Sales Updated" });
    } else {
      console.log(response[1]);
      res.status(400).json({ message: "Sales Updated Err" });
    }
  });
};

exports.makeSales = (req, res, then) => {
  console.log(req.body);
  const soldItem = req.body.data;
  if (soldItem.status == "SALE") {
    salesStore.MakeSold(soldItem).then((respo) => {
      res.status(200).json({ message: "Item Sold" });
    });
  } else {
    salesStore.makeHold(soldItem);
    res.status(200).json({ message: "Item Hold" });
  }
};
