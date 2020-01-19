
#生活服务分类表
    CREATE TABLE `o20_category`(
      `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
			`name` varchar(32) NOT NULL default '',
      `parent_id` int(10) unsigned NOT NULL default 0,
			`listorder` int(8) unsigned NOT NULL default 0,
			`status` tinyint(1) NOT NULL DEFAULT 0,
			`create_time` int(11) unsigned NOT NULL default 0,
			`update_time` int(11) unsigned NOT NULL default 0,
			PRIMARY KEY ( `id`),
      KEY parent_id( `parent_id` )
      )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
			    #城市表
      CREATE TABLE `o20_city`(
      `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
			`name` VARCHAR(50) NOT NULL DEFAULT '',
			`uname` VARCHAR(50) NOT NULL DEFAULT '',
      `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
			`listorder` int(8) unsigned NOT NULL DEFAULT 0,
			`status` tinyint(1) NOT NULL DEFAULT 0,
			`create_time` int(11) unsigned NOT NULL DEFAULT 0,
			`update_time` int(11) unsigned NOT NULL DEFAULT 0,
			PRIMARY KEY ( `id`),
      KEY parent_id( `parent_id` ),
			UNIQUE KEY( `uname` )
      )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

	    #商圈表
      CREATE TABLE `o20_area` (
      `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
			`name` VARCHAR(50) NOT NULL DEFAULT '',
			`city_id` int(11) unsigned NOT NULL DEFAULT 0,
      `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
			`listorder` int(8) unsigned NOT NULL DEFAULT 0,
			`status` tinyint(1) NOT NULL DEFAULT 0,
			`create_time` int(11) unsigned NOT NULL DEFAULT 0,
			`update_time` int(11) unsigned NOT NULL DEFAULT 0,
			PRIMARY KEY ( `id`),
      KEY parent_id(`parent_id`),
			KEY city_id(`city_id`)
      )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

			  #商户表
      CREATE TABLE `o20_bis` (
      `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
			`name` VARCHAR(50) NOT NULL DEFAULT '',
			`email` VARCHAR(50) NOT NULL DEFAULT '',
			`logo` VARCHAR(225) NOT NULL DEFAULT '',
			`licence_logo` VARCHAR(225) NOT NULL DEFAULT '',
			`description` text NOT NULL,
			`city_id` int(11) unsigned NOT NULL DEFAULT 0,
			`city_path` VARCHAR(50) NOT NULL DEFAULT '',
			`bank_name` VARCHAR(50) NOT NULL DEFAULT '',
			`bank_user` VARCHAR(50) NOT NULL DEFAULT '',
			`bank_info` VARCHAR(50) NOT NULL DEFAULT '',
			`money` DECIMAL(20,2) NOT NULL DEFAULT 0.00,
			`fanen` VARCHAR(50) NOT NULL DEFAULT '',
			`fanen_tel` VARCHAR(50) NOT NULL DEFAULT '',
			`listorder` int(8) unsigned NOT NULL DEFAULT 0,
			`status` tinyint(1) NOT NULL DEFAULT 0,
			`create_time` int(11) unsigned NOT NULL DEFAULT 0,
			`update_time` int(11) unsigned NOT NULL DEFAULT 0,
			PRIMARY KEY ( `id`),
      KEY city_id( `city_id` ),
			KEY name( `name` )
      )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



			 #商户账户表
      CREATE TABLE `o20_bis_accout` (
      `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
			`username` VARCHAR(50) NOT NULL DEFAULT '',
			`password` CHAR(50) NOT NULL DEFAULT '',
			`code` VARCHAR(10) NOT NULL DEFAULT '',
			`bis_id`  int(11) unsigned NOT NULL DEFAULT 0,
			`last_login_ip` VARCHAR(20) NOT NULL DEFAULT '',
			`last_login_time` int(11) unsigned NOT NULL DEFAULT 0,
			`is_main` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
			`listorder` int(8) unsigned NOT NULL DEFAULT 0,
			`status` tinyint(1) NOT NULL DEFAULT 0,
			`create_time` int(11) unsigned NOT NULL DEFAULT 0,
			`update_time` int(11) unsigned NOT NULL DEFAULT 0,
			PRIMARY KEY ( `id`),
      KEY bis_id( `bis_id` ),
			KEY username(`username`)
      )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;




			 #商户门店表
      CREATE TABLE `o20_bis_location` (
      `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
			`name` VARCHAR(50) NOT NULL DEFAULT '',
			`logo` VARCHAR(225) NOT NULL DEFAULT '',
			`address` VARCHAR(225) NOT NULL DEFAULT '',
			`tel` VARCHAR(20) NOT NULL DEFAULT '',
			`contact` VARCHAR(20) NOT NULL DEFAULT '',
			`xpoint` VARCHAR(20) NOT NULL DEFAULT '',
			`ypoint` VARCHAR(20) NOT NULL DEFAULT '',
			`bis_id` int(11) unsigned NOT NULL DEFAULT 0,
			`open_time` int(11) unsigned NOT NULL DEFAULT 0,
			`content` text NOT NULL,
			`is_main` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
			`api_address` VARCHAR(225) NOT NULL DEFAULT '',
			`city_id` int(11) unsigned NOT NULL DEFAULT 0,
			`category_id` int(11) unsigned NOT NULL DEFAULT 0,
			`category_path` VARCHAR(50) NOT NULL DEFAULT '',
			`listorder` int(8) unsigned NOT NULL DEFAULT 0,
			`status` tinyint(1) NOT NULL DEFAULT 0,
			`create_time` int(11) unsigned NOT NULL DEFAULT 0,
			`update_time` int(11) unsigned NOT NULL DEFAULT 0,
			PRIMARY KEY ( `id`),
      KEY bis_id( `bis_id` ),
			KEY category_id( `category_id` ),
			KEY name( `name` )
      )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

      #团购商品表
      create  table `o2o_deal`(
      `id` int(11) unsigned not null AUTO_INCREMENT,
      `name` varchar (100) not null default '',
      `category_id` int(11) not null default 0,
      `se_category_id` int(11) not null default 0,
      `bis_id` int(11) not null default 0,
      `location_ids` varchar(100) not null default '',
      `image` varchar(100) not null default '',
      `description` text not null ,
      `start_time` int(11) not null default 0,
      `end_time` int(11) not null default 0,
      `origin_price` decimal(20,2) not null default '0.00',
      `current_price` decimal(20,2) not null default '0.00',
       `city_id` int(11) not null default 0,
       `buy_count` int(11) not null default 0,
       `total_count` int(11) not null default 0,
       `coupons_begin_time` int(11) not null default 0,
       `coupons_end_time` int(11) not null default 0,
        `xpoint` VARCHAR(20) NOT NULL DEFAULT '',
		`ypoint` VARCHAR(20) NOT NULL DEFAULT '',
		`bis_account_id` int(10) not null default 0,
		`balance_price` decimal(20,2) not null default '0.00',
		`notes` text not null,
		`listorder` int(8) unsigned NOT NULL DEFAULT 0,
		`status` tinyint(1) NOT NULL DEFAULT 0,
		`create_time` int(11) unsigned NOT NULL DEFAULT 0,
		`update_time` int(11) unsigned NOT NULL DEFAULT 0,
		PRIMARY KEY ( `id`),
        KEY bis_id( `bis_id` ),
		KEY category_id( `category_id` ),
		KEY se_category_id( `se_category_id` ),
		KEY city_id( `city_id` ),
		KEY name( `name` )
      )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
    #优惠券表
    create  table `o2o_deal_coupons`(
      `id` int(11) unsigned not null AUTO_INCREMENT,
      `deal_id` int(11) not null default 0,
      `bis_id` int(11) not null default 0,
       `title` varchar(64) NOT NULL COMMENT '优惠券标题（有图片则显示图片）：无门槛50元优惠券 | 单品最高减2000元',
      `image` varchar(255) not null default '',
       `take_count` int(10) NOT NULL DEFAULT '0' COMMENT '已领取的优惠券数量',
        `used_count` int(10) NOT NULL DEFAULT '0' COMMENT '已使用的优惠券数量',
      `consumer_code` varchar(55) not null default '',
       `coupons_begin_time` int(11) not null default 0,
       `coupons_end_time` int(11) not null default 0,
      `notes` text not null,
	    `listorder` int(8) unsigned NOT NULL DEFAULT 0,
		`status` tinyint(1) NOT NULL DEFAULT 0,
		`create_time` int(11) unsigned NOT NULL DEFAULT 0,
		`update_time` int(11) unsigned NOT NULL DEFAULT 0,
      PRIMARY KEY ( `id`)
    )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

      #用户表
      create  table `o2o_user`(
      `id` int(11) unsigned not null AUTO_INCREMENT,
      `username` varchar (100) not null default '',
      `password` CHAR(50) NOT NULL DEFAULT '',
	  `code` VARCHAR(10) NOT NULL DEFAULT '',
	`last_login_ip` VARCHAR(20) NOT NULL DEFAULT '',
	`last_login_time` int(11) unsigned NOT NULL DEFAULT 0,
	`email` VARCHAR(10) NOT NULL DEFAULT '',
	`mobile` VARCHAR(10) NOT NULL DEFAULT '',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY ( `id`),
	unique KEY username( `username` ),
	unique KEY email( `email` ),
	unique KEY mobile( `mobile` )
       )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



      #推荐位表
create  table `o2o_featured`(
    `id` int(11) unsigned not null AUTO_INCREMENT,
    `type` tinyint(1) not null default 0,
    `title` varchar(30) not null default '',
    `image` varchar(225) not null default '',
    `url` varchar(225) not null default '',
    `description` text not null ,
    `listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY ( `id`)
       )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


      #订单表
    create  table `o2o_order`(
      `id` int(11) unsigned not null AUTO_INCREMENT,
      `deal_id` int(11) not null default 0,
      `user_id` int(11) not null default 0,
       `username` varchar (100) not null default '',
       `email` VARCHAR(10) NOT NULL DEFAULT '',
	`mobile` VARCHAR(10) NOT NULL DEFAULT '',
	`user_address` VARCHAR(10) NOT NULL DEFAULT '',
      `order_number` varchar(225) not null default '',
      `actual_expenses`decimal(20,2) not null default '0.00',
      `order_expenses`decimal(20,2) not null default '0.00',
      `payment_status` tinyint(1) NOT NULL DEFAULT 0,
      `listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY ( `id`),
    unique KEY order_number( `order_number` ),
	 KEY deal_id( `deal_id` ),
	 KEY user_id( `user_id` )
    )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;