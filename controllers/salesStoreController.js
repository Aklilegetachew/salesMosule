const salesStore = require("../models/salesStoreModel");
const axios = require("axios");

exports.confirmRelease = (req, res, then) => {
  const materialRec = req.body;

  salesStore.addSalesStore(materialRec).then((response) => {});
};

exports.makeSales = (req, res, then) => {
  console.log(req.body);
  const soldItem = req.body.data;
  if (soldItem.status == "SALE") {
    salesStore.MakeSold(soldItem).then((respo)=>{
      res.status(200).json({ message: "Item Sold" });
    });
  } else {
    salesStore.makeHold(soldItem);
    res.status(200).json({ message: "Item Hold" });
  }
};
