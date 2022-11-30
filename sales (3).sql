-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2022 at 04:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_detaile`
--

CREATE TABLE `cart_detaile` (
  `id` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `item_spec` text NOT NULL,
  `item_description` text NOT NULL,
  `item_quantity` text NOT NULL,
  `material_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_detaile`
--

INSERT INTO `cart_detaile` (`id`, `item_name`, `item_spec`, `item_description`, `item_quantity`, `material_id`) VALUES
(1, 'Hanae Donovan', 'Voluptates distincti', 'Est commodo velit ob', '988', 'l8u6xi3uvns33nf7rm'),
(2, 'Blythe Johns', 'Natus ipsum et ut s', 'Nisi et sed in liber', '379', 'l8u6zzbd6yk9t73tcbs'),
(3, 'Katell Stephenson', 'Possimus dicta illo', 'Cupiditate sint mol', '577', 'l8u6zzbd6yk9t73tcbs'),
(4, 'Knox Farmer', 'Non lorem dolorem co', 'Iure unde et cupidat', '54', 'l8u72hb8psg5l2rdu6'),
(5, 'Kirsten Johnson', 'Aut ut aliquid dolor', 'Dicta deleniti dolor', '744', 'l8u72hb8psg5l2rdu6'),
(6, 'Logan Mcintosh', 'Minus veniam illum', 'Et est eveniet aliq', '840', 'l8u775ynhpmtjd9sts'),
(7, 'Raven Palmer', 'Recusandae Nihil cu', 'Consequatur porro s', '860', 'l8u775ynhpmtjd9sts'),
(8, 'Logan Mcintosh', 'Minus veniam illum', 'Et est eveniet aliq', '840', 'l8u7chg5pz81s0pciuj'),
(9, 'Raven Palmer', 'Recusandae Nihil cu', 'Consequatur porro s', '860', 'l8u7chg5pz81s0pciuj'),
(10, 'Logan Mcintosh', 'Minus veniam illum', 'Et est eveniet aliq', '840', 'l8u7hbi2xu32uaw5hg'),
(11, 'Raven Palmer', 'Recusandae Nihil cu', 'Consequatur porro s', '860', 'l8u7hbi2xu32uaw5hg'),
(12, 'Logan Mcintosh', 'Minus veniam illum', 'Et est eveniet aliq', '840', 'l8u7r6v9ojii0av07p'),
(13, 'Raven Palmer', 'Recusandae Nihil cu', 'Consequatur porro s', '860', 'l8u7r6v9ojii0av07p'),
(14, 'Logan Mcintosh', 'Minus veniam illum', 'Et est eveniet aliq', '840', 'l8u7vl8o84uv5psfkt4'),
(15, 'Raven Palmer', 'Recusandae Nihil cu', 'Consequatur porro s', '860', 'l8u7vl8o84uv5psfkt4'),
(16, 'Logan Mcintosh', 'Minus veniam illum', 'Et est eveniet aliq', '840', 'l8u7xrv4be6jb6q7np6'),
(17, 'Raven Palmer', 'Recusandae Nihil cu', 'Consequatur porro s', '860', 'l8u7xrv4be6jb6q7np6'),
(18, 'Raven Palmer', 'Recusandae Nihil cu', 'Consequatur porro s', '860', 'l8u83rstb3sfojeyt5'),
(19, 'Logan Mcintosh', 'Minus veniam illum', 'Et est eveniet aliq', '840', 'l8u83rstb3sfojeyt5');

-- --------------------------------------------------------

--
-- Table structure for table `customers_list`
--

CREATE TABLE `customers_list` (
  `id` int(11) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_phone` text NOT NULL,
  `delivery_mode` text NOT NULL,
  `customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers_list`
--

INSERT INTO `customers_list` (`id`, `customer_name`, `customer_phone`, `delivery_mode`, `customer_address`) VALUES
(1, 'Sydney Torres', '+1 (648) 606-7216', 'Sit alias harum culp', 'Esse magni dolorum '),
(2, 'Shana Alvarado', '+1 (697) 677-7406', 'Ullam amet dignissi', 'Labore dolores sed v');

-- --------------------------------------------------------

--
-- Table structure for table `material_request`
--

