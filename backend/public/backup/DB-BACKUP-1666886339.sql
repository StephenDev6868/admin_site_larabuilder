DROP TABLE IF EXISTS activity_logs;

CREATE TABLE `activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS cm_email_subscribers;

CREATE TABLE `cm_email_subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS cm_faqs;

CREATE TABLE `cm_faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS cm_features;

CREATE TABLE `cm_features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cm_features VALUES('1','icon icon-Life-Safer','Website Builder','Manage website directly from your browser','','');
INSERT INTO cm_features VALUES('2','icon icon-Duplicate-Window','Emails reminder','Get remiders before your subscription ends','','');
INSERT INTO cm_features VALUES('3','icon icon-Fingerprint','Support','Real time Chat with staffs, customers and private groups','','');
INSERT INTO cm_features VALUES('4','icon icon-Pantone','Online Payments','Accept Online Payments from different providers','','');



DROP TABLE IF EXISTS companies;

CREATE TABLE `companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `business_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int unsigned NOT NULL,
  `package_id` int DEFAULT NULL,
  `package_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_to` date NOT NULL,
  `last_email` date DEFAULT NULL,
  `websites_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recurring_transaction` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_payment` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS company_email_template;

CREATE TABLE `company_email_template` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS company_settings;

CREATE TABLE `company_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS currency_rates;

