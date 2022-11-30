const express = require("express");

const Home = require("../controllers/Home.js");
const customers = require("../controllers/customers");
const requestForm = require("../controllers/requestController");
const storeRelease = require("../controllers/salesStoreController");
const summery = require("../controllers/summeryReport");
const salesOrder = require("../controllers/salesOrderController");
const router = express.Router();

router.get("/", Home.home);

router.post("/addCustomers", customers.addCustomers);
router.get("/showCustomers", customers.showCustomers);

router.post("/addFinRequest", requestForm.finishedMaterialRequest);

router.get("/showAcceptedRequestions", requestForm.showStatus);
router.post("/makeSale", storeRelease.makeSales);
router.post("/makeComplete", storeRelease.makeComplete);

router.post("/confirmStoreRelease", storeRelease.confirmRelease);

router.get("/salesSummery", summery.showAllSummery);

router.post("/creatSalesOrder", salesOrder.creatSalesOrder);
router.get("/showSalesOrder", salesOrder.showSalesOrder);
router.post("/showSalesOrderById", salesOrder.showSalesOrderById);
router.post("/selectSalesOrder", salesOrder.selectSalesOrder)
module.exports = router;