CREATE TABLE `material_request` (
  `id` int(11) NOT NULL,
  `mat_requestname` text NOT NULL,
  `mat_requestdate` date NOT NULL,
  `mat_requestdept` text NOT NULL,
  `mat_reqpersonid` text NOT NULL,
  `mat_description` text NOT NULL,
  `mat_quantity` text NOT NULL,
  `req_materialtype` text NOT NULL,
  `mat_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `material_request`
--

INSERT INTO `material_request` (`id`, `mat_requestname`, `mat_requestdate`, `mat_requestdept`, `mat_reqpersonid`, `mat_description`, `mat_quantity`, `req_materialtype`, `mat_status`) VALUES
(1, 'yogurt', '2022-08-10', 'sales', '3', 'something to watch', '10', 'ACCS', 'ACCEPTED'),
(2, 'Biscute', '2022-08-10', 'sales', '3', 'something to watch', '10', 'RAW', 'pending'),
(3, 'Plastic bag', '2022-08-10', 'sales', '3', 'something to watch', '10', 'FIN', 'pending'),
(4, 'Condute', '0000-00-00', 'SALES', '675', 'PIPE', '56', 'RAW', 'PENDING'),
(5, 'Caleb Wilcox', '0000-00-00', 'SALES', 'Sint obcaecati iure', 'Nihil quis numquam a', '599', 'ACCS', 'PENDING'),
(6, 'PVCK', '0000-00-00', 'SALES', 'Do quod non nostrum ', 'PIPE', '344', 'FIN', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `id` int(11) NOT NULL,
  `company_name` text NOT NULL,
  `order_date` date NOT NULL DEFAULT current_timestamp(),
  `customer_name` text NOT NULL,
  `cus_bussinessName` text NOT NULL,
  `cus_phoneNum` text NOT NULL,
  `cus_email` text NOT NULL,
  `ship_contactName` text NOT NULL,
  `ship_address1` text NOT NULL,
  `ship_address2` text NOT NULL,
  `ship_city` text NOT NULL,
  `cart_id` text NOT NULL,
  `cust_tinNumber` text NOT NULL,
  `cust_bussinesNameTin` text NOT NULL,
  `status` text NOT NULL,
  `payment_status` text NOT NULL,
  `paymentTotal` text NOT NULL,
  `paymentLeft` text NOT NULL,
  `unique_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`id`, `company_name`, `order_date`, `customer_name`, `cus_bussinessName`, `cus_phoneNum`, `cus_email`, `ship_contactName`, `ship_address1`, `ship_address2`, `ship_city`, `cart_id`, `cust_tinNumber`, `cust_bussinesNameTin`, `status`, `payment_status`, `paymentTotal`, `paymentLeft`, `unique_id`) VALUES