CREATE TABLE `currency_rates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currency_rates VALUES('1','AED','4.101083','','');
INSERT INTO currency_rates VALUES('2','AFN','85.378309','','');
INSERT INTO currency_rates VALUES('3','ALL','123.510844','','');
INSERT INTO currency_rates VALUES('4','AMD','548.849773','','');
INSERT INTO currency_rates VALUES('5','ANG','2.008050','','');
INSERT INTO currency_rates VALUES('6','AOA','556.155120','','');
INSERT INTO currency_rates VALUES('7','ARS','70.205746','','');
INSERT INTO currency_rates VALUES('8','AUD','1.809050','','');
INSERT INTO currency_rates VALUES('9','AWG','2.009782','','');
INSERT INTO currency_rates VALUES('10','AZN','1.833159','','');
INSERT INTO currency_rates VALUES('11','BAM','1.966840','','');
INSERT INTO currency_rates VALUES('12','BBD','2.245460','','');
INSERT INTO currency_rates VALUES('13','BDT','95.162306','','');
INSERT INTO currency_rates VALUES('14','BGN','1.952383','','');
INSERT INTO currency_rates VALUES('15','BHD','0.421787','','');
INSERT INTO currency_rates VALUES('16','BIF','2117.865003','','');
INSERT INTO currency_rates VALUES('17','BMD','1.116545','','');
INSERT INTO currency_rates VALUES('18','BND','1.583270','','');
INSERT INTO currency_rates VALUES('19','BOB','7.718004','','');
INSERT INTO currency_rates VALUES('20','BRL','5.425949','','');
INSERT INTO currency_rates VALUES('21','BSD','1.121775','','');
INSERT INTO currency_rates VALUES('22','BTC','0.000244','','');
INSERT INTO currency_rates VALUES('23','BTN','82.818317','','');
INSERT INTO currency_rates VALUES('24','BWP','12.683055','','');
INSERT INTO currency_rates VALUES('25','BYN','2.621037','','');
INSERT INTO currency_rates VALUES('26','BYR','9999.999999','','');
INSERT INTO currency_rates VALUES('27','BZD','2.261248','','');
INSERT INTO currency_rates VALUES('28','CAD','1.552879','','');
INSERT INTO currency_rates VALUES('29','CDF','1898.127343','','');
INSERT INTO currency_rates VALUES('30','CHF','1.056023','','');
INSERT INTO currency_rates VALUES('31','CLF','0.033950','','');
INSERT INTO currency_rates VALUES('32','CLP','936.781769','','');
INSERT INTO currency_rates VALUES('33','CNY','7.827878','','');
INSERT INTO currency_rates VALUES('34','COP','4491.872864','','');
INSERT INTO currency_rates VALUES('35','CRC','635.520417','','');
INSERT INTO currency_rates VALUES('36','CUC','1.116545','','');
INSERT INTO currency_rates VALUES('37','CUP','29.588450','','');
INSERT INTO currency_rates VALUES('38','CVE','110.887227','','');
INSERT INTO currency_rates VALUES('39','CZK','26.906059','','');
INSERT INTO currency_rates VALUES('40','DJF','198.432393','','');
INSERT INTO currency_rates VALUES('41','DKK','7.472892','','');
INSERT INTO currency_rates VALUES('42','DOP','60.196240','','');
INSERT INTO currency_rates VALUES('43','DZD','134.499489','','');
INSERT INTO currency_rates VALUES('44','EGP','17.585483','','');
INSERT INTO currency_rates VALUES('45','ERN','16.748349','','');
INSERT INTO currency_rates VALUES('46','ETB','36.696587','','');
INSERT INTO currency_rates VALUES('47','EUR','1.000000','','');
INSERT INTO currency_rates VALUES('48','FJD','2.549240','','');
INSERT INTO currency_rates VALUES('49','FKP','0.908257','','');
INSERT INTO currency_rates VALUES('50','GBP','0.907964','','');
INSERT INTO currency_rates VALUES('51','GEL','3.115301','','');
INSERT INTO currency_rates VALUES('52','GGP','0.908257','','');
INSERT INTO currency_rates VALUES('53','GHS','6.220337','','');
INSERT INTO currency_rates VALUES('54','GIP','0.908257','','');
INSERT INTO currency_rates VALUES('55','GMD','56.605069','','');
INSERT INTO currency_rates VALUES('56','GNF','9999.999999','','');
INSERT INTO currency_rates VALUES('57','GTQ','8.576324','','');
INSERT INTO currency_rates VALUES('58','GYD','234.489495','','');
INSERT INTO currency_rates VALUES('59','HKD','8.674753','','');
INSERT INTO currency_rates VALUES('60','HNL','27.678062','','');
INSERT INTO currency_rates VALUES('61','HRK','7.590196','','');
INSERT INTO currency_rates VALUES('62','HTG','106.356510','','');
INSERT INTO currency_rates VALUES('63','HUF','341.150311','','');
INSERT INTO currency_rates VALUES('64','IDR','9999.999999','','');
INSERT INTO currency_rates VALUES('65','ILS','4.159226','','');
INSERT INTO currency_rates VALUES('66','IMP','0.908257','','');
INSERT INTO currency_rates VALUES('67','INR','82.763894','','');
INSERT INTO currency_rates VALUES('68','IQD','1339.198712','','');
INSERT INTO currency_rates VALUES('69','IRR','9999.999999','','');
INSERT INTO currency_rates VALUES('70','ISK','151.202539','','');
INSERT INTO currency_rates VALUES('71','JEP','0.908257','','');
INSERT INTO currency_rates VALUES('72','JMD','151.606351','','');
INSERT INTO currency_rates VALUES('73','JOD','0.791685','','');
INSERT INTO currency_rates VALUES('74','JPY','118.278988','','');
INSERT INTO currency_rates VALUES('75','KES','115.283224','','');
INSERT INTO currency_rates VALUES('76','KGS','81.395812','','');
INSERT INTO currency_rates VALUES('77','KHR','4603.144194','','');
INSERT INTO currency_rates VALUES('78','KMF','495.355724','','');
INSERT INTO currency_rates VALUES('79','KPW','1004.922902','','');
INSERT INTO currency_rates VALUES('80','KRW','1372.190164','','');
INSERT INTO currency_rates VALUES('81','KWD','0.344879','','');
INSERT INTO currency_rates VALUES('82','KYD','0.934921','','');
INSERT INTO currency_rates VALUES('83','KZT','456.318281','','');
INSERT INTO currency_rates VALUES('84','LAK','9978.233671','','');
INSERT INTO currency_rates VALUES('85','LBP','1696.373291','','');
INSERT INTO currency_rates VALUES('86','LKR','206.967335','','');
INSERT INTO currency_rates VALUES('87','LRD','221.076044','','');
INSERT INTO currency_rates VALUES('88','LSL','18.121543','','');
INSERT INTO currency_rates VALUES('89','LTL','3.296868','','');
INSERT INTO currency_rates VALUES('90','LVL','0.675387','','');
INSERT INTO currency_rates VALUES('91','LYD','1.557311','','');
INSERT INTO currency_rates VALUES('92','MAD','10.730569','','');
INSERT INTO currency_rates VALUES('93','MDL','19.734707','','');
INSERT INTO currency_rates VALUES('94','MGA','4165.265277','','');
INSERT INTO currency_rates VALUES('95','MKD','61.516342','','');
INSERT INTO currency_rates VALUES('96','MMK','1566.586511','','');
INSERT INTO currency_rates VALUES('97','MNT','3088.650418','','');
INSERT INTO currency_rates VALUES('98','MOP','8.975925','','');
INSERT INTO currency_rates VALUES('99','MRO','398.607011','','');
INSERT INTO currency_rates VALUES('100','MUR','43.205754','','');
INSERT INTO currency_rates VALUES('101','MVR','17.250725','','');
INSERT INTO currency_rates VALUES('102','MWK','825.239292','','');
INSERT INTO currency_rates VALUES('103','MXN','24.963329','','');
INSERT INTO currency_rates VALUES('104','MYR','4.810633','','');
INSERT INTO currency_rates VALUES('105','MZN','73.591410','','');
INSERT INTO currency_rates VALUES('106','NAD','18.121621','','');
INSERT INTO currency_rates VALUES('107','NGN','408.099790','','');
INSERT INTO currency_rates VALUES('108','NIO','37.844015','','');
INSERT INTO currency_rates VALUES('109','NOK','11.405599','','');
INSERT INTO currency_rates VALUES('110','NPR','132.508354','','');
INSERT INTO currency_rates VALUES('111','NZD','1.847363','','');
INSERT INTO currency_rates VALUES('112','OMR','0.429801','','');
INSERT INTO currency_rates VALUES('113','PAB','1.121880','','');
INSERT INTO currency_rates VALUES('114','PEN','3.958258','','');
INSERT INTO currency_rates VALUES('115','PGK','3.838505','','');
INSERT INTO currency_rates VALUES('116','PHP','57.698037','','');
INSERT INTO currency_rates VALUES('117','PKR','176.121721','','');
INSERT INTO currency_rates VALUES('118','PLN','4.386058','','');
INSERT INTO currency_rates VALUES('119','PYG','7386.917924','','');
INSERT INTO currency_rates VALUES('120','QAR','4.065302','','');
INSERT INTO currency_rates VALUES('121','RON','4.826717','','');
INSERT INTO currency_rates VALUES('122','RSD','117.627735','','');
INSERT INTO currency_rates VALUES('123','RUB','83.568390','','');
INSERT INTO currency_rates VALUES('124','RWF','1067.822267','','');
INSERT INTO currency_rates VALUES('125','SAR','4.190432','','');
INSERT INTO currency_rates VALUES('126','SBD','9.235251','','');
INSERT INTO currency_rates VALUES('127','SCR','14.529548','','');
INSERT INTO currency_rates VALUES('128','SDG','61.772847','','');
INSERT INTO currency_rates VALUES('129','SEK','10.785247','','');
INSERT INTO currency_rates VALUES('130','SGD','1.587844','','');
INSERT INTO currency_rates VALUES('131','SHP','0.908257','','');
INSERT INTO currency_rates VALUES('132','SLL','9999.999999','','');
INSERT INTO currency_rates VALUES('133','SOS','653.732410','','');
INSERT INTO currency_rates VALUES('134','SRD','8.327212','','');
INSERT INTO currency_rates VALUES('135','STD','9999.999999','','');
INSERT INTO currency_rates VALUES('136','SVC','9.816821','','');
INSERT INTO currency_rates VALUES('137','SYP','575.019506','','');
INSERT INTO currency_rates VALUES('138','SZL','18.038821','','');
INSERT INTO currency_rates VALUES('139','THB','35.884679','','');
INSERT INTO currency_rates VALUES('140','TJS','10.875343','','');
INSERT INTO currency_rates VALUES('141','TMT','3.907909','','');
INSERT INTO currency_rates VALUES('142','TND','3.186636','','');
INSERT INTO currency_rates VALUES('143','TOP','2.635661','','');
INSERT INTO currency_rates VALUES('144','TRY','7.131927','','');
INSERT INTO currency_rates VALUES('145','TTD','7.585158','','');
INSERT INTO currency_rates VALUES('146','TWD','33.739208','','');
INSERT INTO currency_rates VALUES('147','TZS','2582.397529','','');
INSERT INTO currency_rates VALUES('148','UAH','29.335146','','');
INSERT INTO currency_rates VALUES('149','UGX','4169.685347','','');
INSERT INTO currency_rates VALUES('150','USD','1.116545','','');
INSERT INTO currency_rates VALUES('151','UYU','48.718630','','');
INSERT INTO currency_rates VALUES('152','UZS','9999.999999','','');
INSERT INTO currency_rates VALUES('153','VEF','11.151499','','');
INSERT INTO currency_rates VALUES('154','VND','9999.999999','','');
INSERT INTO currency_rates VALUES('155','VUV','133.944917','','');
INSERT INTO currency_rates VALUES('156','WST','3.074259','','');
INSERT INTO currency_rates VALUES('157','XAF','659.652615','','');
INSERT INTO currency_rates VALUES('158','XAG','0.088073','','');
INSERT INTO currency_rates VALUES('159','XAU','0.000756','','');
INSERT INTO currency_rates VALUES('160','XCD','3.017519','','');
INSERT INTO currency_rates VALUES('161','XDR','0.809234','','');
INSERT INTO currency_rates VALUES('162','XOF','659.646672','','');
INSERT INTO currency_rates VALUES('163','XPF','119.931356','','');
INSERT INTO currency_rates VALUES('164','YER','279.475009','','');
INSERT INTO currency_rates VALUES('165','ZAR','18.603040','','');
INSERT INTO currency_rates VALUES('166','ZMK','9999.999999','','');
INSERT INTO currency_rates VALUES('167','ZMW','17.892580','','');
INSERT INTO currency_rates VALUES('168','ZWL','359.527584','','');



DROP TABLE IF EXISTS email_templates;

CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO email_templates VALUES('1','registration','Registration Sucessfully','<div style=\"padding: 15px 30px;\">
						 <h2 style=\"color: #555555;\">Registration Successful</h2>
						 <p style=\"color: #555555;\">Hi {name},<br /><span style=\"color: #555555;\">Welcome to LaraBuilder and thank you for joining with us. You can now sign in to your account using your email and password.<br /><br />Regards<br />Tricky Code<br /></span></p>
						 </div>','','');
INSERT INTO email_templates VALUES('2','premium_membership','Premium Membership','<div style=\"padding: 15px 30px;\">
						<h2 style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">LaraBuilder Premium Subscription</h2>
						<p style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Hi {name},<br>
						<span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\"><strong>Congratulations</strong> your paymnet was made sucessfully. Your current membership is valid <strong>until</strong> <strong>{valid_to}</strong></span><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\"><strong>.</strong>&nbsp;</span></p>
						<p><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Thank You</span><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Tricky Code</span></p>
						</div>','','');
INSERT INTO email_templates VALUES('3','alert_notification','LaraBuilder Renewals','<div style=\"padding: 15px 30px;\">
							<h2 style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Account Renew Notification</h2>
							<p style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Hi {name},<br>
							<span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Your package is due to <strong>expire on {valid_to}</strong> s</span><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">o you will need to renew by then to keep your account active.</span></p>
							<p><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Regards</span><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Tricky Code</span></p>
							</div>','','');



DROP TABLE IF EXISTS file_manager;

CREATE TABLE `file_manager` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_dir` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `created_by` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS files;

