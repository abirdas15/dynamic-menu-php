-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 30, 2018 at 06:13 AM
-- Server version: 10.2.18-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bfaccictlay_bfl`
--

-- --------------------------------------------------------

--
-- Table structure for table `side_menu`
--

CREATE TABLE `side_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `parent_menu` int(11) DEFAULT 0,
  `menu_url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `menu_icon` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `menu_sort_order` int(11) DEFAULT NULL,
  `menu_status` int(11) NOT NULL,
  `menu_user_privilege` text CHARACTER SET latin1 DEFAULT NULL,
  `menu_chain` text CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `side_menu`
--

INSERT INTO `side_menu` (`menu_id`, `menu_name`, `parent_menu`, `menu_url`, `menu_icon`, `menu_sort_order`, `menu_status`, `menu_user_privilege`, `menu_chain`) VALUES
(1, 'Dashboard', 0, 'dashboard', 'fa fa-desktop', 1, 1, '0,3,5,1,2', '1'),
(2, 'Financial Accounting', 0, '', 'fa fa-money', 2, 1, '0,3,5,1,2', '2'),
(3, 'Inventory Accounting', 0, '', 'fa fa-stack-exchange', 3, 1, '0,3,5,1,2', '3'),
(4, 'Purchase', 0, '', 'fa fa-shopping-cart', 4, 1, '0,3,2', '4'),
(5, 'Document', 0, '', 'fa fa-book', 5, 1, '0,3,5', '5'),
(6, 'Master Settings', 2, '', 'fa fa-folder', 1, 1, '0,3,5,1,2', '2,6'),
(7, 'Transaction', 2, '', 'fa fa-folder', 2, 1, '0,3,5,1,2', '2,7'),
(8, 'Import', 2, '', 'fa fa-folder', 3, 1, '0,3,5,1', '2,8'),
(9, 'Assets', 2, '', 'fa fa-folder', 3, 1, '0,3,5,1', '2,9'),
(10, 'Reports', 2, '', 'fa fa-folder', 5, 1, '0,3,5,1', '2,10'),
(11, 'Special Modules', 0, '', 'fa fa-plus-square', 6, 1, '0,3,5,1', '11'),
(12, 'Account Info', 6, '', 'fa fa-folder', 1, 1, '0,3,5,1,2', '2,6,12'),
(13, 'User Privilege', 6, '', 'fa fa-folder', 2, 1, '0,3,5', '2,6,13'),
(14, 'Compnay Settings', 6, 'company', 'fa fa-file', 3, 1, '0,3,5', '2,6,14'),
(15, 'Month Closing', 6, '', 'fa fa-folder', 3, 1, '0,3,5', '2,6,15'),
(16, 'Groups', 12, '', 'fa fa-folder', 1, 1, '0,3,5,1,2', '2,6,12,16'),
(17, 'Ledger', 12, '', 'fa fa-folder', 2, 1, '0,3,5,1,2', '2,6,12,17'),
(18, 'Cost Center', 12, '', 'fa fa-folder', 3, 1, '0,3,5,1', '2,6,12,18'),
(19, 'Add', 16, 'setting/group_add', 'fa fa-file', 1, 1, '0,3,5,1,2', '2,6,12,16,19'),
(20, 'Display', 16, 'setting/group_list', 'fa fa-file', 2, 1, '0,3,5,1', '2,6,12,16,20'),
(21, 'Add', 17, 'setting/ledger_add', 'fa fa-file', 1, 1, '0,3,5,1,2', '2,6,12,17,21'),
(22, 'Display', 17, 'setting/ledger_list', 'fa fa-file', 2, 1, '0,3,5,1', '2,6,12,17,22'),
(23, 'Add', 18, 'setting/costcenter_add', 'fa fa-file', 1, 1, '0,3,5,1', '2,6,12,18,23'),
(24, 'Display', 18, 'setting/costcenter_list', 'fa fa-file', 2, 1, '0,3,5,1', '2,6,12,18,24'),
(25, 'User', 13, 'setting/user', 'fa fa-file', 1, 1, '0,3,5', '2,6,13,25'),
(26, 'Pincode', 13, 'setting/show_pincode/1', 'fa fa-file', 2, 1, '0,3,5', '2,6,13,26'),
(27, 'Contra', 7, 'journal_transaction/contra', 'fa fa-file', 1, 1, '0,3,5,1,2', '2,7,27'),
(28, 'Payment', 7, 'journal_transaction/payment', 'fa fa-file', 2, 1, '0,3,5,1,2', '2,7,28'),
(29, 'Receipt', 7, 'journal_transaction/receipt', 'fa fa-file', 3, 1, '0,3,5,1,2', '2,7,29'),
(30, 'Journal', 7, 'journal_transaction/demo_journal', 'fa fa-file', 4, 1, '0,3,5,1,2', '2,7,30'),
(31, 'Purchase', 7, 'p_transaction', 'fa fa-file', 5, 1, '0,3,5,1,2', '2,7,31'),
(32, 'Own Office Slip', 8, 'office_slip', 'fa fa-file', 1, 1, '0,3,5,1', '2,8,32'),
(33, 'Dealer Collection Slip', 8, 'dealer_office_slip', 'fa fa-file', 2, 1, '0,3,5,1', '2,8,33'),
(34, 'Logistics', 8, 'import/import_logistic', 'fa fa-file', 3, 1, '0,3,5,1', '2,8,34'),
(35, 'Depreciation', 8, 'assets/import_depreciation', 'fa fa-file', 4, 1, '0,3,5,1', '2,8,35'),
(36, 'Category', 9, 'assets/assets_category', 'fa fa-file', 1, 1, '0,3,5,1', '2,9,36'),
(37, 'Type', 9, 'assets/assets_type', 'fa fa-file', 2, 1, '0,3,5,1', '2,9,37'),
(38, 'User Location', 9, 'assets/user_location', 'fa fa-file', 3, 1, '0,3,5,1', '2,9,38'),
(39, 'New Assets', 9, 'assets/new_assets', 'fa fa-file', 3, 1, '0,3,5,1', '2,9,39'),
(40, 'Depreciation Charge', 9, 'assets/deprecation_charge', 'fa fa-file', 5, 1, '0,3,5,1', '2,9,40'),
(41, 'Asset Entry List', 9, 'assets/asset_list', 'fa fa-file', 5, 1, '0,3,5,1', '2,9,41'),
(42, 'Financial Report', 10, '', 'fa fa-folder', 1, 1, '0,3,5,1', '2,10,42'),
(43, 'Management Report', 10, '', 'fa fa-folder', 2, 1, '0,3,5,1', '2,10,43'),
(44, 'Cash Book', 10, '', 'fa fa-folder', 3, 1, '0,3,5,1', '2,10,44'),
(45, 'Bank Reconciliation', 10, '', 'fa fa-folder', 4, 1, '0,3,5,1', '2,10,45'),
(46, 'Balance Sheet', 42, 'balance_sheet/balance_sheet', 'fa fa-file', 1, 1, '0,3,5,1', '2,10,42,46'),
(47, 'Profit & Loss', 42, 'profit_and_loss/profit_loss', 'fa fa-file', 2, 1, '0,3,5,1', '2,10,42,47'),
(48, 'Trail Balance', 42, 'report/trail_balance', 'fa fa-file', 3, 1, '0,3,5,1', '2,10,42,48'),
(49, 'Daybook', 42, 'daybook/daybook_report', 'fa fa-file', 4, 1, '0,3,5,1', '2,10,42,49'),
(50, 'Account Book', 42, 'account_book/account_book', 'fa fa-file', 5, 1, '0,3,5,1', '2,10,42,50'),
(51, 'Balance Sheet', 43, 'financial_report/balance_sheet', 'fa fa-file', 1, 1, '0,3,5', '2,10,43,51'),
(52, 'Profit & Loss', 43, 'financial_report/profit_loss', 'fa fa-file', 2, 1, '0,3,5', '2,10,43,52'),
(53, 'Entry', 44, 'cash_book/cash_book', 'fa fa-file', 1, 1, '0,5,1', '2,10,44,53'),
(54, 'Report', 44, 'cash_book/cash_book_report', 'fa fa-file', 2, 1, '0,3,5,1', '2,10,44,54'),
(55, 'Entry', 45, 'bank_reconciliation/bank_reconciliation_entry', 'fa fa-file', 1, 1, '0,5,1', '2,10,45,55'),
(56, 'Report', 45, 'bank_reconciliation/bank_reconciliation_report', 'fa fa-file', 2, 1, '0,3,5,1', '2,10,45,56'),
(57, 'Petty Cash', 11, '', 'fa fa-folder', 1, 1, '0,3,5,1', '11,57'),
(58, 'LC', 11, '', 'fa fa-folder', 2, 1, '0,3,5,1', '11,58'),
(59, 'Bank Loan & Liability', 11, '', 'fa fa-folder', 3, 1, '0,3,5,1', '11,59'),
(60, 'Fuel & Maintenance', 11, '', 'fa fa-folder', 4, 1, '0,3,5,1', '11,60'),
(61, 'Machine Maintenance', 11, '', 'fa fa-folder', 5, 1, '0,3,5,1', '11,61'),
(62, 'Manual Management', 11, '', 'fa fa-folder', 6, 1, '0,5,1', '11,62'),
(63, 'Entry', 57, '', 'fa fa-folder', 1, 1, '0,5,1', '11,57,63'),
(64, 'Creation', 57, '', 'fa fa-folder', 2, 1, '0,5,1', '11,57,64'),
(65, 'Report', 57, 'petty_cash/petty_cash_report', 'fa fa-file', 3, 1, '0,3,5,1', '11,57,65'),
(66, 'Receive', 63, 'Petty_cash/recieve_entry', 'fa fa-file', 1, 1, '0,5,1', '11,57,63,66'),
(67, 'Payment', 63, 'Petty_cash/payment_entry', 'fa fa-file', 2, 1, '0,5,1', '11,57,63,67'),
(68, 'Adjust', 63, 'Petty_cash/adjust_entry', 'fa fa-file', 3, 1, '0,5,1', '11,57,63,68'),
(69, 'Person', 64, 'petty_cash/person_creation', 'fa fa-file', 1, 1, '0,5,1', '11,57,64,69'),
(70, 'Expense Head', 64, 'Petty_cash/expense_head_creation', 'fa fa-file', 2, 1, '0,5,1', '11,57,64,70'),
(71, 'Creation', 58, '', 'fa fa-folder', 1, 1, '0,5,1', '11,58,71'),
(72, 'Entry', 58, 'letter_of_credit/lc_entry', 'fa fa-file', 2, 1, '0,5,1', '11,58,72'),
(73, 'Report', 58, 'letter_of_credit/lc_report', 'fa fa-file', 3, 1, '0,3,5', '11,58,73'),
(74, 'Group', 71, 'letter_of_credit/lc_group', 'fa fa-file', 1, 1, '0,5,1', '11,58,71,74'),
(75, 'LC', 71, 'letter_of_credit/lc', 'fa fa-file', 2, 1, '0,5,1', '11,58,71,75'),
(76, 'Title Task', 71, 'letter_of_credit/title_task', 'fa fa-file', 3, 1, '0,5,1', '11,58,71,76'),
(77, 'Creation', 59, '', 'fa fa-folder', 1, 1, '0,5,1', '11,59,77'),
(78, 'Entry', 59, 'bank_loan/loan_entry', 'fa fa-file', 2, 1, '0,5,1', '11,59,78'),
(79, 'Report', 59, 'bank_loan/loan_report', 'fa fa-file', 3, 1, '0,3,5', '11,59,79'),
(80, 'Creation', 60, '', 'fa fa-folder', 1, 1, '0,3,5,1', '11,60,80'),
(81, 'Report', 60, 'fuel_maintenance/fuel_maintanace_report', 'fa fa-file', 1, 1, '0,3,5,1', '11,60,81'),
(82, 'Groups', 80, 'fuel_maintenance/create_group', 'fa fa-file', 1, 1, '0,5,1', '11,60,80,82'),
(83, 'Car', 80, 'fuel_maintenance/car', 'fa fa-file', 2, 1, '0,5,1', '11,60,80,83'),
(84, 'Creation', 61, '', 'fa fa-folder', 1, 1, '0,5,1', '11,61,84'),
(85, 'Group', 84, 'machine_maintenance/group', 'fa fa-file', 1, 1, '0,5,1', '11,61,84,85'),
(86, 'Machine', 84, 'machine_maintenance/machine', 'fa fa-file', 2, 1, '0,5,1', '11,61,84,86'),
(87, 'Report', 61, 'machine_maintenance/machine_maintenance_report', 'fa fa-file', 2, 1, '0,3,5,1', '11,61,87'),
(88, 'Raw Material Entry', 62, 'manual_management/raw_material_entry', 'fa fa-file', 1, 1, '0,5,1', '11,62,88'),
(89, 'WIP Entry', 62, 'manual_management/wip_material_entry', 'fa fa-file', 2, 1, '0,5,1', '11,62,89'),
(90, 'Finished Goods Entry', 62, 'manual_management/finish_good_entry', 'fa fa-file', 3, 1, '0,5,1', '11,62,90'),
(91, 'Sales & Collection Entry', 62, 'manual_management/insert_showroom_sales_collection', 'fa fa-file', 4, 1, '0,5,1', '11,62,91'),
(92, 'Expense Entry', 62, 'manual_management/expense_entry', 'fa fa-file', 5, 1, '0,5,1', '11,62,92'),
(93, 'Balance Sheet Entry', 62, 'manual_management/balance_sheet_entry', 'fa fa-file', 6, 1, '0,5,1', '11,62,93'),
(94, 'Daily Khata', 62, '', 'fa fa-folder', 6, 0, '0,5,1', '11,62,94'),
(95, 'Master Settings', 3, '', 'fa fa-folder', 1, 1, '0,3,5,1,2', '3,95'),
(96, 'Transaction', 3, '', 'fa fa-folder', 2, 1, '0,3,5,1', '3,96'),
(97, 'Import', 3, '', 'fa fa-folder', 3, 1, '0,3,5,1', '3,97'),
(98, 'Stock Reports', 3, '', 'fa fa-folder', 4, 1, '0,3,5,1', '3,98'),
(99, 'Groups', 95, '', 'fa fa-folder', 1, 1, '0,3,5,1,2', '3,95,99'),
(100, 'Add', 99, 'inventory/create_group', 'fa fa-file', 1, 1, '0,3,5,1,2', '3,95,99,100'),
(101, 'Display', 99, 'inventory/display_group', 'fa fa-file', 2, 1, '0,3,5,1,2', '3,95,99,101'),
(102, 'Items', 95, '', 'fa fa-folder', 2, 1, '0,3,5,1,2', '3,95,102'),
(103, 'Add', 102, 'inventory/create_item', 'fa fa-file', 1, 1, '0,3,5,1,2', '3,95,102,103'),
(104, 'Display', 102, 'inventory/item_display', 'fa fa-file', 2, 1, '0,3,5,1,2', '3,95,102,104'),
(105, 'Product Marge', 102, 'inventory/product_marge', 'fa fa-file', 3, 1, '0,3,5,1', '3,95,102,105'),
(106, 'Unit', 95, '', 'fa fa-folder', 3, 1, '0,3,5,1', '3,95,106'),
(107, 'Add', 106, 'inventory/create_unit', 'fa fa-file', 1, 1, '0,3,5,1', '3,95,106,107'),
(108, 'Display', 106, 'inventory/display_unit', 'fa fa-file', 2, 1, '0,3,5,1', '3,95,106,108'),
(109, 'GoDowns', 95, '', 'fa fa-folder', 4, 1, '0,3,5,1,2', '3,95,109'),
(110, 'Add', 109, 'inventory/add_godowns', 'fa fa-file', 1, 1, '0,3,5,1,2', '3,95,109,110'),
(111, 'Display', 109, 'inventory/godowns_list', 'fa fa-file', 2, 1, '0,3,5,1,2', '3,95,109,111'),
(112, 'Inventory Voucher', 96, 'inventory/inventory_voucher', 'fa fa-file', 1, 1, '0,3,5,1', '3,96,112'),
(113, 'Opening Balance', 96, 'inventory/item_opening_balance', 'fa fa-file', 2, 1, '0,3,5,1', '3,96,113'),
(114, 'Main Store In', 97, 'inventory_import/store_in', 'fa fa-file', 1, 1, '0,3,5,1', '3,97,114'),
(115, 'Floor Store In', 97, 'production/store_stock/1', 'fa fa-file', 2, 1, '0,3,5,1', '3,97,115'),
(116, 'Product Transfer', 97, 'production', 'fa fa-file', 3, 1, '0,3,5,1', '3,97,116'),
(117, 'Product Conversion', 97, 'production/wip_conversion', 'fa fa-file', 4, 1, '0,3,5,1', '3,97,117'),
(118, 'Special Expense', 97, 'production/special_expense', 'fa fa-file', 5, 1, '0,3,5,1', '3,97,118'),
(119, 'Showroom In Out', 97, 'finish_good/product_in', 'fa fa-file', 6, 1, '0,3,5,1', '3,97,119'),
(120, 'Logistics Gatepass', 97, 'finish_good/logistics_gatepass', 'fa fa-file', 7, 1, '0,3,5,1', '3,97,120'),
(121, 'Finish Goods Purchase', 97, 'finish_good_purchase', 'fa fa-file', 8, 1, '0,3,5,1', '3,97,121'),
(122, 'Requisition', 4, '', 'fa fa-folder', 1, 1, '0,3,5,2', '4,122'),
(123, 'PR Entry', 122, 'purchase/requisition_entry', 'fa fa-file', 1, 1, '0,3,5,2', '4,122,123'),
(124, 'PR List', 122, 'purchase/requisition_list/0', 'fa fa-file', 2, 1, '0,3,5,2', '4,122,124'),
(125, 'Approve List', 122, 'purchase/requisition_list/1', 'fa fa-file', 3, 1, '0,3,5,2', '4,122,125'),
(126, 'Decline List', 122, 'purchase/requisition_list/2', 'fa fa-file', 4, 1, '0,3,5,2', '4,122,126'),
(127, 'Hold List', 122, 'purchase/requisition_list/3', 'fa fa-file', 6, 1, '0,3,5,2', '4,122,127'),
(128, 'Purchase Order', 4, '', 'fa fa-folder', 2, 1, '0,3,5,2', '4,128'),
(129, 'PO Generate', 128, 'purchase/po_list', 'fa fa-file', 1, 1, '0,3,5,2', '128,129'),
(130, 'PO List', 128, 'purchase/po_generate_list', 'fa fa-file', 2, 1, '0,3,5,2', '128,130'),
(131, 'Decline List', 128, 'purchase/po_generate_decline_list', 'fa fa-file', 3, 1, '0,3,5,2', '128,131'),
(132, 'Purchase Memo', 4, '', 'fa fa-folder', 3, 1, '0,2', '4,132'),
(133, 'Memo Generate', 132, 'purchase/puurchase_memo_generate', 'fa fa-file', 1, 1, '0,2', '4,132,133'),
(134, 'Memo List', 132, 'purchase/puchase_memo_list', 'fa fa-file', 2, 1, '0,2', '4,132,134'),
(135, 'Reports', 4, '', 'fa fa-folder', 4, 1, '0,3,2', '4,135'),
(136, 'Purchase Summary', 135, 'purchase/purchase_summary', 'fa fa-file', 1, 1, '0,3,2', '4,135,136'),
(137, 'Purchase History', 135, 'purchase/purchase_history', 'fa fa-file', 2, 1, '0,3,2', '4,135,137'),
(138, 'Product Wise Report', 135, 'purchase/product_wise_report', 'fa fa-file', 3, 1, '0,3,2', '4,135,138'),
(139, 'Purchase Reports', 135, 'purchase/purchase_report', 'fa fa-file', 5, 1, '0,3,2', '4,135,139'),
(140, 'Purchase Analysis', 135, 'purchase/purchase_analysis', 'fa fa-file', 5, 1, '0,3,2', '4,135,140'),
(141, 'Requisition Status', 135, 'purchase/purchase_requisition_status', 'fa fa-file', 6, 1, '0,3,2', '4,135,141'),
(142, 'Dealy Time', 135, 'purchase/delay_time', 'fa fa-file', 7, 1, '0,3,2', '4,135,142'),
(143, 'Daily Statement', 135, 'purchase/daily_purchase_statement', 'fa fa-file', 8, 1, '0,3,2', '4,135,143'),
(144, 'Purchase Return', 4, '', 'fa fa-folder', 3, 1, '0,2', '4,144'),
(145, 'Return Entry', 144, 'purchase/purchase_return_entry', 'fa fa-file', 1, 1, '0,2', '4,144,145'),
(146, 'Return List', 144, 'purchase/purchase_return_list', 'fa fa-file', 2, 1, '0,2', '4,144,146'),
(147, 'Purchase KPI', 4, '', 'fa fa-folder', 6, 1, '0,2', '4,147'),
(148, 'Add Reduce Item', 147, 'purchase_kpi/add_reduce_item', 'fa fa-file', 1, 1, '0,2', '4,147,148'),
(149, 'Reduce Item List', 147, 'purchase_kpi/reduce_price_item_list', 'fa fa-file', 2, 1, '0,2', '4,147,149'),
(150, 'Summary Sheet', 147, 'purchase_kpi/purchase_kpi_summary_sheet', 'fa fa-file', 3, 1, '0,2', '4,147,150'),
(151, 'Document List', 5, 'document/view_document', 'fa fa-file', 2, 1, '0,3,5', '5,151'),
(152, 'Folder Create / Edit', 5, 'document/setting', 'fa fa-file', 1, 1, '0,5', '5,152'),
(153, 'Add', 15, 'month_closing/add', 'fa fa-file', 1, 1, '0', '2,6,15,153'),
(154, 'Settings', 15, 'month_closing/settings', 'fa fa-file', 2, 1, '0,3,5', '2,6,15,154'),
(155, 'Stock Summary', 98, 'report/stock_summary', 'fa fa-file', 1, 1, '0,3,5,1', '3,98,155'),
(156, 'Finish Goods', 98, 'stock_report/finished_good_stock_report/4', 'fa fa-file', 2, 1, '0,3,5,1', '3,98,156'),
(157, 'Recent Transaction', 42, 'daybook/recent_transaction', 'fa fa-file', 5, 1, '0', '2,10,42,157'),
(158, 'Bank', 77, 'bank_loan/create_bank', 'fa fa-file', 1, 1, '0,5,1', '11,59,77,158'),
(159, 'Loan Type', 77, 'bank_loan/loan_type', 'fa fa-file', 2, 1, '0,5,1', '11,59,77,159'),
(160, 'Title Task', 77, 'bank_loan/title_task', 'fa fa-file', 3, 1, '0,5,1', '11,59,77,160'),
(161, 'Payment Schedule', 11, '', 'fa fa-folder', 7, 1, '0,3,5', '11,161'),
(162, 'Entry', 161, 'payment_schedule', 'fa fa-file', 0, 1, '0,5', '11,161,162'),
(163, 'List', 161, 'payment_schedule/payment_schedule_list', 'fa fa-file', 2, 1, '0,3', '11,161,163');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `side_menu`
--
ALTER TABLE `side_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `side_menu`
--
ALTER TABLE `side_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