(1, 'Douglas George Inc', '2022-10-04', 'Basil Herring', 'Nehru Hall', '+1 (912) 203-2862', 'naxumazety@mailinator.com', 'Lance Cortez', '63 South New Avenue', 'Tenetur nihil archit', 'Reprehenderit minus ', '', '907', 'Ferdinand Becker', '', 'Half_Paied', '52', '70', 'l8u5igj5ys9iqfta5ep'),
(2, 'Douglas George Inc', '2022-10-04', 'Basil Herring', 'Nehru Hall', '+1 (912) 203-2862', 'naxumazety@mailinator.com', 'Lance Cortez', '63 South New Avenue', 'Tenetur nihil archit', 'Reprehenderit minus ', '', '907', 'Ferdinand Becker', 'PENDING', 'Half_Paied', '52', '70', 'l8u5qhgyi7p5hv0v8lo'),
(3, 'Douglas George Inc', '2022-10-04', 'Basil Herring', 'Nehru Hall', '+1 (912) 203-2862', 'naxumazety@mailinator.com', 'Lance Cortez', '63 South New Avenue', 'Tenetur nihil archit', 'Reprehenderit minus ', '', '907', 'Ferdinand Becker', 'PENDING', 'Half_Paied', '52', '70', 'l8u5sjs8jow375clf7'),
(4, 'Douglas George Inc', '2022-10-04', 'Basil Herring', 'Nehru Hall', '+1 (912) 203-2862', 'naxumazety@mailinator.com', 'Lance Cortez', '63 South New Avenue', 'Tenetur nihil archit', 'Reprehenderit minus ', '', '907', 'Ferdinand Becker', 'PENDING', 'Half_Paied', '52', '70', 'l8u62b15pkffxhb3k6'),
(5, 'Douglas George Inc', '2022-10-04', 'Basil Herring', 'Nehru Hall', '+1 (912) 203-2862', 'naxumazety@mailinator.com', 'Lance Cortez', '63 South New Avenue', 'Tenetur nihil archit', 'Reprehenderit minus ', '', '907', 'Ferdinand Becker', 'PENDING', 'Half_Paied', '52', '70', 'l8u666x4qyf28ehy2vl'),
(6, 'Douglas George Inc', '2022-10-04', 'Basil Herring', 'Nehru Hall', '+1 (912) 203-2862', 'naxumazety@mailinator.com', 'Lance Cortez', '63 South New Avenue', 'Tenetur nihil archit', 'Reprehenderit minus ', '', '907', 'Ferdinand Becker', 'PENDING', 'Half_Paied', '52', '70', 'l8u66vt2uooiasxygib'),
(7, 'Douglas George Inc', '2022-10-04', 'Basil Herring', 'Nehru Hall', '+1 (912) 203-2862', 'naxumazety@mailinator.com', 'Lance Cortez', '63 South New Avenue', 'Tenetur nihil archit', 'Reprehenderit minus ', '', '907', 'Ferdinand Becker', 'PENDING', 'Half_Paied', '52', '70', 'l8u67xx01njwtkhhn1s'),
(8, 'Cummings and Perry Inc', '2022-10-04', 'Cameron Shepard', 'Owen Duran', '+1 (603) 976-8281', 'rixodoz@mailinator.com', 'Curran Martin', '778 New Avenue', 'Ea dicta quaerat por', 'Vero fugiat culpa c', '', '461', 'Dean Marsh', 'PENDING', 'Paied', '78', '41', 'l8u6xi3uvns33nf7rm'),
(9, 'Tucker and Cox Co', '2022-10-04', 'Kyra Glover', 'Blaze Bonner', '+1 (463) 495-7171', 'pobapixav@mailinator.com', 'Brianna Jefferson', '588 West Cowley Boulevard', 'Est cupidatat mollit', 'Fugiat natus ad et a', '', '24', 'Leilani Huber', 'PENDING', 'Paied', '91', '46', 'l8u6zzbd6yk9t73tcbs'),
(10, 'Koch and Fernandez Associates', '2022-10-04', 'Callum Snow', 'Fitzgerald Vinson', '+1 (768) 915-8944', 'lovyxekym@mailinator.com', 'Macy Holcomb', '14 Green Milton Lane', 'Saepe pariatur Eos ', 'Eaque quas est modi ', '', '584', 'Sloane Pate', 'PENDING', 'Paied', '15', '90', 'l8u72hb8psg5l2rdu6'),
(11, 'Benton and Barr Co', '2022-10-04', 'Robert Blevins', 'Barrett Cote', '+1 (144) 615-7379', 'xygadexaw@mailinator.com', 'Kathleen Francis', '98 South Hague Freeway', 'Consequuntur necessi', 'Assumenda reprehende', '', '280', 'Kasper Floyd', 'PENDING', 'Paied', '42', '6', 'l8u775ynhpmtjd9sts'),
(12, 'Benton and Barr Co', '2022-10-04', 'Robert Blevins', 'Barrett Cote', '+1 (144) 615-7379', 'xygadexaw@mailinator.com', 'Kathleen Francis', '98 South Hague Freeway', 'Consequuntur necessi', 'Assumenda reprehende', '', '280', 'Kasper Floyd', 'PENDING', 'Paied', '42', '6', 'l8u7chg5pz81s0pciuj'),
(13, 'Benton and Barr Co', '2022-10-04', 'Robert Blevins', 'Barrett Cote', '+1 (144) 615-7379', 'xygadexaw@mailinator.com', 'Kathleen Francis', '98 South Hague Freeway', 'Consequuntur necessi', 'Assumenda reprehende', '', '280', 'Kasper Floyd', 'PENDING', 'Paied', '42', '6', 'l8u7hbi2xu32uaw5hg'),
(14, 'Benton and Barr Co', '2022-10-04', 'Robert Blevins', 'Barrett Cote', '+1 (144) 615-7379', 'xygadexaw@mailinator.com', 'Kathleen Francis', '98 South Hague Freeway', 'Consequuntur necessi', 'Assumenda reprehende', '', '280', 'Kasper Floyd', 'PENDING', 'Paied', '42', '6', 'l8u7r6v9ojii0av07p'),
(15, 'Benton and Barr Co', '2022-10-04', 'Robert Blevins', 'Barrett Cote', '+1 (144) 615-7379', 'xygadexaw@mailinator.com', 'Kathleen Francis', '98 South Hague Freeway', 'Consequuntur necessi', 'Assumenda reprehende', '', '280', 'Kasper Floyd', 'PENDING', 'Paied', '42', '6', 'l8u7vl8o84uv5psfkt4'),
(16, 'Benton and Barr Co', '2022-10-04', 'Robert Blevins', 'Barrett Cote', '+1 (144) 615-7379', 'xygadexaw@mailinator.com', 'Kathleen Francis', '98 South Hague Freeway', 'Consequuntur necessi', 'Assumenda reprehende', '', '280', 'Kasper Floyd', 'PENDING', 'Paied', '42', '6', 'l8u7xrv4be6jb6q7np6'),
(17, 'Benton and Barr Co', '2022-10-04', 'Robert Blevins', 'Barrett Cote', '+1 (144) 615-7379', 'xygadexaw@mailinator.com', 'Kathleen Francis', '98 South Hague Freeway', 'Consequuntur necessi', 'Assumenda reprehende', '', '280', 'Kasper Floyd', 'PENDING', 'Paied', '42', '6', 'l8u83rstb3sfojeyt5');