CREATE TABLE `files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoice_templates;

CREATE TABLE `invoice_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS migrations;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES('1','2014_10_12_000000_create_users_table','1');
INSERT INTO migrations VALUES('2','2014_10_12_100000_create_password_resets_table','1');
INSERT INTO migrations VALUES('3','2018_06_01_080940_create_settings_table','1');
INSERT INTO migrations VALUES('4','2018_08_29_084110_create_permissions_table','1');
INSERT INTO migrations VALUES('5','2018_10_28_151911_create_taxs_table','1');
INSERT INTO migrations VALUES('6','2018_11_12_152015_create_email_templates_table','1');
INSERT INTO migrations VALUES('7','2018_11_13_082512_create_payment_methods_table','1');
INSERT INTO migrations VALUES('8','2018_11_13_141249_create_transactions_table','1');
INSERT INTO migrations VALUES('9','2018_11_14_134254_create_repeating_transactions_table','1');
INSERT INTO migrations VALUES('10','2018_11_17_142037_create_payment_histories_table','1');
INSERT INTO migrations VALUES('11','2019_03_19_123527_create_company_settings_table','1');
INSERT INTO migrations VALUES('12','2019_06_23_055645_create_company_email_template_table','1');
INSERT INTO migrations VALUES('13','2019_10_31_172912_create_social_google_accounts_table','1');
INSERT INTO migrations VALUES('14','2019_11_11_170656_create_file_manager_table','1');
INSERT INTO migrations VALUES('15','2020_03_15_154649_create_currency_rates_table','1');
INSERT INTO migrations VALUES('16','2020_03_21_052934_create_companies_table','1');
INSERT INTO migrations VALUES('17','2020_03_21_070022_create_packages_table','1');
INSERT INTO migrations VALUES('18','2020_04_02_155956_create_cm_features_table','1');
INSERT INTO migrations VALUES('19','2020_04_02_160209_create_cm_faqs_table','1');
INSERT INTO migrations VALUES('20','2020_04_02_160249_create_cm_email_subscribers_table','1');
INSERT INTO migrations VALUES('21','2020_05_18_104400_create_invoice_templates_table','1');
INSERT INTO migrations VALUES('22','2020_06_03_112519_create_files_table','1');
INSERT INTO migrations VALUES('23','2020_06_03_112538_create_notes_table','1');
INSERT INTO migrations VALUES('24','2020_06_03_112553_create_activity_logs_table','1');
INSERT INTO migrations VALUES('25','2020_06_22_083001_create_projects_table','1');
INSERT INTO migrations VALUES('26','2020_06_27_152210_create_notifications_table','1');
INSERT INTO migrations VALUES('27','2020_08_21_063443_add_related_to_company_email_template','1');
INSERT INTO migrations VALUES('28','2020_10_19_082621_create_staff_roles_table','1');