-- --------------------------------------------------------

--
-- Table structure for table `sales_store`
--

CREATE TABLE `sales_store` (
  `id` int(11) NOT NULL,
  `salesStore_name` text NOT NULL,
  `salesStore_quantity` varchar(255) NOT NULL,
  `salesStore_description` text NOT NULL,
  `salesStore_materialcode` varchar(255) NOT NULL,
  `salesStore_spec` text NOT NULL,
  `salesStore_materialunit` text NOT NULL,
  `salesStore_value` text NOT NULL,
  `salesStore_referncenum` varchar(255) NOT NULL,
  `salesStore_date` date NOT NULL,
  `salesStore_remark` text NOT NULL,
  `salesStore_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_store`
--

INSERT INTO `sales_store` (`id`, `salesStore_name`, `salesStore_quantity`, `salesStore_description`, `salesStore_materialcode`, `salesStore_spec`, `salesStore_materialunit`, `salesStore_value`, `salesStore_referncenum`, `salesStore_date`, `salesStore_remark`, `salesStore_status`) VALUES
(1, 'PVC', '14', 'PIPE', 'ERT345', 'PV6', 'KG', '40000', 'ARVTN', '2022-09-21', 'remark', 'ACCEPTED');

-- --------------------------------------------------------

--
-- Table structure for table `sales_summery`
--

CREATE TABLE `sales_summery` (
  `id` int(11) NOT NULL,
  `sold_name` text NOT NULL,
  `sold_qty` int(11) NOT NULL,
  `sold_description` text NOT NULL,
  `sold_personid` text NOT NULL,
  `sold_value` text NOT NULL,
  `sold_total` text NOT NULL,
  `store_purchaserName` text NOT NULL,
  `sold_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_summery`
--

INSERT INTO `sales_summery` (`id`, `sold_name`, `sold_qty`, `sold_description`, `sold_personid`, `sold_value`, `sold_total`, `store_purchaserName`, `sold_date`) VALUES
(1, 'PVC', 1, 'PIPE', 'Quis temporibus corp', '45000', '45000', 'Summer Finch', '2022-09-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_detaile`
--
ALTER TABLE `cart_detaile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_list`
--
ALTER TABLE `customers_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_request`
--
ALTER TABLE `material_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_store`
--
ALTER TABLE `sales_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_summery`
--
ALTER TABLE `sales_summery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_detaile`
--
ALTER TABLE `cart_detaile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customers_list`
--
ALTER TABLE `customers_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `material_request`
--
ALTER TABLE `material_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales_store`
--
ALTER TABLE `sales_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_summery`
--
ALTER TABLE `sales_summery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