DROP TABLE IF EXISTS notes;

CREATE TABLE `notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS notifications;

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS packages;

CREATE TABLE `packages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `package_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_per_month` decimal(10,2) NOT NULL,
  `cost_per_year` decimal(10,2) NOT NULL,
  `websites_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurring_transaction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `others` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO packages VALUES('1','Basic','10.00','99.00','a:2:{s:7:\"monthly\";s:1:\"3\";s:6:\"yearly\";s:2:\"10\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','0','','','');
INSERT INTO packages VALUES('2','Standard','25.00','199.00','a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"20\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','1','','','');
INSERT INTO packages VALUES('3','Business Plus','40.00','399.00','a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','0','','','');



DROP TABLE IF EXISTS password_resets;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS payment_histories;

CREATE TABLE `payment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `package_id` int NOT NULL,
  `package_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS payment_methods;

CREATE TABLE `payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS permissions;

CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS projects;

CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint NOT NULL,
  `progress` int DEFAULT NULL,
  `billing_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed_rate` decimal(10,2) DEFAULT NULL,
  `hourly_rate` decimal(10,2) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint NOT NULL,
  `custom_domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS repeating_transactions;

CREATE TABLE `repeating_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `trans_date` date NOT NULL,
  `account_id` bigint NOT NULL,
  `chart_id` bigint NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `base_amount` decimal(10,2) DEFAULT NULL,
  `payer_payee_id` bigint DEFAULT NULL,
  `payment_method_id` bigint NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `status` tinyint DEFAULT '0',
  `trans_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS settings;

CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO settings VALUES('1','mail_type','mail','','');
INSERT INTO settings VALUES('2','backend_direction','ltr','','');
INSERT INTO settings VALUES('3','membership_system','enabled','','');
INSERT INTO settings VALUES('4','trial_period','7','','');
INSERT INTO settings VALUES('5','allow_singup','yes','','');
INSERT INTO settings VALUES('6','email_verification','disabled','','');
INSERT INTO settings VALUES('7','hero_title','Start Your Business With LaraBuilder','','');
INSERT INTO settings VALUES('8','hero_sub_title','A +400 professionally designed blocks allowing you to start building sites and pages instantly with Easy to use drag & drop builder!','','');
INSERT INTO settings VALUES('9','meta_keywords','drag and drop, laravel drag and drop, laravel sitebuilder, site builder, sitebuilder, website builder','','');
INSERT INTO settings VALUES('10','meta_description','A +400 professionally designed blocks allowing you to start building sites and pages instantly with Easy to use drag & drop builder!','','');
INSERT INTO settings VALUES('11','language','English','','');
INSERT INTO settings VALUES('12','company_name','NEO','2022-10-27 15:51:49','2022-10-27 15:51:49');
INSERT INTO settings VALUES('13','site_title','developer','2022-10-27 15:51:49','2022-10-27 15:51:49');
INSERT INTO settings VALUES('14','phone','0917775032','2022-10-27 15:51:49','2022-10-27 15:51:49');
INSERT INTO settings VALUES('15','email','nguyencongthanh2020dn@gmail.com','2022-10-27 15:51:49','2022-10-27 15:51:49');
INSERT INTO settings VALUES('16','timezone','Asia/Vientiane','2022-10-27 15:51:49','2022-10-27 15:51:49');



DROP TABLE IF EXISTS social_google_accounts;

CREATE TABLE `social_google_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS staff_roles;

CREATE TABLE `staff_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS taxs;

CREATE TABLE `taxs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS transactions;

CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `trans_date` date NOT NULL,
  `account_id` bigint NOT NULL,
  `chart_id` bigint NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `base_amount` decimal(10,2) DEFAULT NULL,
  `payer_payee_id` bigint DEFAULT NULL,
  `invoice_id` bigint DEFAULT NULL,
  `purchase_id` bigint DEFAULT NULL,
  `purchase_return_id` bigint DEFAULT NULL,
  `project_id` bigint DEFAULT NULL,
  `payment_method_id` bigint NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint DEFAULT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES('1','ThanhNguyen','nguyencongthanh2020dn@gmail.com','2022-10-27 15:51:12','$2y$10$pQHqcK1Ho09k2eGUp23V.eHvKXJy1./arENOau6sGTEW5Df1HhhG6','admin','','default.png','1','','','','2022-10-27 15:51:12','2022-10-27 15:51:12');



