/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : teevision

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-03-19 20:52:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dg_article`
-- ----------------------------
DROP TABLE IF EXISTS `dg_article`;
CREATE TABLE `dg_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `publish` varchar(1) NOT NULL DEFAULT '1',
  `date` datetime NOT NULL,
  `created` varchar(100) NOT NULL,
  `view` int(10) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_article
-- ----------------------------
INSERT INTO `dg_article` VALUES ('13', 'Starting over for 2016', 'starting-over-for-2016', '86', 'Starting over for 2016', 'Starting over for 2016', '', '<p>Its a new year! I have decided to start over with this blog since somehow everything I have written got deleted. It has been an amazing year for me. I have learned so much as a printer as well a business owner. The most important thing I have to say that I &Acirc;&nbsp;learned this year is starting over. I got kicked off google listing twice, website malfunctioning, reviews being deleted, dryers dying on me, and the list goes on..</p>\r\n<p>All it takes is getting back up when you fall and trying again. &Acirc;&nbsp;I am extremely blessed to experience everything I had in 2013 and I am eager to see what the new year holds in store for me. So 2014, I am ready to kick you in the face and bring the house down.</p>', '/media/assets/logo-150x150.jpg', '1', '2015-01-30 10:30:10', 'Teevision Printing', '27', '');
INSERT INTO `dg_article` VALUES ('14', '5 Pointz', 'class-aptent-taciti-sociosqu-ad-litora-torquent', '86', '5 Pointz', '5 Pointz', '5 Pointz', '<p>Yes, I am rewriting about this place since it is awesome. I&rsquo;m so glad I got the chance to see it before it was destroyed by the owner. This place was pretty much the mecca of graffiti out in long island city. I remember as soon as I parked I could hear the music on full blast at the heart of the buildings and you would see people on each wall creating their next master piece.</p>\r\n<p>What I loved the most was that when you looked around everyone came from all different backgrounds. It didn&rsquo;t matter what color you were or how old you were. The passion they had for this brought them all together whether they knew or not. Too bad it&rsquo;s all gone now and I won&rsquo;t ever see people tagging in broad daylight without the cops chasing you.&Acirc;&nbsp;I just wished I &Acirc;&nbsp;handed out business cards so I could of made them&nbsp;<a title=\"custom t-shirts\" href=\"http://teevisionprinting.com/\" target=\"_blank\">custom t-shirts</a>&nbsp;of their stuff. Oh wells. Enjoy the pictures</p>\r\n<p><img class=\"alignnone size-medium wp-image-2162\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_1423291-300x225.jpg\" alt=\"20130914_142329\" width=\"300\" height=\"225\" /><img class=\"alignnone size-medium wp-image-2163\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_1423331-300x225.jpg\" alt=\"20130914_142333\" width=\"300\" height=\"225\" /><img class=\"alignnone size-medium wp-image-2164\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_1425061-300x225.jpg\" alt=\"20130914_142506\" width=\"300\" height=\"225\" /><img class=\"alignnone size-medium wp-image-2165\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_1425291-300x225.jpg\" alt=\"20130914_142529\" width=\"300\" height=\"225\" /><img class=\"alignnone size-medium wp-image-2166\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_142737-300x225.jpg\" alt=\"20130914_142737\" width=\"300\" height=\"225\" /><img class=\"alignnone size-medium wp-image-2169\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_143412-300x225.jpg\" alt=\"20130914_143412\" width=\"300\" height=\"225\" /><img class=\"alignnone size-medium wp-image-2170\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_143418-300x225.jpg\" alt=\"20130914_143418\" width=\"300\" height=\"225\" /><img class=\"alignnone size-medium wp-image-2171\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_143523-300x225.jpg\" alt=\"20130914_143523\" width=\"300\" height=\"225\" /><img class=\"alignnone size-medium wp-image-2173\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_144058-300x225.jpg\" alt=\"20130914_144058\" width=\"300\" height=\"225\" /><img class=\"alignnone size-medium wp-image-2174\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_144416-300x225.jpg\" alt=\"20130914_144416\" width=\"300\" height=\"225\" /><img class=\"alignnone size-medium wp-image-2176\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_144800-300x225.jpg\" alt=\"20130914_144800\" width=\"300\" height=\"225\" /><img class=\"alignnone size-medium wp-image-2178\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_143009-225x300.jpg\" alt=\"20130914_143009\" width=\"225\" height=\"300\" /><img class=\"alignnone size-medium wp-image-2179\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_143943-225x300.jpg\" alt=\"20130914_143943\" width=\"225\" height=\"300\" /><img class=\"alignnone size-medium wp-image-2180\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_144446-225x300.jpg\" alt=\"20130914_144446\" width=\"225\" height=\"300\" /><img class=\"alignnone size-medium wp-image-2161\" src=\"http://teevisionprinting.com/wp-content/uploads/20130914_141713-225x300.jpg\" alt=\"20130914_141713\" width=\"225\" height=\"300\" /></p>', '/media/assets/20130914_1423291-300x225.jpg', '1', '2015-01-30 10:30:46', 'admin', '73', '');
INSERT INTO `dg_article` VALUES ('15', 'Past and Present', 'past-and-present', '85', 'Past and Present', 'Past and Present', 'Past and Present', '<div class=\"post-content\">\r\n<p>When I first started&nbsp;<a title=\"customer screen printing\" href=\"http://teevisionprinting.com/\" target=\"_blank\">custom screen printing</a>&nbsp;it was NOT easy. I think I researched on forums and and watched youtube videos more than I actually printed for several months. It didn&rsquo;t help that my first machine was probably 10x older than me. However, It was an awesome press. It was a 6/8 &Acirc;&nbsp;Hopkins international manual press and I learned everything I needed to on it. Custom T-shirt printing became an obsession for me, and even though everyday was a challenge, I couldn&rsquo;t wait to get into the shop and tackle on the next thing. It all started with this press.&nbsp;<img class=\"alignnone size-medium wp-image-2059\" src=\"http://teevisionprinting.com/wp-content/uploads/IMG_20130619_2248182-300x300.jpg\" alt=\"IMG_20130619_224818\" width=\"300\" height=\"300\" /><img class=\"alignnone size-medium wp-image-2307\" src=\"http://teevisionprinting.com/wp-content/uploads/20131119_101500-300x225.jpg\" alt=\"20131119_101500\" width=\"401\" height=\"301\" /></p>\r\n<p>I upgraded to something newer with micro registrations so that set-up would be much easier but I always remember from time to time what I started with. Here&rsquo;s a photo of my current setup before I put the auto together.&nbsp;</p>\r\n<div id=\"wpcr_respond_1\">&nbsp;</div>\r\n<div class=\"fix\">&nbsp;</div>\r\n</div>', 'media/assets/IMG_20130619_2248182-300x300.jpg', '1', '2015-03-09 21:33:34', 'Teevision Printing', '20', '');

-- ----------------------------
-- Table structure for `dg_attributes`
-- ----------------------------
DROP TABLE IF EXISTS `dg_attributes`;
CREATE TABLE `dg_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `titles` text COLLATE utf8_unicode_ci NOT NULL,
  `prices_color` text COLLATE utf8_unicode_ci NOT NULL,
  `prices` text COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_attributes
-- ----------------------------
INSERT INTO `dg_attributes` VALUES ('1', '[\"Enter Sizes and Print Location\"]', '[[\"SM\",\"MD\",\"LG\",\"XL\",\"2XL\",\"3XL\"]]', '[[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]]', '[[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]]', '1', '[\"textlist\"]');
INSERT INTO `dg_attributes` VALUES ('3', '[\"Enter Sizes and Print Location\"]', '[[\"SM\",\"MD\",\"LG\",\"XL\",\"2XL\",\"3XL\"]]', '[[\"0\",\"0\",\"\",\"\",\"\",\"\"]]', '[[\"0\",\"0\",\"\",\"\",\"\",\"\"]]', '12', '[\"textlist\"]');
INSERT INTO `dg_attributes` VALUES ('4', '[\"Enter Sizes and Print Location\"]', '[[\"SM\",\"MD\",\"LG\",\"XL\",\"2XL\",\"3XL\"]]', '[[\"\",\"\",\"\",\"\",\"\",\"\"]]', '[[\"\",\"\",\"\",\"\",\"\",\"\"]]', '20', '[\"textlist\"]');
INSERT INTO `dg_attributes` VALUES ('5', '[\"Enter Sizes and Print Location\"]', '[[\"SM\",\"MD\",\"LG\",\"XL\",\"2Xl\",\"3XL\"]]', '[[\"\",\"\",\"\",\"\",\"\",\"\"]]', '[[\"\",\"\",\"\",\"\",\"\",\"\"]]', '21', '[\"textlist\"]');
INSERT INTO `dg_attributes` VALUES ('6', '[\"Enter Sizes and Print Location\"]', '[[\"SM\",\"MD\",\"LG\",\"XL\",\"2XL\",\"3XL\"]]', '[[\"\",\"\",\"\",\"\",\"\",\"\"]]', '[[\"\",\"\",\"\",\"\",\"\",\"\"]]', '13', '[\"textlist\"]');
INSERT INTO `dg_attributes` VALUES ('7', '[\"Enter Sizes and Print Location\",\"muaaa\"]', '[[\"SM\",\"MD\",\"LG\",\"XL\",\"2XL\",\"3XL\",\"4XL\"],[\"trang\",\"do\",\"xanh\"]]', '[[\"0\",\"0\",\"0\",\"0\",\"5\",\"0\",\"0\"],[\"0\",\"4\",\"0\"]]', '[[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\"],[\"12\",\"14\",\"14\"]]', '22', '[\"textlist\",\"checkbox\"]');

-- ----------------------------
-- Table structure for `dg_banner`
-- ----------------------------
DROP TABLE IF EXISTS `dg_banner`;
CREATE TABLE `dg_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `title` varchar(200) NOT NULL,
  `images` text NOT NULL,
  `captions` text NOT NULL,
  `settings` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_banner
-- ----------------------------
INSERT INTO `dg_banner` VALUES ('4', '54a282ea77425', 'Test Slider', '[\"media\\/modules\\/banner\\/images\\/hill_road.jpg\",\"media\\/modules\\/banner\\/images\\/tree_root.jpg\"]', '[\"Tree root test slider\",\"\"]', '{\"mode\":\"horizontal\",\"caption\":\"true\",\"auto\":\"true\",\"randomStart\":\"true\",\"autoControls\":\"true\",\"infiniteLoop\":\"true\",\"hideControlOnEnd\":\"true\",\"adaptiveHeight\":\"true\",\"responsive\":\"false\",\"speed\":\"500\",\"pause\":\"4000\",\"minSlides\":\"1\",\"maxSlides\":\"1\",\"slideWidth\":\"720\",\"slideMargin\":\"10\"}', '');
INSERT INTO `dg_banner` VALUES ('5', '54a37cbf5977a', 'test123', '[\"media\\/assets\\/mens-zipper-hoodie-by-dickies-61.png\"]', '[\"dsfafafdfdf\"]', '{\"mode\":\"horizontal\",\"caption\":\"true\",\"auto\":\"true\",\"randomStart\":\"true\",\"infiniteLoop\":\"true\",\"hideControlOnEnd\":\"true\",\"responsive\":\"true\",\"speed\":\"500\",\"minSlides\":\"1\",\"slideMargin\":\"0\"}', '');
INSERT INTO `dg_banner` VALUES ('6', '54a3837039fe2', 'test slide 123', '[\"media\\/assets\\/mens-zipper-hoodie-by-dickies-61.png\",\"media\\/assets\\/testing\\/1414949730.png\",\"media\\/assets\\/testing\\/1414949918-458x458.png\"]', '[\"t-shirt\",\"phone\",\"cup\"]', '{\"mode\":\"horizontal\",\"caption\":\"true\",\"auto\":\"true\",\"randomStart\":\"true\",\"infiniteLoop\":\"true\",\"hideControlOnEnd\":\"true\",\"responsive\":\"true\",\"speed\":\"500\",\"minSlides\":\"1\",\"slideMargin\":\"0\"}', '');
INSERT INTO `dg_banner` VALUES ('8', '54a3aa99893bd', 'testing edit', '[\"media\\/assets\\/mens-zipper-hoodie-by-dickies-61.png\",\"media\\/assets\\/testing\\/1414949730.png\",\"media\\/assets\\/mens-zipper-hoodie-by-dickies-61.png\"]', '[\"testing t-shirt\",\"My phone\",\"\"]', '{\"mode\":\"horizontal\",\"captions\":\"true\",\"infiniteLoop\":\"true\",\"autoControls\":\"true\",\"hideControlOnEnd\":\"true\",\"maxSlides\":\"1\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"5\",\"bottom\":\"5\"},\"border\":{\"left\":\"1\",\"right\":\"1\",\"top\":\"1\",\"bottom\":\"1\"},\"padding\":{\"left\":\"5\",\"right\":\"5\",\"top\":\"5\",\"bottom\":\"5\"},\"borderColor\":\"2977FF\",\"borderStyle\":\"Solid\",\"background\":{\"color\":\"85FFEF\",\"image\":\"media\\/assets\\/mens-zipper-hoodie-by-dickies-61.png\",\"style\":\"Repeat\"}}');
INSERT INTO `dg_banner` VALUES ('9', '54a3ab55ac515', 'test', '[\"media\\/assets\\/blouse.jpg\",\"media\\/assets\\/faded-short-sleeve-tshirts.jpg\",\"media\\/assets\\/printed-summer-dress.jpg\"]', '[\"\",\"\",\"\"]', '{\"mode\":\"horizontal\",\"captions\":\"true\",\"infiniteLoop\":\"true\",\"autoControls\":\"true\",\"hideControlOnEnd\":\"true\",\"maxSlides\":\"2\",\"slideWidth\":\"150\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_banner` VALUES ('10', '54a3d29963926', 'Test Slider', '[\"media\\/assets\\/mens-zipper-hoodie-by-dickies-61.png\",\"media\\/assets\\/testing\\/1414949730.png\"]', '[\"tesaktjlkjaldfa adsfasdf adsfasdfadf\",\"\"]', '{\"mode\":\"horizontal\",\"caption\":\"true\",\"infiniteLoop\":\"false\",\"autoControls\":\"true\",\"hideControlOnEnd\":\"true\",\"maxSlides\":\"1\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"FFFFFF\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"FFFFFF\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_banner` VALUES ('11', 'banner54a7636398f9f', 'test', '[\"media\\/assets\\/mens-zipper-hoodie-by-dickies-61.png\"]', '[\"test\"]', '{\"mode\":\"horizontal\",\"captions\":\"true\",\"infiniteLoop\":\"true\",\"autoControls\":\"true\",\"hideControlOnEnd\":\"true\",\"maxSlides\":\"1\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"FFFFFF\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"FFFFFF\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_banner` VALUES ('12', 'banner54a76e634e89c', 'Test Slider', '[\"media\\/assets\\/mens-zipper-hoodie-by-dickies-61.png\"]', '[\"\"]', '{\"mode\":\"horizontal\",\"captions\":\"true\",\"infiniteLoop\":\"true\",\"autoControls\":\"true\",\"hideControlOnEnd\":\"true\",\"maxSlides\":\"1\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"FFFFFF\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"FFFFFF\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_banner` VALUES ('13', 'banner54bb692d32c0b', 'test', '[\"media\\/assets\\/faded-short-sleeve-tshirts.jpg\"]', '[\"test\"]', '{\"mode\":\"horizontal\",\"captions\":\"true\",\"infiniteLoop\":\"true\",\"autoControls\":\"true\",\"hideControlOnEnd\":\"true\",\"maxSlides\":\"1\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_banner` VALUES ('14', 'banner54d82fca30d57', 'Home page', '[\"\\/media\\/\\/assets\\/banner\\/home-slide-1.png\",\"media\\/assets\\/banner\\/home-slider_03.png\"]', '[\"<h2 class=\\\"tee-title\\\">Teevison Printing<\\/h2>\\r\\n<p>Create a design in our design studio<\\/p>\\r\\n<p style=\\\"text-align:center;\\\"><br\\/><br\\/><br\\/><br\\/><button type=\\\"button\\\" class=\\\"btn btn-primary\\\">Get Started<\\/button><\\/p>\",\"\"]', '{\"mode\":\"horizontal\",\"captions\":\"true\",\"infiniteLoop\":\"true\",\"autoControls\":\"true\",\"hideControlOnEnd\":\"true\",\"maxSlides\":\"1\",\"slideWidth\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"FFFFFF\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');

-- ----------------------------
-- Table structure for `dg_categories`
-- ----------------------------
DROP TABLE IF EXISTS `dg_categories`;
CREATE TABLE `dg_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL COMMENT 'clipart, font',
  `title` varchar(200) NOT NULL,
  `layout` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `level` int(3) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `image` text NOT NULL,
  `parent_id` int(10) NOT NULL,
  `published` varchar(1) NOT NULL,
  `language` varchar(5) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `created` datetime NOT NULL,
  `order` int(4) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_categories
-- ----------------------------
INSERT INTO `dg_categories` VALUES ('29', 'clipart', 'Holidays', '0', 'holidays', '1', 'holidays', '', '0', '1', '', '', '', '', '0000-00-00 00:00:00', '0', '');
INSERT INTO `dg_categories` VALUES ('36', 'clipart', 'Schools', '0', 'schools', '1', 'Schools', '', '0', '1', '', '', '', '', '0000-00-00 00:00:00', '0', '');
INSERT INTO `dg_categories` VALUES ('39', 'font', 'Standard', '0', '', '1', '', '', '0', '1', 'en', '', '', '', '2015-01-24 03:18:19', '0', '');
INSERT INTO `dg_categories` VALUES ('40', 'font', 'Script/format', '0', '', '1', '', '', '0', '1', 'en', '', '', '', '2015-01-24 03:19:15', '0', '');
INSERT INTO `dg_categories` VALUES ('49', 'idea', 'Events & Parties', '0', 'events-parties', '1', '<p>Start the celebration with help from one of over 200 of our professionally designed party templates.</p>', 'media/assets/categories/parties-f5cbdfae972fe795b5872ac208358f51.jpg', '0', '1', 'en', 'Events & Parties t-shirt designer', '', '', '2015-01-31 08:13:07', '0', '');
INSERT INTO `dg_categories` VALUES ('52', 'idea', 'Birthday Design Ideas', '0', 'birthday-design-ideas', '1', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'media/assets/categories/fundraisers-c7048520a404bdaf44871da605a9fbcd.jpg', '0', '1', 'en', 'Birthday Design Ideas', '', '', '2015-01-31 08:46:43', '0', '');
INSERT INTO `dg_categories` VALUES ('56', 'idea', 'Sports / Teams', '0', 'sports-teams', '1', '<p>Imagine how great your team will look when you start with one of over 600 of our professionally designed sports templates.</p>', 'media/assets/categories/sports-59ed61d14915b3fcc7f1c482df1d9544.jpg', '0', '1', 'en', 'Sports T-Shirt Designs', '', '', '2015-02-08 05:49:04', '0', '');
INSERT INTO `dg_categories` VALUES ('59', 'idea', 'K-12 Template', '0', 'k-12-template', '1', '<p>Get high marks using one of over 700 of our professionally designed school templates.</p>', 'media/assets/categories/k12-aa070081d85a1ae2e46933a3a9c834dd.jpg', '0', '1', 'en', 'K-12 Template', '', '', '2015-02-08 09:51:40', '0', '');
INSERT INTO `dg_categories` VALUES ('63', 'product', 'Ladies', '0', 'Ladies', '1', '', 'media/assets/ladies2.png', '0', '1', 'en', 'Ladies', '', '', '2015-03-06 21:00:53', '0', '');
INSERT INTO `dg_categories` VALUES ('65', 'product', 'Polos ', '0', 'polo-dress-shirts', '1', '', 'media/assets/image05.jpg', '0', '1', 'en', '', '', '', '2015-03-06 21:06:51', '0', '');
INSERT INTO `dg_categories` VALUES ('66', 'product', 'Sweatshirts', '0', 'ladies-tshirts', '1', '', 'media/assets/sweat.png', '0', '1', 'en', '', '', '', '2015-03-06 21:12:25', '0', '');
INSERT INTO `dg_categories` VALUES ('77', 'clipart', 'Sports', '0', 'sports', '1', 'Sports', '', '0', '1', '', '', '', '', '0000-00-00 00:00:00', '0', '');
INSERT INTO `dg_categories` VALUES ('78', 'clipart', 'Animals', '0', 'animals', '1', 'Animals', '', '0', '1', '', '', '', '', '0000-00-00 00:00:00', '0', '');
INSERT INTO `dg_categories` VALUES ('79', 'clipart', 'Transportation', '0', 'transportation', '1', 'Transportation', '', '0', '1', '', '', '', '', '0000-00-00 00:00:00', '0', '');
INSERT INTO `dg_categories` VALUES ('80', 'clipart', 'Shapes', '0', 'shapes', '1', 'shapes', '', '0', '1', '', '', '', '', '0000-00-00 00:00:00', '0', '');
INSERT INTO `dg_categories` VALUES ('85', 'article', 'Tutorial', '0', 'tutorial', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', 'media/assets/blogs/tutorial.jpg', '0', '1', 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2015-03-09 23:48:46', '0', '');
INSERT INTO `dg_categories` VALUES ('86', 'article', 'Article', '0', 'article', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', 'media/assets/blogs/article_writing.jpg', '0', '1', 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2015-03-09 23:49:42', '0', '');
INSERT INTO `dg_categories` VALUES ('87', 'article', 'Document', '0', 'document', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', 'media/assets/blogs/Documents.jpg', '0', '1', 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2015-03-09 23:51:34', '0', '');
INSERT INTO `dg_categories` VALUES ('88', 'article', 'Video', '0', 'video', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', 'media/assets/blogs/videos.jpg', '0', '1', 'en', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2015-03-09 23:53:00', '0', '');
INSERT INTO `dg_categories` VALUES ('89', 'product', 'T-Shirts', '0', 'T-Shirts', '1', '', 'media/assets/tshirt.png', '0', '1', 'en', '', '', '', '2015-03-10 02:58:47', '0', '');

-- ----------------------------
-- Table structure for `dg_cliparts`
-- ----------------------------
DROP TABLE IF EXISTS `dg_cliparts`;
CREATE TABLE `dg_cliparts` (
  `clipart_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cate_id` int(11) NOT NULL,
  `add_price` varchar(1) NOT NULL DEFAULT '0',
  `status` varchar(2) NOT NULL DEFAULT '1' COMMENT '1. display, 0. pending, -1. deny',
  `feature` int(1) NOT NULL DEFAULT '0',
  `copyright` int(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL COMMENT 'photo, icon, vertor',
  `fle_url` text NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_type` varchar(200) NOT NULL,
  `colors` text NOT NULL,
  `change_color` int(1) NOT NULL DEFAULT '0',
  `view` int(100) NOT NULL,
  `system` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `remove` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`clipart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_cliparts
-- ----------------------------
INSERT INTO `dg_cliparts` VALUES ('10', '0', '0', 'sports 1', 'sports', 'sports', '77', '0', '1', '0', '0', '0', '77/12858952164ca5343079505.svg', '12858952164ca5343079505.svg', 'svg', '0', '1', '0', '0', '2015-03-09 06:01:15', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('13', '0', '0', 'peagus', 'peagus', 'peagus', '78', '0', '1', '0', '0', '0', '78/29cs00040.svg', '29cs00040.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:23:27', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('14', '0', '0', 'horse', 'horse', 'horse', '78', '0', '1', '0', '0', '0', '78/30cs00041.svg', '30cs00041.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:23:37', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('15', '0', '0', 'pig', 'pig', 'pig', '78', '0', '1', '0', '0', '0', '78/39cs00080.svg', '39cs00080.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:23:57', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('16', '0', '0', 'cute pig', 'cute-pig', 'cute pig', '78', '0', '1', '0', '0', '0', '78/43cs00084.svg', '43cs00084.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:24:13', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('17', '0', '0', 'animal 02', 'animal-02', 'animal 02', '78', '0', '1', '0', '0', '0', '78/54cs00106.svg', '54cs00106.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:24:31', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('18', '0', '0', 'dog', 'dog', 'dog', '78', '0', '1', '0', '0', '0', '78/58cs00185.svg', '58cs00185.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:24:42', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('19', '0', '0', 'cute bear', 'cute-bear', 'cute bear', '78', '0', '1', '0', '0', '0', '78/63cs00291.svg', '63cs00291.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:24:56', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('20', '0', '0', 'bear face', 'bear-face', 'bear face', '78', '0', '1', '0', '0', '0', '78/66cs00390.svg', '66cs00390.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:25:08', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('21', '0', '0', 'dragon', 'dragon', 'dragon', '78', '0', '1', '0', '0', '0', '78/970cs00198.svg', '970cs00198.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:25:29', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('25', '0', '0', 'dolphin6', 'dolphin6', 'dolphin6', '78', '0', '1', '0', '0', '0', '78/999dolphin6.svg', '999dolphin6.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:26:13', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('26', '0', '0', 'goldfish', 'goldfish', 'goldfish', '78', '0', '1', '0', '0', '0', '78/1006goldfish.svg', '1006goldfish.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:26:24', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('27', '0', '0', 'heart', 'heart', 'heart', '80', '0', '1', '0', '0', '0', '80/801cs00133.svg', '801cs00133.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:27:31', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('28', '0', '0', 'frame 01', 'frame-01', 'frame 01', '80', '0', '1', '0', '0', '0', '80/854cs00377.svg', '854cs00377.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:27:47', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('29', '0', '0', 'happy birth day', 'happy-birth-day', 'happy birth day', '29', '0', '1', '0', '0', '0', '29/121cs00490.svg', '121cs00490.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:28:31', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('30', '0', '0', 'dog 01', 'dog-01', 'dog 01', '78', '0', '1', '0', '0', '0', '78/129cs00835.svg', '129cs00835.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:28:50', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('31', '0', '0', 'graduation', 'graduation', 'graduation', '29', '0', '1', '0', '0', '0', '29/447cs00729.svg', '447cs00729.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:29:57', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('32', '0', '0', 'graduation 01', 'graduation-01', 'graduation 01', '29', '0', '1', '0', '0', '0', '29/449cs00731.svg', '449cs00731.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:30:20', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('35', '0', '0', 'red hat', 'red-hat', 'red hat', '36', '0', '1', '0', '0', '0', '36/445cs00485.svg', '445cs00485.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:30:59', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('36', '0', '0', 'skateboarding', 'skateboarding', 'skateboarding', '29', '0', '1', '0', '0', '0', '29/537cs00101.svg', '537cs00101.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:32:24', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('37', '0', '0', 'bycicle', 'bycicle', 'bycicle', '29', '0', '1', '0', '0', '0', '29/540cs00112.svg', '540cs00112.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:32:43', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('38', '0', '0', 'base ball', 'base-ball', 'base ball', '29', '0', '1', '0', '0', '0', '29/546cs00129.svg', '546cs00129.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:33:08', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('39', '0', '0', 'basket ball', 'basket-ball', 'basket ball', '29', '0', '1', '0', '0', '0', '29/549cs00139.svg', '549cs00139.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:33:23', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('40', '0', '0', 'skater', 'skater', 'skater', '29', '0', '1', '0', '0', '0', '29/550cs00152.svg', '550cs00152.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:33:35', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('41', '0', '0', 'football', 'football', 'football', '29', '0', '1', '0', '0', '0', '29/558cs00161.svg', '558cs00161.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:33:52', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('42', '0', '0', 'football 12', 'football 23', 'football 23', '29', '0', '1', '0', '0', '0', '29/560cs00171.svg', '560cs00171.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:33:56', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('43', '0', '0', 'volleyball', 'volleyball', 'volleyball', '29', '0', '1', '0', '0', '0', '29/559cs00166.svg', '559cs00166.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:34:07', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('44', '0', '0', 'base ball 01', 'base-ball-01', 'base ball 01', '29', '0', '1', '0', '0', '0', '29/572cs00471.svg', '572cs00471.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:34:22', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('45', '0', '0', 'base ball 02', 'base-ball-02', 'base ball 02', '29', '0', '1', '0', '0', '0', '29/579cs00550.svg', '579cs00550.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:34:40', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('46', '0', '0', 'cheer leading', 'cheer-leading', 'cheer leading', '29', '0', '1', '0', '0', '0', '29/561cs00182.svg', '561cs00182.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:35:06', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('47', '0', '0', 'base ball 03', 'base-ball-03', 'base ball 03', '29', '0', '1', '0', '0', '0', '29/601cs00695.svg', '601cs00695.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:35:17', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('48', '0', '0', 'basketballc14', 'basketballc14', 'basketballc14', '29', '0', '1', '0', '0', '0', '29/1041basketballc14.svg', '1041basketballc14.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:35:26', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('49', '0', '0', 'soccerj017', 'soccerj017', 'soccerj017', '29', '0', '1', '0', '0', '0', '29/1079soccerj017.svg', '1079soccerj017.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:35:38', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('50', '0', '0', 'tracktribal1', 'tracktribal1', 'tracktribal1', '29', '0', '1', '0', '0', '0', '29/1088tracktribal1.svg', '1088tracktribal1.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:35:47', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('51', '0', '0', 'car', 'car', 'car', '79', '0', '1', '0', '0', '0', '79/1135cs00115.svg', '1135cs00115.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:36:19', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('52', '0', '0', 'boat', 'boat', 'boat', '79', '0', '1', '0', '0', '0', '79/1134cs00095.svg', '1134cs00095.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:36:27', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('53', '0', '0', 'cruise', 'cruise', 'cruise', '79', '0', '1', '0', '0', '0', '79/1163cs00587.svg', '1163cs00587.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:36:36', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('54', '0', '0', 'helmet', 'helmet', 'helmet', '79', '0', '1', '0', '0', '0', '79/1174cs00768.svg', '1174cs00768.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:36:56', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('55', '0', '0', 'pflmntire11', 'pflmntire11', 'pflmntire11', '79', '0', '1', '0', '0', '0', '79/1199pflmntire11.svg', '1199pflmntire11.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:37:04', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('56', '0', '0', 'eswheel001clr', 'eswheel001clr', 'eswheel001clr', '79', '0', '1', '0', '0', '0', '79/1197eswheel001clr.svg', '1197eswheel001clr.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:37:08', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('58', '0', '0', 'car 01', 'car-01', 'car 01', '79', '0', '1', '0', '0', '0', '79/1192cs01078.svg', '1192cs01078.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:37:18', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('59', '0', '0', 'car  02', 'car-02', 'car  02', '79', '0', '1', '0', '0', '0', '79/1193cs01100.svg', '1193cs01100.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:37:28', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('60', '0', '0', 'christmas', 'christmas', 'christmas', '29', '0', '1', '0', '0', '0', '29/343cs01041.svg', '343cs01041.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:38:08', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('61', '0', '0', 'christmas tree', 'christmas-tree', 'christmas tree', '29', '0', '1', '0', '0', '0', '29/339cs01037.svg', '339cs01037.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:38:20', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('62', '0', '0', 'snow man', 'snow-man', 'snow man', '29', '0', '1', '0', '0', '0', '29/327cs01025.svg', '327cs01025.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:38:29', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('63', '0', '0', 'bitch', 'bitch', 'bitch', '29', '0', '1', '0', '0', '0', '29/226cs00929.svg', '226cs00929.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:38:53', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('64', '0', '0', 'haloween eye', 'haloween-eye', 'haloween eye', '29', '0', '1', '0', '0', '0', '29/217cs00857.svg', '217cs00857.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:39:08', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('65', '0', '0', 'cs00497', 'cs00497', 'cs00497', '80', '0', '1', '0', '0', '0', '80/916cs00497.svg', '916cs00497.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:40:03', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('66', '0', '0', 'cs00505', 'cs00505', 'cs00505', '80', '0', '1', '0', '0', '0', '80/924cs00505.svg', '924cs00505.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:40:09', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('67', '0', '0', 'zodiactemp07es', 'zodiactemp07es', 'zodiactemp07es', '80', '0', '1', '0', '0', '0', '80/934zodiactemp07es.svg', '934zodiactemp07es.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:40:19', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('68', '0', '0', 'cs00276', 'cs00276', 'cs00276', '29', '0', '1', '0', '0', '0', '29/942cs00276.svg', '942cs00276.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:40:42', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('69', '0', '0', 'flag', 'flag', 'flag', '80', '0', '1', '0', '0', '0', '80/417cs00008.svg', '417cs00008.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:41:08', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('70', '0', '0', 'eseagle003clr', 'eseagle003clr', 'eseagle003clr', '80', '0', '1', '0', '0', '0', '80/434eseagle003clr.svg', '434eseagle003clr.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:41:12', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('71', '0', '0', 'patriot08', 'patriot08', 'patriot08', '80', '0', '1', '0', '0', '0', '80/439patriot08.svg', '439patriot08.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:41:18', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('72', '0', '0', 'circle', 'circle', 'circle', '80', '0', '1', '0', '0', '0', '80/381cs00305.svg', '381cs00305.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:42:10', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('73', '0', '0', 'cs00338', 'cs00338', 'cs00338', '80', '0', '1', '0', '0', '0', '80/382cs00338.svg', '382cs00338.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:42:31', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('74', '0', '0', 'cs00349', 'cs00349', 'cs00349', '80', '0', '1', '0', '0', '0', '80/385cs00349.svg', '385cs00349.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:42:35', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('75', '0', '0', 'cs00393', 'cs00393', 'cs00393', '80', '0', '1', '0', '0', '0', '80/388cs00393.svg', '388cs00393.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:42:36', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('76', '0', '0', 'cs00394', 'cs00394', 'cs00394', '80', '0', '1', '0', '0', '0', '80/389cs00394.svg', '389cs00394.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:42:38', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('77', '0', '0', 'cs00395', 'cs00395', 'cs00395', '80', '0', '1', '0', '0', '0', '80/390cs00395.svg', '390cs00395.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:42:40', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('78', '0', '0', 'cs00396', 'cs00396', 'cs00396', '80', '0', '1', '0', '0', '0', '80/391cs00396.svg', '391cs00396.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:42:41', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('79', '0', '0', 'cs00396', 'cs00396', 'cs00396', '80', '0', '1', '0', '0', '0', '80/391cs00396.svg', '391cs00396.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:42:44', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('80', '0', '0', 'cs00397', 'cs00397', 'cs00397', '80', '0', '1', '0', '0', '0', '80/392cs00397.svg', '392cs00397.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:42:47', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('81', '0', '0', 'cs00398', 'cs00398', 'cs00398', '80', '0', '1', '0', '0', '0', '80/393cs00398.svg', '393cs00398.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:42:50', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('82', '0', '0', 'cs00421', 'cs00421', 'cs00421', '80', '0', '1', '0', '0', '0', '80/412cs00421.svg', '412cs00421.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:42:54', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('85', '0', '0', 'cs00078', 'cs00078', 'cs00078', '80', '0', '1', '0', '0', '0', '80/502cs00078.svg', '502cs00078.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:43:08', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('86', '0', '0', 'cs00163', 'cs00163', 'cs00163', '80', '0', '1', '0', '0', '0', '80/503cs00163.svg', '503cs00163.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:43:09', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('87', '0', '0', 'cs00515', 'cs00515', 'cs00515', '80', '0', '1', '0', '0', '0', '80/415cs00515.svg', '415cs00515.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:43:12', '2015-03-09 00:00:00', '1', '0');
INSERT INTO `dg_cliparts` VALUES ('88', '0', '0', 'cs00405', 'cs00405', 'cs00405', '80', '0', '1', '0', '0', '0', '80/398cs00405.svg', '398cs00405.svg', 'svg', '[]', '1', '0', '0', '2015-03-09 16:43:16', '2015-03-09 00:00:00', '1', '0');

-- ----------------------------
-- Table structure for `dg_colors`
-- ----------------------------
DROP TABLE IF EXISTS `dg_colors`;
CREATE TABLE `dg_colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `published` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=383 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_colors
-- ----------------------------
INSERT INTO `dg_colors` VALUES ('82', 'FFA500', 'Orange', 'General', 'en', '1');
INSERT INTO `dg_colors` VALUES ('87', 'FFFF00', 'Yellow', 'Basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('107', '0000FF', 'Blue', 'Basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('206', '1C2041', 'Navy', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('320', 'FFFFFF', 'white', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('321', '000000', 'black', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('322', 'DF73FF', 'Heliotrope', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('323', '4B0082', 'Indigo', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('324', '00A86B', 'Jade', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('325', 'C3B091', 'Khaki', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('326', 'E6E6FA', 'Lavender', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('327', 'CCFF00', 'Electric lime', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('328', 'FF00FF', 'Famous', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('329', '6C1039', 'Maroon', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('330', '993366', 'Twilight lavender', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('331', 'C8A2C8', 'Lilac', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('332', '000080', 'Navy blue', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('333', 'CC7722', 'Orche', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('334', '808000', 'Olive', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('335', 'DA70D6', 'Orchild', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('336', 'FFE5B4', 'Peach', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('337', 'CCCCFF', 'Periwinkle', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('338', 'FFC0CB', 'Pink', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('339', '660066', 'Dark purple', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('340', '003399', 'Dark power blue', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('341', 'CC8899', 'Puce', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('342', '510090', 'Purple', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('343', 'AC1223', 'Red', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('344', 'FF8C69', 'Salmon', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('345', 'FF2400', 'Scalert', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('346', '704214', 'Sepia', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('347', 'C0C0C0', 'Silver', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('348', 'BFA87C', 'Tan', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('349', '008080', 'Teal', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('350', '30D5C8', 'Turquoise', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('351', 'FF4D00', 'Orange red', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('352', 'BF00BF', 'Violet', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('353', '40826D', 'Viridian', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('354', 'E3E4E6', 'ash', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('355', 'FF78D1', 'Azalea', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('356', '76042D', 'Cardinal', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('357', '7287B2', 'Carolina Blue', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('358', 'F9D320', 'Daisy', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('359', '462A19', 'Dark Chocolate', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('360', '303232', 'Dark Heather (50/50)', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('361', '304328', 'Forest Green', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('362', '7A1B31', 'Garnet', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('363', 'F7B016', 'Gold', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('364', 'C8287B', 'Heliconia', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('365', '569A32', 'Irish Green', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('366', '438A86', 'Jade Dome', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('367', '3A7A51', 'Kelly Green', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('368', '8AA140', 'Kiwi', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('369', 'C4D8F6', 'Light Blue', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('370', 'FDD3E2', 'Light Pink', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('371', 'C2FF6E', 'Lime', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('372', 'FFF2DB', 'Natural', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('373', 'FF6600', 'Blaze Orange', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('374', 'C7B5F0', 'Orchid', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('375', 'B73933', 'Paprika', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('376', '154396', 'Royal', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('377', 'CCC6AD', 'Sand', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('378', '0D69BE', 'Sapphire', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('379', 'A6CCD4', 'Sky', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('380', '999D9E', 'Sport Grey (90/10)', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('381', 'F35709', 'Tennessee Orange', 'basic', 'en', '1');
INSERT INTO `dg_colors` VALUES ('382', '82411D', 'Texas Orange', 'basic', 'en', '1');

-- ----------------------------
-- Table structure for `dg_config_emails`
-- ----------------------------
DROP TABLE IF EXISTS `dg_config_emails`;
CREATE TABLE `dg_config_emails` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_config_emails
-- ----------------------------
INSERT INTO `dg_config_emails` VALUES ('1', 'sub_register', 'Thank you for register!');
INSERT INTO `dg_config_emails` VALUES ('2', 'register', '<p>Dear {username}!</p>\n<p>Thank you register for tshirt</p>\n<p>Your Login ID: {email}</p>\n<p>&nbsp;</p>\n<p>Please <a href=\"{confirm_url}\" target=\"_blank\">Click here</a> to confirm account</p>\n<p>&nbsp;</p>\n<p>Regards,</p>\n<p>http://teevisionprinting.com/</p>\n<p>&nbsp;</p>');
INSERT INTO `dg_config_emails` VALUES ('3', 'sub_change_pass', 'Change pass !');
INSERT INTO `dg_config_emails` VALUES ('4', 'change_pass', '<p>Hi, {username}. Please have change password!</p>\n<p>Regards,</p>\n<p>http://teevisionprinting.com/</p>');
INSERT INTO `dg_config_emails` VALUES ('5', 'sub_forget_pass', 'Forgot password from teevisionprinting.com');
INSERT INTO `dg_config_emails` VALUES ('6', 'forget_pass', '<p>Hello {username},</p>\n<p>&nbsp;</p>\n<p>You can login with the following credentials:</p>\n<p>&nbsp;username: {username}</p>\n<p>Please <a href=\"{confirm_url}\" target=\"_blank\">Click here</a> to change your password!</p>\n<p>&nbsp;</p>\n<p>Regards,</p>\n<p>http://teevisionprinting.com/</p>\n<p><strong>&nbsp;</strong></p>');
INSERT INTO `dg_config_emails` VALUES ('7', 'sub_save_design', 'Review your design from TeeVision');
INSERT INTO `dg_config_emails` VALUES ('8', 'save_design', '<p>Dear Customer,</p>\n<p>Please review your design by the link {url_design}</p>\n<p>Regards,</p>\n<p>http://teevisionprinting.com/</p>');
INSERT INTO `dg_config_emails` VALUES ('9', 'sub_order_detai', '');
INSERT INTO `dg_config_emails` VALUES ('10', 'order_detai', '<p>Hi, {username}</p>\n<p>date: {date}</p>\n<p>total payment: {total}</p>\n<p>order number: {order_number}</p>\n<p>table: {table}</p>\n<p>Regards,</p>\n<p>http://teevisionprinting.com/</p>');
INSERT INTO `dg_config_emails` VALUES ('11', 'sub_order_status', 'Change Order status');
INSERT INTO `dg_config_emails` VALUES ('12', 'order_status', '<p>Hello {username},</p>\n<p>The status of your order number {order_number} is changed to {status}</p>\n<p>Regards,</p>\n<p>http://teevisionprinting.com/</p>');

-- ----------------------------
-- Table structure for `dg_contact`
-- ----------------------------
DROP TABLE IF EXISTS `dg_contact`;
CREATE TABLE `dg_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `key` varchar(32) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `copy` varchar(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_contact
-- ----------------------------
INSERT INTO `dg_contact` VALUES ('6', 'Contact', 'contact54b253c063867', 'test content:', 'info@teevisionprinting.com', '<p>test message:&nbsp;{content}</p>', '1', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"media\\/assets\\/faded-short-sleeve-tshirts.jpg\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_contact` VALUES ('8', 'Contact us', 'm_contact54fbde0000be1', '', 'nxminh.ictu@gmail.com', '', '0', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');

-- ----------------------------
-- Table structure for `dg_country`
-- ----------------------------
DROP TABLE IF EXISTS `dg_country`;
CREATE TABLE `dg_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code_2` varchar(2) NOT NULL,
  `code_3` varchar(3) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_country
-- ----------------------------
INSERT INTO `dg_country` VALUES ('1', 'Afghanistan', 'AF', 'AFG', '1');
INSERT INTO `dg_country` VALUES ('2', 'Albania', 'AL', 'ALB', '1');
INSERT INTO `dg_country` VALUES ('3', 'Algeria', 'DZ', 'DZA', '1');
INSERT INTO `dg_country` VALUES ('4', 'American Samoa', 'AS', 'ASM', '1');
INSERT INTO `dg_country` VALUES ('5', 'Andorra', 'AD', 'AND', '1');
INSERT INTO `dg_country` VALUES ('6', 'Angola', 'AO', 'AGO', '1');
INSERT INTO `dg_country` VALUES ('7', 'Anguilla', 'AI', 'AIA', '1');
INSERT INTO `dg_country` VALUES ('8', 'Antarctica', 'AQ', 'ATA', '1');
INSERT INTO `dg_country` VALUES ('9', 'Antigua and Barbuda', 'AG', 'ATG', '1');
INSERT INTO `dg_country` VALUES ('10', 'Argentina', 'AR', 'ARG', '1');
INSERT INTO `dg_country` VALUES ('11', 'Armenia', 'AM', 'ARM', '1');
INSERT INTO `dg_country` VALUES ('12', 'Aruba', 'AW', 'ABW', '1');
INSERT INTO `dg_country` VALUES ('13', 'Australia', 'AU', 'AUS', '1');
INSERT INTO `dg_country` VALUES ('14', 'Austria', 'AT', 'AUT', '1');
INSERT INTO `dg_country` VALUES ('15', 'Azerbaijan', 'AZ', 'AZE', '1');
INSERT INTO `dg_country` VALUES ('16', 'Bahamas', 'BS', 'BHS', '1');
INSERT INTO `dg_country` VALUES ('17', 'Bahrain', 'BH', 'BHR', '1');
INSERT INTO `dg_country` VALUES ('18', 'Bangladesh', 'BD', 'BGD', '1');
INSERT INTO `dg_country` VALUES ('19', 'Barbados', 'BB', 'BRB', '1');
INSERT INTO `dg_country` VALUES ('20', 'Belarus', 'BY', 'BLR', '1');
INSERT INTO `dg_country` VALUES ('21', 'Belgium', 'BE', 'BEL', '1');
INSERT INTO `dg_country` VALUES ('22', 'Belize', 'BZ', 'BLZ', '1');
INSERT INTO `dg_country` VALUES ('23', 'Benin', 'BJ', 'BEN', '1');
INSERT INTO `dg_country` VALUES ('24', 'Bermuda', 'BM', 'BMU', '1');
INSERT INTO `dg_country` VALUES ('25', 'Bhutan', 'BT', 'BTN', '1');
INSERT INTO `dg_country` VALUES ('26', 'Bolivia', 'BO', 'BOL', '1');
INSERT INTO `dg_country` VALUES ('27', 'Bosnia and Herzegovina', 'BA', 'BIH', '1');
INSERT INTO `dg_country` VALUES ('28', 'Botswana', 'BW', 'BWA', '1');
INSERT INTO `dg_country` VALUES ('29', 'Bouvet Island', 'BV', 'BVT', '1');
INSERT INTO `dg_country` VALUES ('30', 'Brazil', 'BR', 'BRA', '1');
INSERT INTO `dg_country` VALUES ('31', 'British Indian Ocean Territory', 'IO', 'IOT', '1');
INSERT INTO `dg_country` VALUES ('32', 'Brunei Darussalam', 'BN', 'BRN', '1');
INSERT INTO `dg_country` VALUES ('33', 'Bulgaria', 'BG', 'BGR', '1');
INSERT INTO `dg_country` VALUES ('34', 'Burkina Faso', 'BF', 'BFA', '1');
INSERT INTO `dg_country` VALUES ('35', 'Burundi', 'BI', 'BDI', '1');
INSERT INTO `dg_country` VALUES ('36', 'Cambodia', 'KH', 'KHM', '1');
INSERT INTO `dg_country` VALUES ('37', 'Cameroon', 'CM', 'CMR', '1');
INSERT INTO `dg_country` VALUES ('38', 'Canada', 'CA', 'CAN', '1');
INSERT INTO `dg_country` VALUES ('39', 'Cape Verde', 'CV', 'CPV', '1');
INSERT INTO `dg_country` VALUES ('40', 'Cayman Islands', 'KY', 'CYM', '1');
INSERT INTO `dg_country` VALUES ('41', 'Central African Republic', 'CF', 'CAF', '1');
INSERT INTO `dg_country` VALUES ('42', 'Chad', 'TD', 'TCD', '1');
INSERT INTO `dg_country` VALUES ('43', 'Chile', 'CL', 'CHL', '1');
INSERT INTO `dg_country` VALUES ('44', 'China', 'CN', 'CHN', '1');
INSERT INTO `dg_country` VALUES ('45', 'Christmas Island', 'CX', 'CXR', '1');
INSERT INTO `dg_country` VALUES ('46', 'Cocos (Keeling) Islands', 'CC', 'CCK', '1');
INSERT INTO `dg_country` VALUES ('47', 'Colombia', 'CO', 'COL', '1');
INSERT INTO `dg_country` VALUES ('48', 'Comoros', 'KM', 'COM', '1');
INSERT INTO `dg_country` VALUES ('49', 'Congo', 'CG', 'COG', '1');
INSERT INTO `dg_country` VALUES ('50', 'Cook Islands', 'CK', 'COK', '1');
INSERT INTO `dg_country` VALUES ('51', 'Costa Rica', 'CR', 'CRI', '1');
INSERT INTO `dg_country` VALUES ('52', 'Cote D\'Ivoire', 'CI', 'CIV', '1');
INSERT INTO `dg_country` VALUES ('53', 'Croatia', 'HR', 'HRV', '1');
INSERT INTO `dg_country` VALUES ('54', 'Cuba', 'CU', 'CUB', '1');
INSERT INTO `dg_country` VALUES ('55', 'Cyprus', 'CY', 'CYP', '1');
INSERT INTO `dg_country` VALUES ('56', 'Czech Republic', 'CZ', 'CZE', '1');
INSERT INTO `dg_country` VALUES ('57', 'Denmark', 'DK', 'DNK', '1');
INSERT INTO `dg_country` VALUES ('58', 'Djibouti', 'DJ', 'DJI', '1');
INSERT INTO `dg_country` VALUES ('59', 'Dominica', 'DM', 'DMA', '1');
INSERT INTO `dg_country` VALUES ('60', 'Dominican Republic', 'DO', 'DOM', '1');
INSERT INTO `dg_country` VALUES ('61', 'East Timor', 'TL', 'TLS', '1');
INSERT INTO `dg_country` VALUES ('62', 'Ecuador', 'EC', 'ECU', '1');
INSERT INTO `dg_country` VALUES ('63', 'Egypt', 'EG', 'EGY', '1');
INSERT INTO `dg_country` VALUES ('64', 'El Salvador', 'SV', 'SLV', '1');
INSERT INTO `dg_country` VALUES ('65', 'Equatorial Guinea', 'GQ', 'GNQ', '1');
INSERT INTO `dg_country` VALUES ('66', 'Eritrea', 'ER', 'ERI', '1');
INSERT INTO `dg_country` VALUES ('67', 'Estonia', 'EE', 'EST', '1');
INSERT INTO `dg_country` VALUES ('68', 'Ethiopia', 'ET', 'ETH', '1');
INSERT INTO `dg_country` VALUES ('69', 'Falkland Islands (Malvinas)', 'FK', 'FLK', '1');
INSERT INTO `dg_country` VALUES ('70', 'Faroe Islands', 'FO', 'FRO', '1');
INSERT INTO `dg_country` VALUES ('71', 'Fiji', 'FJ', 'FJI', '1');
INSERT INTO `dg_country` VALUES ('72', 'Finland', 'FI', 'FIN', '1');
INSERT INTO `dg_country` VALUES ('74', 'France, Metropolitan', 'FR', 'FRA', '1');
INSERT INTO `dg_country` VALUES ('75', 'French Guiana', 'GF', 'GUF', '1');
INSERT INTO `dg_country` VALUES ('76', 'French Polynesia', 'PF', 'PYF', '1');
INSERT INTO `dg_country` VALUES ('77', 'French Southern Territories', 'TF', 'ATF', '1');
INSERT INTO `dg_country` VALUES ('78', 'Gabon', 'GA', 'GAB', '1');
INSERT INTO `dg_country` VALUES ('79', 'Gambia', 'GM', 'GMB', '1');
INSERT INTO `dg_country` VALUES ('80', 'Georgia', 'GE', 'GEO', '1');
INSERT INTO `dg_country` VALUES ('81', 'Germany', 'DE', 'DEU', '1');
INSERT INTO `dg_country` VALUES ('82', 'Ghana', 'GH', 'GHA', '1');
INSERT INTO `dg_country` VALUES ('83', 'Gibraltar', 'GI', 'GIB', '1');
INSERT INTO `dg_country` VALUES ('84', 'Greece', 'GR', 'GRC', '1');
INSERT INTO `dg_country` VALUES ('85', 'Greenland', 'GL', 'GRL', '1');
INSERT INTO `dg_country` VALUES ('86', 'Grenada', 'GD', 'GRD', '1');
INSERT INTO `dg_country` VALUES ('87', 'Guadeloupe', 'GP', 'GLP', '1');
INSERT INTO `dg_country` VALUES ('88', 'Guam', 'GU', 'GUM', '1');
INSERT INTO `dg_country` VALUES ('89', 'Guatemala', 'GT', 'GTM', '1');
INSERT INTO `dg_country` VALUES ('90', 'Guinea', 'GN', 'GIN', '1');
INSERT INTO `dg_country` VALUES ('91', 'Guinea-Bissau', 'GW', 'GNB', '1');
INSERT INTO `dg_country` VALUES ('92', 'Guyana', 'GY', 'GUY', '1');
INSERT INTO `dg_country` VALUES ('93', 'Haiti', 'HT', 'HTI', '1');
INSERT INTO `dg_country` VALUES ('94', 'Heard and Mc Donald Islands', 'HM', 'HMD', '1');
INSERT INTO `dg_country` VALUES ('95', 'Honduras', 'HN', 'HND', '1');
INSERT INTO `dg_country` VALUES ('96', 'Hong Kong', 'HK', 'HKG', '1');
INSERT INTO `dg_country` VALUES ('97', 'Hungary', 'HU', 'HUN', '1');
INSERT INTO `dg_country` VALUES ('98', 'Iceland', 'IS', 'ISL', '1');
INSERT INTO `dg_country` VALUES ('99', 'India', 'IN', 'IND', '1');
INSERT INTO `dg_country` VALUES ('100', 'Indonesia', 'ID', 'IDN', '1');
INSERT INTO `dg_country` VALUES ('101', 'Iran (Islamic Republic of)', 'IR', 'IRN', '1');
INSERT INTO `dg_country` VALUES ('102', 'Iraq', 'IQ', 'IRQ', '1');
INSERT INTO `dg_country` VALUES ('103', 'Ireland', 'IE', 'IRL', '1');
INSERT INTO `dg_country` VALUES ('104', 'Israel', 'IL', 'ISR', '1');
INSERT INTO `dg_country` VALUES ('105', 'Italy', 'IT', 'ITA', '1');
INSERT INTO `dg_country` VALUES ('106', 'Jamaica', 'JM', 'JAM', '1');
INSERT INTO `dg_country` VALUES ('107', 'Japan', 'JP', 'JPN', '1');
INSERT INTO `dg_country` VALUES ('108', 'Jordan', 'JO', 'JOR', '1');
INSERT INTO `dg_country` VALUES ('109', 'Kazakhstan', 'KZ', 'KAZ', '1');
INSERT INTO `dg_country` VALUES ('110', 'Kenya', 'KE', 'KEN', '1');
INSERT INTO `dg_country` VALUES ('111', 'Kiribati', 'KI', 'KIR', '1');
INSERT INTO `dg_country` VALUES ('112', 'North Korea', 'KP', 'PRK', '1');
INSERT INTO `dg_country` VALUES ('113', 'Korea, Republic of', 'KR', 'KOR', '1');
INSERT INTO `dg_country` VALUES ('114', 'Kuwait', 'KW', 'KWT', '1');
INSERT INTO `dg_country` VALUES ('115', 'Kyrgyzstan', 'KG', 'KGZ', '1');
INSERT INTO `dg_country` VALUES ('116', 'Lao People\'s Democratic Republic', 'LA', 'LAO', '1');
INSERT INTO `dg_country` VALUES ('117', 'Latvia', 'LV', 'LVA', '1');
INSERT INTO `dg_country` VALUES ('118', 'Lebanon', 'LB', 'LBN', '1');
INSERT INTO `dg_country` VALUES ('119', 'Lesotho', 'LS', 'LSO', '1');
INSERT INTO `dg_country` VALUES ('120', 'Liberia', 'LR', 'LBR', '1');
INSERT INTO `dg_country` VALUES ('121', 'Libyan Arab Jamahiriya', 'LY', 'LBY', '1');
INSERT INTO `dg_country` VALUES ('122', 'Liechtenstein', 'LI', 'LIE', '1');
INSERT INTO `dg_country` VALUES ('123', 'Lithuania', 'LT', 'LTU', '1');
INSERT INTO `dg_country` VALUES ('124', 'Luxembourg', 'LU', 'LUX', '1');
INSERT INTO `dg_country` VALUES ('125', 'Macau', 'MO', 'MAC', '1');
INSERT INTO `dg_country` VALUES ('126', 'FYROM', 'MK', 'MKD', '1');
INSERT INTO `dg_country` VALUES ('127', 'Madagascar', 'MG', 'MDG', '1');
INSERT INTO `dg_country` VALUES ('128', 'Malawi', 'MW', 'MWI', '1');
INSERT INTO `dg_country` VALUES ('129', 'Malaysia', 'MY', 'MYS', '1');
INSERT INTO `dg_country` VALUES ('130', 'Maldives', 'MV', 'MDV', '1');
INSERT INTO `dg_country` VALUES ('131', 'Mali', 'ML', 'MLI', '1');
INSERT INTO `dg_country` VALUES ('132', 'Malta', 'MT', 'MLT', '1');
INSERT INTO `dg_country` VALUES ('133', 'Marshall Islands', 'MH', 'MHL', '1');
INSERT INTO `dg_country` VALUES ('134', 'Martinique', 'MQ', 'MTQ', '1');
INSERT INTO `dg_country` VALUES ('135', 'Mauritania', 'MR', 'MRT', '1');
INSERT INTO `dg_country` VALUES ('136', 'Mauritius', 'MU', 'MUS', '1');
INSERT INTO `dg_country` VALUES ('137', 'Mayotte', 'YT', 'MYT', '1');
INSERT INTO `dg_country` VALUES ('138', 'Mexico', 'MX', 'MEX', '1');
INSERT INTO `dg_country` VALUES ('139', 'Micronesia, Federated States of', 'FM', 'FSM', '1');
INSERT INTO `dg_country` VALUES ('140', 'Moldova, Republic of', 'MD', 'MDA', '1');
INSERT INTO `dg_country` VALUES ('141', 'Monaco', 'MC', 'MCO', '1');
INSERT INTO `dg_country` VALUES ('142', 'Mongolia', 'MN', 'MNG', '1');
INSERT INTO `dg_country` VALUES ('143', 'Montserrat', 'MS', 'MSR', '1');
INSERT INTO `dg_country` VALUES ('144', 'Morocco', 'MA', 'MAR', '1');
INSERT INTO `dg_country` VALUES ('145', 'Mozambique', 'MZ', 'MOZ', '1');
INSERT INTO `dg_country` VALUES ('146', 'Myanmar', 'MM', 'MMR', '1');
INSERT INTO `dg_country` VALUES ('147', 'Namibia', 'NA', 'NAM', '1');
INSERT INTO `dg_country` VALUES ('148', 'Nauru', 'NR', 'NRU', '1');
INSERT INTO `dg_country` VALUES ('149', 'Nepal', 'NP', 'NPL', '1');
INSERT INTO `dg_country` VALUES ('150', 'Netherlands', 'NL', 'NLD', '1');
INSERT INTO `dg_country` VALUES ('151', 'Netherlands Antilles', 'AN', 'ANT', '1');
INSERT INTO `dg_country` VALUES ('152', 'New Caledonia', 'NC', 'NCL', '1');
INSERT INTO `dg_country` VALUES ('153', 'New Zealand', 'NZ', 'NZL', '1');
INSERT INTO `dg_country` VALUES ('154', 'Nicaragua', 'NI', 'NIC', '1');
INSERT INTO `dg_country` VALUES ('155', 'Niger', 'NE', 'NER', '1');
INSERT INTO `dg_country` VALUES ('156', 'Nigeria', 'NG', 'NGA', '1');
INSERT INTO `dg_country` VALUES ('157', 'Niue', 'NU', 'NIU', '1');
INSERT INTO `dg_country` VALUES ('158', 'Norfolk Island', 'NF', 'NFK', '1');
INSERT INTO `dg_country` VALUES ('159', 'Northern Mariana Islands', 'MP', 'MNP', '1');
INSERT INTO `dg_country` VALUES ('160', 'Norway', 'NO', 'NOR', '1');
INSERT INTO `dg_country` VALUES ('161', 'Oman', 'OM', 'OMN', '1');
INSERT INTO `dg_country` VALUES ('162', 'Pakistan', 'PK', 'PAK', '1');
INSERT INTO `dg_country` VALUES ('163', 'Palau', 'PW', 'PLW', '1');
INSERT INTO `dg_country` VALUES ('164', 'Panama', 'PA', 'PAN', '1');
INSERT INTO `dg_country` VALUES ('165', 'Papua New Guinea', 'PG', 'PNG', '1');
INSERT INTO `dg_country` VALUES ('166', 'Paraguay', 'PY', 'PRY', '1');
INSERT INTO `dg_country` VALUES ('167', 'Peru', 'PE', 'PER', '1');
INSERT INTO `dg_country` VALUES ('168', 'Philippines', 'PH', 'PHL', '1');
INSERT INTO `dg_country` VALUES ('169', 'Pitcairn', 'PN', 'PCN', '1');
INSERT INTO `dg_country` VALUES ('170', 'Poland', 'PL', 'POL', '1');
INSERT INTO `dg_country` VALUES ('171', 'Portugal', 'PT', 'PRT', '1');
INSERT INTO `dg_country` VALUES ('172', 'Puerto Rico', 'PR', 'PRI', '1');
INSERT INTO `dg_country` VALUES ('173', 'Qatar', 'QA', 'QAT', '1');
INSERT INTO `dg_country` VALUES ('174', 'Reunion', 'RE', 'REU', '1');
INSERT INTO `dg_country` VALUES ('175', 'Romania', 'RO', 'ROM', '1');
INSERT INTO `dg_country` VALUES ('176', 'Russian Federation', 'RU', 'RUS', '1');
INSERT INTO `dg_country` VALUES ('177', 'Rwanda', 'RW', 'RWA', '1');
INSERT INTO `dg_country` VALUES ('178', 'Saint Kitts and Nevis', 'KN', 'KNA', '1');
INSERT INTO `dg_country` VALUES ('179', 'Saint Lucia', 'LC', 'LCA', '1');
INSERT INTO `dg_country` VALUES ('180', 'Saint Vincent and the Grenadines', 'VC', 'VCT', '1');
INSERT INTO `dg_country` VALUES ('181', 'Samoa', 'WS', 'WSM', '1');
INSERT INTO `dg_country` VALUES ('182', 'San Marino', 'SM', 'SMR', '1');
INSERT INTO `dg_country` VALUES ('183', 'Sao Tome and Principe', 'ST', 'STP', '1');
INSERT INTO `dg_country` VALUES ('184', 'Saudi Arabia', 'SA', 'SAU', '1');
INSERT INTO `dg_country` VALUES ('185', 'Senegal', 'SN', 'SEN', '1');
INSERT INTO `dg_country` VALUES ('186', 'Seychelles', 'SC', 'SYC', '1');
INSERT INTO `dg_country` VALUES ('187', 'Sierra Leone', 'SL', 'SLE', '1');
INSERT INTO `dg_country` VALUES ('188', 'Singapore', 'SG', 'SGP', '1');
INSERT INTO `dg_country` VALUES ('189', 'Slovak Republic', 'SK', 'SVK', '1');
INSERT INTO `dg_country` VALUES ('190', 'Slovenia', 'SI', 'SVN', '1');
INSERT INTO `dg_country` VALUES ('191', 'Solomon Islands', 'SB', 'SLB', '1');
INSERT INTO `dg_country` VALUES ('192', 'Somalia', 'SO', 'SOM', '1');
INSERT INTO `dg_country` VALUES ('193', 'South Africa', 'ZA', 'ZAF', '1');
INSERT INTO `dg_country` VALUES ('194', 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '1');
INSERT INTO `dg_country` VALUES ('195', 'Spain', 'ES', 'ESP', '1');
INSERT INTO `dg_country` VALUES ('196', 'Sri Lanka', 'LK', 'LKA', '1');
INSERT INTO `dg_country` VALUES ('197', 'St. Helena', 'SH', 'SHN', '1');
INSERT INTO `dg_country` VALUES ('198', 'St. Pierre and Miquelon', 'PM', 'SPM', '1');
INSERT INTO `dg_country` VALUES ('199', 'Sudan', 'SD', 'SDN', '1');
INSERT INTO `dg_country` VALUES ('200', 'Suriname', 'SR', 'SUR', '1');
INSERT INTO `dg_country` VALUES ('201', 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '1');
INSERT INTO `dg_country` VALUES ('202', 'Swaziland', 'SZ', 'SWZ', '1');
INSERT INTO `dg_country` VALUES ('203', 'Sweden', 'SE', 'SWE', '1');
INSERT INTO `dg_country` VALUES ('204', 'Switzerland', 'CH', 'CHE', '1');
INSERT INTO `dg_country` VALUES ('205', 'Syrian Arab Republic', 'SY', 'SYR', '1');
INSERT INTO `dg_country` VALUES ('206', 'Taiwan', 'TW', 'TWN', '1');
INSERT INTO `dg_country` VALUES ('207', 'Tajikistan', 'TJ', 'TJK', '1');
INSERT INTO `dg_country` VALUES ('208', 'Tanzania, United Republic of', 'TZ', 'TZA', '1');
INSERT INTO `dg_country` VALUES ('209', 'Thailand', 'TH', 'THA', '1');
INSERT INTO `dg_country` VALUES ('210', 'Togo', 'TG', 'TGO', '1');
INSERT INTO `dg_country` VALUES ('211', 'Tokelau', 'TK', 'TKL', '1');
INSERT INTO `dg_country` VALUES ('212', 'Tonga', 'TO', 'TON', '1');
INSERT INTO `dg_country` VALUES ('213', 'Trinidad and Tobago', 'TT', 'TTO', '1');
INSERT INTO `dg_country` VALUES ('214', 'Tunisia', 'TN', 'TUN', '1');
INSERT INTO `dg_country` VALUES ('215', 'Turkey', 'TR', 'TUR', '1');
INSERT INTO `dg_country` VALUES ('216', 'Turkmenistan', 'TM', 'TKM', '1');
INSERT INTO `dg_country` VALUES ('217', 'Turks and Caicos Islands', 'TC', 'TCA', '1');
INSERT INTO `dg_country` VALUES ('218', 'Tuvalu', 'TV', 'TUV', '1');
INSERT INTO `dg_country` VALUES ('219', 'Uganda', 'UG', 'UGA', '1');
INSERT INTO `dg_country` VALUES ('220', 'Ukraine', 'UA', 'UKR', '1');
INSERT INTO `dg_country` VALUES ('221', 'United Arab Emirates', 'AE', 'ARE', '1');
INSERT INTO `dg_country` VALUES ('222', 'United Kingdom', 'GB', 'GBR', '1');
INSERT INTO `dg_country` VALUES ('223', 'United States', 'US', 'USA', '1');
INSERT INTO `dg_country` VALUES ('224', 'United States Minor Outlying Islands', 'UM', 'UMI', '1');
INSERT INTO `dg_country` VALUES ('225', 'Uruguay', 'UY', 'URY', '1');
INSERT INTO `dg_country` VALUES ('226', 'Uzbekistan', 'UZ', 'UZB', '1');
INSERT INTO `dg_country` VALUES ('227', 'Vanuatu', 'VU', 'VUT', '1');
INSERT INTO `dg_country` VALUES ('228', 'Vatican City State (Holy See)', 'VA', 'VAT', '1');
INSERT INTO `dg_country` VALUES ('229', 'Venezuela', 'VE', 'VEN', '1');
INSERT INTO `dg_country` VALUES ('230', 'Viet Nam', 'VN', 'VNM', '1');
INSERT INTO `dg_country` VALUES ('231', 'Virgin Islands (British)', 'VG', 'VGB', '1');
INSERT INTO `dg_country` VALUES ('232', 'Virgin Islands (U.S.)', 'VI', 'VIR', '1');
INSERT INTO `dg_country` VALUES ('233', 'Wallis and Futuna Islands', 'WF', 'WLF', '1');
INSERT INTO `dg_country` VALUES ('234', 'Western Sahara', 'EH', 'ESH', '1');
INSERT INTO `dg_country` VALUES ('235', 'Yemen', 'YE', 'YEM', '1');
INSERT INTO `dg_country` VALUES ('237', 'Democratic Republic of Congo', 'CD', 'COD', '1');
INSERT INTO `dg_country` VALUES ('238', 'Zambia', 'ZM', 'ZMB', '1');
INSERT INTO `dg_country` VALUES ('239', 'Zimbabwe', 'ZW', 'ZWE', '1');
INSERT INTO `dg_country` VALUES ('240', 'Jersey', 'JE', 'JEY', '1');
INSERT INTO `dg_country` VALUES ('241', 'Guernsey', 'GG', 'GGY', '1');
INSERT INTO `dg_country` VALUES ('242', 'Montenegro', 'ME', 'MNE', '1');
INSERT INTO `dg_country` VALUES ('243', 'Serbia', 'RS', 'SRB', '1');
INSERT INTO `dg_country` VALUES ('244', 'Aaland Islands', 'AX', 'ALA', '1');
INSERT INTO `dg_country` VALUES ('245', 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '1');
INSERT INTO `dg_country` VALUES ('246', 'Curacao', 'CW', 'CUW', '1');
INSERT INTO `dg_country` VALUES ('247', 'Palestinian Territory, Occupied', 'PS', 'PSE', '1');
INSERT INTO `dg_country` VALUES ('248', 'South Sudan', 'SS', 'SSD', '1');
INSERT INTO `dg_country` VALUES ('249', 'St. Barthelemy', 'BL', 'BLM', '1');
INSERT INTO `dg_country` VALUES ('250', 'St. Martin (French part)', 'MF', 'MAF', '1');
INSERT INTO `dg_country` VALUES ('251', 'Canary Islands', 'IC', 'ICA', '1');

-- ----------------------------
-- Table structure for `dg_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `dg_coupon`;
CREATE TABLE `dg_coupon` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `value` float NOT NULL,
  `discount_type` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 't' COMMENT 't: total, p: Percent',
  `coupon_type` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'p' COMMENT 'p: Permanent Coupon, g: Gift Coupon',
  `minimum` float NOT NULL,
  `publish` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `count` int(5) NOT NULL DEFAULT '0',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_coupon
-- ----------------------------
INSERT INTO `dg_coupon` VALUES ('17', 'coupon', 'D8863821', '3', 'p', 'g', '150', '1', '0', '2014-11-07 00:00:00', '2015-02-26 00:00:00');
INSERT INTO `dg_coupon` VALUES ('18', 'coupon123', '1E7F63A1', '1', 't', 'g', '20', '1', '1', '2014-11-06 00:00:00', '2015-02-20 00:00:00');
INSERT INTO `dg_coupon` VALUES ('14', 'coupon', '13DE00564', '5.5', 't', 'g', '100', '1', '0', '2014-11-06 00:00:00', '2014-11-08 00:00:00');

-- ----------------------------
-- Table structure for `dg_currencies`
-- ----------------------------
DROP TABLE IF EXISTS `dg_currencies`;
CREATE TABLE `dg_currencies` (
  `currency_id` int(10) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(200) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_symbol` varchar(10) NOT NULL,
  `published` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_currencies
-- ----------------------------
INSERT INTO `dg_currencies` VALUES ('2', 'United Arab Emirates dirham', 'AED', 'Ø¯.Ø¥', '1');
INSERT INTO `dg_currencies` VALUES ('4', 'Albanian lek', 'ALL', 'Lek', '1');
INSERT INTO `dg_currencies` VALUES ('5', 'Netherlands Antillean gulden', 'ANG', 'Æ’', '1');
INSERT INTO `dg_currencies` VALUES ('7', 'Argentine peso', 'ARS', '$', '1');
INSERT INTO `dg_currencies` VALUES ('9', 'Australian dollar', 'AUD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('10', 'Aruban florin', 'AWG', 'Æ’', '1');
INSERT INTO `dg_currencies` VALUES ('11', 'Barbadian dollar', 'BBD', '', '1');
INSERT INTO `dg_currencies` VALUES ('12', 'Bangladeshi taka', 'BDT', 'à§³', '1');
INSERT INTO `dg_currencies` VALUES ('15', 'Bahraini dinar', 'BHD', 'Ø¨.Ø¯', '1');
INSERT INTO `dg_currencies` VALUES ('16', 'Burundian franc', 'BIF', 'Fr', '1');
INSERT INTO `dg_currencies` VALUES ('17', 'Bermudian dollar', 'BMD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('18', 'Brunei dollar', 'BND', '$', '1');
INSERT INTO `dg_currencies` VALUES ('19', 'Bolivian boliviano', 'BOB', '$b', '1');
INSERT INTO `dg_currencies` VALUES ('20', 'Brazilian real', 'BRL', 'R$', '1');
INSERT INTO `dg_currencies` VALUES ('21', 'Bahamian dollar', 'BSD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('22', 'Bhutanese ngultrum', 'BTN', 'BTN', '1');
INSERT INTO `dg_currencies` VALUES ('24', 'Botswana pula', 'BWP', 'P', '1');
INSERT INTO `dg_currencies` VALUES ('25', 'Belize dollar', 'BZD', 'BZ$', '1');
INSERT INTO `dg_currencies` VALUES ('26', 'Canadian dollar', 'CAD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('27', 'Swiss franc', 'CHF', 'CHF', '1');
INSERT INTO `dg_currencies` VALUES ('28', 'Unidad de Fomento', 'CLF', 'CLF', '1');
INSERT INTO `dg_currencies` VALUES ('29', 'Chilean peso', 'CLP', '$', '1');
INSERT INTO `dg_currencies` VALUES ('30', 'Chinese renminbi yuan', 'CNY', 'å…ƒ', '1');
INSERT INTO `dg_currencies` VALUES ('31', 'Colombian peso', 'COP', '$', '1');
INSERT INTO `dg_currencies` VALUES ('32', 'Costa Rican colÃ³n', 'CRC', 'â‚¡', '1');
INSERT INTO `dg_currencies` VALUES ('33', 'Czech koruna', 'CZK', 'KÄ', '1');
INSERT INTO `dg_currencies` VALUES ('34', 'Cuban peso', 'CUP', 'â‚±', '1');
INSERT INTO `dg_currencies` VALUES ('35', 'Cape Verdean escudo', 'CVE', '$', '1');
INSERT INTO `dg_currencies` VALUES ('40', 'Danish krone', 'DKK', 'kr', '1');
INSERT INTO `dg_currencies` VALUES ('41', 'Dominican peso', 'DOP', 'RD$', '1');
INSERT INTO `dg_currencies` VALUES ('42', 'Algerian dinar', 'DZD', 'Ø¯.Ø¬', '1');
INSERT INTO `dg_currencies` VALUES ('44', 'Egyptian pound', 'EGP', 'Â£', '1');
INSERT INTO `dg_currencies` VALUES ('46', 'Ethiopian birr', 'ETB', 'ETB', '1');
INSERT INTO `dg_currencies` VALUES ('47', 'Euro', 'EUR', 'â‚¬', '1');
INSERT INTO `dg_currencies` VALUES ('49', 'Fijian dollar', 'FJD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('50', 'Falkland pound', 'FKP', 'Â£', '1');
INSERT INTO `dg_currencies` VALUES ('52', 'British pound', 'GBP', 'Â£', '1');
INSERT INTO `dg_currencies` VALUES ('54', 'Gibraltar pound', 'GIP', 'Â£', '1');
INSERT INTO `dg_currencies` VALUES ('55', 'Gambian dalasi', 'GMD', 'D', '1');
INSERT INTO `dg_currencies` VALUES ('56', 'Guinean franc', 'GNF', 'Fr', '1');
INSERT INTO `dg_currencies` VALUES ('58', 'Guatemalan quetzal', 'GTQ', 'Q', '1');
INSERT INTO `dg_currencies` VALUES ('60', 'Guyanese dollar', 'GYD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('61', 'Hong Kong dollar', 'HKD', 'å…ƒ', '1');
INSERT INTO `dg_currencies` VALUES ('62', 'Honduran lempira', 'HNL', 'L', '1');
INSERT INTO `dg_currencies` VALUES ('63', 'Haitian gourde', 'HTG', 'G', '1');
INSERT INTO `dg_currencies` VALUES ('64', 'Hungarian forint', 'HUF', 'Ft', '1');
INSERT INTO `dg_currencies` VALUES ('65', 'Indonesian rupiah', 'IDR', 'Rp', '1');
INSERT INTO `dg_currencies` VALUES ('67', 'Israeli new sheqel', 'ILS', 'â‚ª', '1');
INSERT INTO `dg_currencies` VALUES ('68', 'Indian rupee', 'INR', 'â‚¨', '1');
INSERT INTO `dg_currencies` VALUES ('69', 'Iraqi dinar', 'IQD', 'Ø¹.Ø¯', '1');
INSERT INTO `dg_currencies` VALUES ('70', 'Iranian rial', 'IRR', 'ï·¼', '1');
INSERT INTO `dg_currencies` VALUES ('73', 'Jamaican dollar', 'JMD', 'J$', '1');
INSERT INTO `dg_currencies` VALUES ('74', 'Jordanian dinar', 'JOD', 'Ø¯.Ø§', '1');
INSERT INTO `dg_currencies` VALUES ('75', 'Japanese yen', 'JPY', 'Â¥', '1');
INSERT INTO `dg_currencies` VALUES ('76', 'Kenyan shilling', 'KES', 'Sh', '1');
INSERT INTO `dg_currencies` VALUES ('77', 'Cambodian riel', 'KHR', 'áŸ›', '1');
INSERT INTO `dg_currencies` VALUES ('78', 'Comorian franc', 'KMF', 'Fr', '1');
INSERT INTO `dg_currencies` VALUES ('79', 'North Korean won', 'KPW', 'â‚©', '1');
INSERT INTO `dg_currencies` VALUES ('80', 'South Korean won', 'KRW', 'â‚©', '1');
INSERT INTO `dg_currencies` VALUES ('81', 'Kuwaiti dinar', 'KWD', 'Ø¯.Ùƒ', '1');
INSERT INTO `dg_currencies` VALUES ('82', 'Cayman Islands dollar', 'KYD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('83', 'Lao kip', 'LAK', 'â‚­', '1');
INSERT INTO `dg_currencies` VALUES ('84', 'Lebanese pound', 'LBP', 'Â£', '1');
INSERT INTO `dg_currencies` VALUES ('85', 'Sri Lankan rupee', 'LKR', 'â‚¨', '1');
INSERT INTO `dg_currencies` VALUES ('86', 'Liberian dollar', 'LRD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('87', 'Lesotho loti', 'LSL', 'L', '1');
INSERT INTO `dg_currencies` VALUES ('89', 'Libyan dinar', 'LYD', 'Ù„.Ø¯', '1');
INSERT INTO `dg_currencies` VALUES ('90', 'Moroccan dirham', 'MAD', 'Ø¯.Ù….', '1');
INSERT INTO `dg_currencies` VALUES ('92', 'Mongolian tÃ¶grÃ¶g', 'MNT', 'â‚®', '1');
INSERT INTO `dg_currencies` VALUES ('93', 'Macanese pataca', 'MOP', 'P', '1');
INSERT INTO `dg_currencies` VALUES ('94', 'Mauritanian ouguiya', 'MRO', 'UM', '1');
INSERT INTO `dg_currencies` VALUES ('96', 'Mauritian rupee', 'MUR', 'â‚¨', '1');
INSERT INTO `dg_currencies` VALUES ('97', 'Maldivian rufiyaa', 'MVR', 'Þƒ.', '1');
INSERT INTO `dg_currencies` VALUES ('98', 'Malawian kwacha', 'MWK', 'MK', '1');
INSERT INTO `dg_currencies` VALUES ('100', 'Malaysian ringgit', 'MYR', 'RM', '1');
INSERT INTO `dg_currencies` VALUES ('102', 'Nigerian naira', 'NGN', 'â‚¦', '1');
INSERT INTO `dg_currencies` VALUES ('105', 'Norwegian krone', 'NOK', 'kr', '1');
INSERT INTO `dg_currencies` VALUES ('106', 'Nepalese rupee', 'NPR', 'â‚¨', '1');
INSERT INTO `dg_currencies` VALUES ('107', 'New Zealand dollar', 'NZD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('108', 'Omani rial', 'OMR', 'ï·¼', '1');
INSERT INTO `dg_currencies` VALUES ('109', 'Panamanian balboa', 'PAB', 'B/.', '1');
INSERT INTO `dg_currencies` VALUES ('110', 'Peruvian nuevo sol', 'PEN', 'S/.', '1');
INSERT INTO `dg_currencies` VALUES ('111', 'Papua New Guinean kina', 'PGK', 'K', '1');
INSERT INTO `dg_currencies` VALUES ('112', 'Philippine peso', 'PHP', 'â‚±', '1');
INSERT INTO `dg_currencies` VALUES ('113', 'Pakistani rupee', 'PKR', 'â‚¨', '1');
INSERT INTO `dg_currencies` VALUES ('114', 'Polish ZÅ‚oty', 'PLN', 'zÅ‚', '1');
INSERT INTO `dg_currencies` VALUES ('116', 'Paraguayan guaranÃ­', 'PYG', 'â‚²', '1');
INSERT INTO `dg_currencies` VALUES ('117', 'Qatari riyal', 'QAR', 'ï·¼', '1');
INSERT INTO `dg_currencies` VALUES ('118', 'Romanian leu', 'RON', 'lei', '1');
INSERT INTO `dg_currencies` VALUES ('119', 'Rwandan franc', 'RWF', 'Fr', '1');
INSERT INTO `dg_currencies` VALUES ('120', 'Saudi riyal', 'SAR', 'ï·¼', '1');
INSERT INTO `dg_currencies` VALUES ('121', 'Solomon Islands dollar', 'SBD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('122', 'Seychellois rupee', 'SCR', 'â‚¨', '1');
INSERT INTO `dg_currencies` VALUES ('124', 'Swedish krona', 'SEK', 'kr', '1');
INSERT INTO `dg_currencies` VALUES ('125', 'Singapore dollar', 'SGD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('126', 'Saint Helenian pound', 'SHP', 'Â£', '1');
INSERT INTO `dg_currencies` VALUES ('127', 'Sierra Leonean leone', 'SLL', 'Le', '1');
INSERT INTO `dg_currencies` VALUES ('128', 'Somali shilling', 'SOS', 'S', '1');
INSERT INTO `dg_currencies` VALUES ('130', 'SÃ£o TomÃ© and PrÃ­ncipe dobra', 'STD', 'Db', '1');
INSERT INTO `dg_currencies` VALUES ('131', 'Russian ruble', 'RUB', 'Ñ€ÑƒÐ±', '1');
INSERT INTO `dg_currencies` VALUES ('132', 'Salvadoran colÃ³n', 'SVC', '$', '1');
INSERT INTO `dg_currencies` VALUES ('133', 'Syrian pound', 'SYP', 'Â£', '1');
INSERT INTO `dg_currencies` VALUES ('134', 'Swazi lilangeni', 'SZL', 'L', '1');
INSERT INTO `dg_currencies` VALUES ('135', 'Thai baht', 'THB', 'à¸¿', '1');
INSERT INTO `dg_currencies` VALUES ('136', 'Tunisian dinar', 'TND', 'Ø¯.Øª', '1');
INSERT INTO `dg_currencies` VALUES ('137', 'Tongan paÊ»anga', 'TOP', 'T$', '1');
INSERT INTO `dg_currencies` VALUES ('139', 'Turkish new lira', 'TRY', 'YTL', '1');
INSERT INTO `dg_currencies` VALUES ('140', 'Trinidad and Tobago dollar', 'TTD', 'TT$', '1');
INSERT INTO `dg_currencies` VALUES ('141', 'New Taiwan dollar', 'TWD', 'NT$', '1');
INSERT INTO `dg_currencies` VALUES ('142', 'Tanzanian shilling', 'TZS', 'Sh', '1');
INSERT INTO `dg_currencies` VALUES ('144', 'United States dollar', 'USD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('147', 'Vietnamese Dong', 'VND', 'â‚«', '1');
INSERT INTO `dg_currencies` VALUES ('148', 'Vanuatu vatu', 'VUV', 'Vt', '1');
INSERT INTO `dg_currencies` VALUES ('149', 'Samoan tala', 'WST', 'T', '1');
INSERT INTO `dg_currencies` VALUES ('151', 'Yemeni rial', 'YER', 'ï·¼', '1');
INSERT INTO `dg_currencies` VALUES ('152', 'Serbian dinar', 'RSD', 'Ð”Ð¸Ð½.', '1');
INSERT INTO `dg_currencies` VALUES ('153', 'South African rand', 'ZAR', 'R', '1');
INSERT INTO `dg_currencies` VALUES ('154', 'Zambian kwacha', 'ZMK', 'ZK', '1');
INSERT INTO `dg_currencies` VALUES ('156', 'Zimbabwean dollar', 'ZWD', 'Z$', '1');
INSERT INTO `dg_currencies` VALUES ('158', 'Armenian dram', 'AMD', 'Õ¤Ö€.', '1');
INSERT INTO `dg_currencies` VALUES ('159', 'Myanmar kyat', 'MMK', 'K', '1');
INSERT INTO `dg_currencies` VALUES ('160', 'Croatian kuna', 'HRK', 'kn', '1');
INSERT INTO `dg_currencies` VALUES ('161', 'Eritrean nakfa', 'ERN', 'Nfk', '1');
INSERT INTO `dg_currencies` VALUES ('162', 'Djiboutian franc', 'DJF', 'Fr', '1');
INSERT INTO `dg_currencies` VALUES ('163', 'Icelandic krÃ³na', 'ISK', 'kr', '1');
INSERT INTO `dg_currencies` VALUES ('164', 'Kazakhstani tenge', 'KZT', 'Ð»Ð²', '1');
INSERT INTO `dg_currencies` VALUES ('165', 'Kyrgyzstani som', 'KGS', 'Ð»Ð²', '1');
INSERT INTO `dg_currencies` VALUES ('166', 'Latvian lats', 'LVL', 'Ls', '1');
INSERT INTO `dg_currencies` VALUES ('167', 'Lithuanian litas', 'LTL', 'Lt', '1');
INSERT INTO `dg_currencies` VALUES ('168', 'Mexican peso', 'MXN', '$', '1');
INSERT INTO `dg_currencies` VALUES ('169', 'Moldovan leu', 'MDL', 'L', '1');
INSERT INTO `dg_currencies` VALUES ('170', 'Namibian dollar', 'NAD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('171', 'Nicaraguan cÃ³rdoba', 'NIO', 'C$', '1');
INSERT INTO `dg_currencies` VALUES ('172', 'Ugandan shilling', 'UGX', 'Sh', '1');
INSERT INTO `dg_currencies` VALUES ('173', 'Macedonian denar', 'MKD', 'Ð´ÐµÐ½', '1');
INSERT INTO `dg_currencies` VALUES ('174', 'Uruguayan peso', 'UYU', '$', '1');
INSERT INTO `dg_currencies` VALUES ('175', 'Uzbekistani som', 'UZS', 'Ð»Ð²', '1');
INSERT INTO `dg_currencies` VALUES ('176', 'Azerbaijani manat', 'AZN', 'Ð¼Ð°Ð½', '1');
INSERT INTO `dg_currencies` VALUES ('177', 'Ghanaian cedi', 'GHS', 'â‚µ', '1');
INSERT INTO `dg_currencies` VALUES ('178', 'Venezuelan bolÃ­var', 'VEF', 'Bs', '1');
INSERT INTO `dg_currencies` VALUES ('179', 'Sudanese pound', 'SDG', 'Â£', '1');
INSERT INTO `dg_currencies` VALUES ('180', 'Uruguay Peso', 'UYI', 'UYI', '1');
INSERT INTO `dg_currencies` VALUES ('181', 'Mozambican metical', 'MZN', 'MT', '1');
INSERT INTO `dg_currencies` VALUES ('182', 'WIR Euro', 'CHE', 'â‚¬', '1');
INSERT INTO `dg_currencies` VALUES ('183', 'WIR Franc', 'CHW', 'CHW', '1');
INSERT INTO `dg_currencies` VALUES ('184', 'Central African CFA franc', 'XAF', 'Fr', '1');
INSERT INTO `dg_currencies` VALUES ('185', 'East Caribbean dollar', 'XCD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('186', 'West African CFA franc', 'XOF', 'Fr', '1');
INSERT INTO `dg_currencies` VALUES ('187', 'CFP franc', 'XPF', 'Fr', '1');
INSERT INTO `dg_currencies` VALUES ('188', 'Surinamese dollar', 'SRD', '$', '1');
INSERT INTO `dg_currencies` VALUES ('189', 'Malagasy ariary', 'MGA', 'MGA', '1');
INSERT INTO `dg_currencies` VALUES ('190', 'Unidad de Valor Real', 'COU', 'COU', '1');
INSERT INTO `dg_currencies` VALUES ('191', 'Afghan afghani', 'AFN', 'Ø‹', '1');
INSERT INTO `dg_currencies` VALUES ('192', 'Tajikistani somoni', 'TJS', 'Ð…Ðœ', '1');
INSERT INTO `dg_currencies` VALUES ('193', 'Angolan kwanza', 'AOA', 'Kz', '1');
INSERT INTO `dg_currencies` VALUES ('194', 'Belarusian ruble', 'BYR', 'p.', '1');
INSERT INTO `dg_currencies` VALUES ('195', 'Bulgarian lev', 'BGN', 'Ð»Ð²', '1');
INSERT INTO `dg_currencies` VALUES ('196', 'Congolese franc', 'CDF', 'Fr', '1');
INSERT INTO `dg_currencies` VALUES ('197', 'Bosnia and Herzegovina convert', 'BAM', 'KM', '1');
INSERT INTO `dg_currencies` VALUES ('198', 'Mexican Unid', 'MXV', 'MXV', '1');
INSERT INTO `dg_currencies` VALUES ('199', 'Ukrainian hryvnia', 'UAH', 'â‚´', '1');
INSERT INTO `dg_currencies` VALUES ('200', 'Georgian lari', 'GEL', 'áƒš', '1');
INSERT INTO `dg_currencies` VALUES ('201', 'Mvdol', 'BOV', 'BOV', '1');

-- ----------------------------
-- Table structure for `dg_custom_fields`
-- ----------------------------
DROP TABLE IF EXISTS `dg_custom_fields`;
CREATE TABLE `dg_custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `validate` varchar(1) NOT NULL DEFAULT '0',
  `publish` varchar(1) NOT NULL,
  `edit` varchar(1) NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `forms` text NOT NULL,
  `order` int(10) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_custom_fields
-- ----------------------------
INSERT INTO `dg_custom_fields` VALUES ('12', 'last_name', 'Last Name', 'text', '1', '1', '1', '', '[\"checkout\"]', '1', '{\"style\":\"\"}');
INSERT INTO `dg_custom_fields` VALUES ('14', 'phone', 'Phone', 'text', '0', '1', '1', '', '[\"contact\"]', '0', '{\"style\":\"\"}');
INSERT INTO `dg_custom_fields` VALUES ('15', 'first_name', 'First Name', 'text', '1', '1', '1', '', '[\"checkout\"]', '0', '{\"style\":\"\"}');
INSERT INTO `dg_custom_fields` VALUES ('16', 'company', 'Company', 'text', '0', '1', '1', '', '[\"checkout\"]', '2', '{\"style\":\"\"}');
INSERT INTO `dg_custom_fields` VALUES ('17', 'zipcode', 'Zip/Postal Code', 'text', '1', '1', '1', '', '[\"checkout\"]', '7', '{\"style\":\"\"}');
INSERT INTO `dg_custom_fields` VALUES ('18', 'telephone', 'Telephone', 'text', '1', '1', '1', '', '[\"checkout\"]', '6', '{\"style\":\"\"}');
INSERT INTO `dg_custom_fields` VALUES ('19', 'country', 'Country', 'country', '1', '1', '1', '', '[\"checkout\"]', '4', '{\"style\":\"\"}');
INSERT INTO `dg_custom_fields` VALUES ('20', 'state', 'State/Province', 'state', '1', '1', '1', '', '[\"checkout\"]', '5', '{\"style\":\"\"}');
INSERT INTO `dg_custom_fields` VALUES ('21', 'address', 'Address', 'text', '1', '1', '1', '', '[\"checkout\"]', '3', '{\"style\":\"\"}');

-- ----------------------------
-- Table structure for `dg_design_idea`
-- ----------------------------
DROP TABLE IF EXISTS `dg_design_idea`;
CREATE TABLE `dg_design_idea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `design_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_design_idea
-- ----------------------------
INSERT INTO `dg_design_idea` VALUES ('1', 'testing abc', 'asdf', 'asdfsdf', 'media/assets/system/2015/02/front_1423393058.png', '34', '52', '1', '2015-02-15 04:19:42', 'asdf', 'asdf', 'asdfsdf');

-- ----------------------------
-- Table structure for `dg_fields_value`
-- ----------------------------
DROP TABLE IF EXISTS `dg_fields_value`;
CREATE TABLE `dg_fields_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `form_field` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `object` varchar(200) NOT NULL COMMENT 'user_id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_fields_value
-- ----------------------------
INSERT INTO `dg_fields_value` VALUES ('1', '15', 'checkout', 'Cao', '2');
INSERT INTO `dg_fields_value` VALUES ('2', '12', 'checkout', 'Van-Toai', '2');
INSERT INTO `dg_fields_value` VALUES ('3', '16', 'checkout', 'PVAC', '2');
INSERT INTO `dg_fields_value` VALUES ('4', '21', 'checkout', 'Phan Van Han, Binh Thanh, Ho Chi Minh, Viet Nam', '2');
INSERT INTO `dg_fields_value` VALUES ('5', '19', 'checkout', '230', '2');
INSERT INTO `dg_fields_value` VALUES ('6', '20', 'checkout', '0', '2');
INSERT INTO `dg_fields_value` VALUES ('7', '18', 'checkout', '+84919068986', '2');
INSERT INTO `dg_fields_value` VALUES ('8', '17', 'checkout', '70000', '2');
INSERT INTO `dg_fields_value` VALUES ('9', '15', 'checkout', 'thanh', '1');
INSERT INTO `dg_fields_value` VALUES ('10', '12', 'checkout', 'tran', '1');
INSERT INTO `dg_fields_value` VALUES ('11', '16', 'checkout', '', '1');
INSERT INTO `dg_fields_value` VALUES ('12', '21', 'checkout', '233 oigijf', '1');
INSERT INTO `dg_fields_value` VALUES ('13', '19', 'checkout', '230', '1');
INSERT INTO `dg_fields_value` VALUES ('14', '20', 'checkout', '3780', '1');
INSERT INTO `dg_fields_value` VALUES ('15', '18', 'checkout', '1213124124', '1');
INSERT INTO `dg_fields_value` VALUES ('16', '17', 'checkout', '700000', '1');

-- ----------------------------
-- Table structure for `dg_fonts`
-- ----------------------------
DROP TABLE IF EXISTS `dg_fonts`;
CREATE TABLE `dg_fonts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'google',
  `subtitle` varchar(200) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `path` varchar(250) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `published` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_fonts
-- ----------------------------
INSERT INTO `dg_fonts` VALUES ('7', 'anton', '', 'anton', '{\"woff\":\"anton.woff\",\"ttf\":\"Anton.ttf\"}', 'media\\fonts', 'Anton.png', '39', '1');
INSERT INTO `dg_fonts` VALUES ('8', 'Adamina', 'google', 'Adamina', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('9', 'Alike Angular', 'google', 'Alike Angular', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('10', 'Actor', 'google', 'Actor', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('11', 'ABeeZee', 'google', 'ABeeZee', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('12', 'ABeeZee', 'google', 'ABeeZee', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('13', 'Aguafina Script', 'google', 'Aguafina Script', '', '', '', '40', '1');
INSERT INTO `dg_fonts` VALUES ('14', 'Akronim', 'google', 'Akronim', '', '', '', '40', '1');
INSERT INTO `dg_fonts` VALUES ('15', 'Alex Brush', 'google', 'Alex Brush', '', '', '', '40', '1');
INSERT INTO `dg_fonts` VALUES ('16', 'Abel', 'google', 'Abel', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('17', 'Alef', 'google', 'Alef', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('18', 'Allan', 'google', 'Allan', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('19', 'Advent Pro', 'google', 'Advent Pro', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('20', 'Alike', 'google', 'Alike', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('21', 'Amarante', 'google', 'Amarante', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('22', 'Andika', 'google', 'Andika', '', '', '', '39', '1');
INSERT INTO `dg_fonts` VALUES ('23', 'Annie Use Your Telescope', 'google', 'Annie Use Your Telescope', '', '', '', '40', '1');
INSERT INTO `dg_fonts` VALUES ('24', 'Amatic SC', 'google', 'Amatic SC', '', '', '', '40', '1');
INSERT INTO `dg_fonts` VALUES ('25', 'Allura', 'google', 'Allura', '', '', '', '40', '1');
INSERT INTO `dg_fonts` VALUES ('26', 'Almendra Display', 'google', 'Almendra Display', '', '', '', '40', '1');

-- ----------------------------
-- Table structure for `dg_layout`
-- ----------------------------
DROP TABLE IF EXISTS `dg_layout`;
CREATE TABLE `dg_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `published` int(1) NOT NULL DEFAULT '1',
  `default` int(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_layout
-- ----------------------------
INSERT INTO `dg_layout` VALUES ('7', 'Product Categories', 'categories/default', '<div class=\"row-elment col-md-12 module-54fc2831f2ef1 \" data-id=\"152\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"module-margin module-categories54fbfefd6c4bd\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:p_categories/index,146}</div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"module-margin module-categories\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:categories}</div></div></div></div></div></div></div></div><style>{module:row/index,152}</style></div><div class=\"row-elment col-md-12 module-54fe5d3e99f3f \" data-id=\"169\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:c_categories/index,74}</div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c3449a79236\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:a_categories/index,73}</div></div></div></div></div></div></div></div><style>{module:row/index,169}</style></div><div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"></div></div></div><div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"></div></div></div>', '<div class=\"row-elment col-md-12 module-54fc2831f2ef1 \" data-id=\"152\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-row btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.row.config(this, \'row\')\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.row.layout(this)\" href=\"javascript:void(0)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a onclick=\"grid.row.add(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a onclick=\"grid.row.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54fbfefd6c4bd\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;p_categories&quot;, 146, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:p_categories/index,146}</div><div class=\"js-elment module-info\"><strong>p_categories: Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:categories}</div><div class=\"js-elment module-info\"><strong>Page: categories - Product Categories</strong></div></div></div></div></div></div></div></div><style>{module:row/index,152}</style></div><div class=\"row-elment col-md-12 module-54fe5d3e99f3f \" data-id=\"169\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-row btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.row.config(this, \'row\')\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.row.layout(this)\" href=\"javascript:void(0)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a onclick=\"grid.row.add(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a onclick=\"grid.row.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.config(this)\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;c_categories&quot;, 74, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:c_categories/index,74}</div><div class=\"js-elment module-info\"><strong>c_categories: Design Idea Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.config(this)\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c3449a79236\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;a_categories&quot;, 73, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:a_categories/index,73}</div><div class=\"js-elment module-info\"><strong>a_categories: Blog Categories</strong></div></div></div></div></div></div></div></div><style>{module:row/index,169}</style></div><div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-row btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.row.config(this, \'row\')\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.row.layout(this)\" href=\"javascript:void(0)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a onclick=\"grid.row.add(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a onclick=\"grid.row.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"></div></div></div><div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-row btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.row.config(this, \'row\')\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.row.layout(this)\" href=\"javascript:void(0)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a onclick=\"grid.row.add(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a onclick=\"grid.row.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"></div></div></div>', 'Product Categories', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('9', 'Product Detai', 'product/default', '<div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-product\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:product}</div></div></div></div></div></div></div></div></div><div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"></div></div></div>', '<div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-row btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.row.config(this, \'row\')\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.row.layout(this)\" href=\"javascript:void(0)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a onclick=\"grid.row.add(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a onclick=\"grid.row.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.config(this)\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-product\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:product}</div><div class=\"js-elment module-info\"><strong>Page: product - Product detail</strong></div></div></div></div></div></div></div></div></div><div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-row btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.row.config(this, \'row\')\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.row.layout(this)\" href=\"javascript:void(0)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a onclick=\"grid.row.add(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a onclick=\"grid.row.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"></div></div></div>', 'Product Detai', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('10', '404', '404/404', '<div data-id=\"162\" class=\"row-elment col-md-12 module-54fd66c306d8d \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-custom54fbcccce93f2\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_custom/index,135}</div></div></div></div></div></div></div></div><style>{module:row/index,162}</style></div><div data-id=\"164\" class=\"row-elment col-md-12 module-54fd66cb22d17 \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"></div><div class=\"col-elment col-md-6\"><div class=\"module-margin module-search54fd23fb84cbe\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_search/index,163}</div></div></div></div></div></div><div class=\"col-elment col-md-3\"></div></div></div><style>{module:row/index,164}</style></div>', '<div data-id=\"162\" class=\"row-elment col-md-12 module-54fd66c306d8d \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-custom54fbcccce93f2\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;m_custom&quot;, 135, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_custom/index,135}</div><div class=\"js-elment module-info\"><strong>m_custom: 404</strong></div></div></div></div></div></div></div></div><style>{module:row/index,162}</style></div><div data-id=\"164\" class=\"row-elment col-md-12 module-54fd66cb22d17 \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-search54fd23fb84cbe\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;m_search&quot;, 163, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_search/index,163}</div><div class=\"js-elment module-info\"><strong>m_search: search_404</strong></div></div></div></div></div></div><div class=\"col-elment col-md-3\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div></div></div></div><style>{module:row/index,164}</style></div>', 'Page Not Found', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('12', 'Design Tool', 'design/default', '<div data-id=\"53\" class=\"row-elment col-md-12 module-54fd29141df7f full-width\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-design\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:design}</div></div></div></div></div></div></div></div><style>{module:row/index,53}</style></div>', '<div data-id=\"53\" class=\"row-elment col-md-12 module-54fd29141df7f full-width\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-design\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.view(this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:design}</div><div class=\"js-elment module-info\"><strong>Page: design - Design tool</strong></div></div></div></div></div></div></div></div><style>{module:row/index,53}</style></div>', 'Design Tool', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('14', 'User login', 'user/login', '<div data-id=\"155\" class=\"row-elment col-md-12 module-54fc99d05d2af \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"module-margin module-categories54fbfefd6c4bd\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:p_categories/index,146}</div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"module-margin module-user\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:user}</div></div></div></div></div></div></div></div><style>{module:row/index,155}</style></div><div data-id=\"157\" class=\"row-elment col-md-12 module-54fc99dcc8733 \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c3449a79236\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:a_categories/index,73}</div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:c_categories/index,74}</div></div></div></div></div></div></div></div><style>{module:row/index,157}</style></div>', '<div data-id=\"155\" class=\"row-elment col-md-12 module-54fc99d05d2af \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54fbfefd6c4bd\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;p_categories&quot;, 146, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:p_categories/index,146}</div><div class=\"js-elment module-info\"><strong>p_categories: Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-user\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.view(this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:user}</div><div class=\"js-elment module-info\"><strong>Page: user - Login, register, Order history, saved design</strong></div></div></div></div></div></div></div></div><style>{module:row/index,155}</style></div><div data-id=\"157\" class=\"row-elment col-md-12 module-54fc99dcc8733 \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c3449a79236\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;a_categories&quot;, 73, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:a_categories/index,73}</div><div class=\"js-elment module-info\"><strong>a_categories: Blog Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;c_categories&quot;, 74, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:c_categories/index,74}</div><div class=\"js-elment module-info\"><strong>c_categories: Design Idea Categories</strong></div></div></div></div></div></div></div></div><style>{module:row/index,157}</style></div>', 'Login page', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('15', 'register', 'user/register', '<div data-id=\"156\" class=\"row-elment col-md-12 module-54fc9af0f2a74 \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"module-margin module-categories54fbfefd6c4bd\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:p_categories/index,146}</div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"module-margin module-user\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:user}</div></div></div></div></div></div></div></div><style>{module:row/index,156}</style></div><div data-id=\"158\" class=\"row-elment col-md-12 module-54fc9ae32c055 \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c3449a79236\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:a_categories/index,73}</div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:c_categories/index,74}</div></div></div></div></div></div></div></div><style>{module:row/index,158}</style></div>', '<div data-id=\"156\" class=\"row-elment col-md-12 module-54fc9af0f2a74 \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54fbfefd6c4bd\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;p_categories&quot;, 146, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:p_categories/index,146}</div><div class=\"js-elment module-info\"><strong>p_categories: Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-user\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.view(this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:user}</div><div class=\"js-elment module-info\"><strong>Page: user - Login, register, Order history, saved design</strong></div></div></div></div></div></div></div></div><style>{module:row/index,156}</style></div><div data-id=\"158\" class=\"row-elment col-md-12 module-54fc9ae32c055 \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c3449a79236\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;a_categories&quot;, 73, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:a_categories/index,73}</div><div class=\"js-elment module-info\"><strong>a_categories: Blog Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;c_categories&quot;, 74, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:c_categories/index,74}</div><div class=\"js-elment module-info\"><strong>c_categories: Design Idea Categories</strong></div></div></div></div></div></div></div></div><style>{module:row/index,158}</style></div>', 'register', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('16', 'Blog category', 'blog/category', '<div data-id=\"167\" class=\"row-elment col-md-12 module-54fe9e4208b69 \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-categories54fc25bbaf160\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:a_categories/index,149}</div></div></div></div></div></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-most_article54cc36f982d9e\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:most_article/index,92}</div></div></div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"module-margin module-blog\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:blog}</div></div></div></div></div></div></div></div><style>{module:row/index,167}</style></div><div data-id=\"166\" class=\"row-elment col-md-12 module-54fe5255ee20c \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c312d45bb90\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:p_categories/index,70}</div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:c_categories/index,74}</div></div></div></div></div></div></div></div><style>{module:row/index,166}</style></div>', '<div data-id=\"167\" class=\"row-elment col-md-12 module-54fe9e4208b69 \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-categories54fc25bbaf160\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;a_categories&quot;, 149, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:a_categories/index,149}</div><div class=\"js-elment module-info\"><strong>a_categories: Categories</strong></div></div></div></div></div></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-most_article54cc36f982d9e\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;most_article&quot;, 92, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:most_article/index,92}</div><div class=\"js-elment module-info\"><strong>most_article: most article</strong></div></div></div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-blog\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.view(this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:blog}</div><div class=\"js-elment module-info\"><strong>Page: blog - Blog category, post detail</strong></div></div></div></div></div></div></div></div><style>{module:row/index,167}</style></div><div data-id=\"166\" class=\"row-elment col-md-12 module-54fe5255ee20c \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c312d45bb90\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;p_categories&quot;, 70, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:p_categories/index,70}</div><div class=\"js-elment module-info\"><strong>p_categories: Product Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;c_categories&quot;, 74, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:c_categories/index,74}</div><div class=\"js-elment module-info\"><strong>c_categories: Design Idea Categories</strong></div></div></div></div></div></div></div></div><style>{module:row/index,166}</style></div>', 'Blog category', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('17', 'Blog post', 'blog/post', '<div data-id=\"150\" class=\"row-elment col-md-12 module-54fc25dad3584 \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-categories54fc25bbaf160\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:a_categories/index,149}</div></div></div></div></div></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-lastest_article54fc264d06fc8\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:lastest_article/index,151}</div></div></div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"module-margin module-blog\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:blog}</div></div></div></div></div></div></div></div><style>{module:row/index,150}</style></div>', '<div data-id=\"150\" class=\"row-elment col-md-12 module-54fc25dad3584 \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-categories54fc25bbaf160\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;a_categories&quot;, 149, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:a_categories/index,149}</div><div class=\"js-elment module-info\"><strong>a_categories: Categories</strong></div></div></div></div></div></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-lastest_article54fc264d06fc8\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;lastest_article&quot;, 151, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:lastest_article/index,151}</div><div class=\"js-elment module-info\"><strong>lastest_article: Lastest Article</strong></div></div></div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-blog\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.view(this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:blog}</div><div class=\"js-elment module-info\"><strong>Page: blog - Blog category, post detail</strong></div></div></div></div></div></div></div></div><style>{module:row/index,150}</style></div>', 'Blog post', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('20', 'Product Category T-Shirt', 'categories/default', '<div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-categories\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:categories}</div></div></div></div></div></div></div></div></div>', '<div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:categories}</div><div class=\"js-elment module-info\"><strong>Page: categories - Product Categories</strong></div></div></div></div></div></div></div></div></div>', 'Product Category T-Shirt', '1', '0', '');
INSERT INTO `dg_layout` VALUES ('21', 'Shopping cart', 'cart/cart', '<div data-id=\"165\" class=\"row-elment col-md-12 module-54fd65d3136eb \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-cart\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:cart}</div></div></div></div></div></div></div></div><style>{module:row/index,165}</style></div><div data-id=\"159\" class=\"row-elment col-md-12 module-54fcfea2bd7f3 \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c312d45bb90\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:p_categories/index,70}</div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:c_categories/index,74}</div></div></div></div></div></div></div></div><style>{module:row/index,159}</style></div>', '<div data-id=\"165\" class=\"row-elment col-md-12 module-54fd65d3136eb \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-cart\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:cart}</div><div class=\"js-elment module-info\"><strong>Page: cart - Show cart, checkout page</strong></div></div></div></div></div></div></div></div><style>{module:row/index,165}</style></div><div data-id=\"159\" class=\"row-elment col-md-12 module-54fcfea2bd7f3 \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c312d45bb90\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;p_categories&quot;, 70, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:p_categories/index,70}</div><div class=\"js-elment module-info\"><strong>p_categories: Product Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;c_categories&quot;, 74, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:c_categories/index,74}</div><div class=\"js-elment module-info\"><strong>c_categories: Design Idea Categories</strong></div></div></div></div></div></div></div></div><style>{module:row/index,159}</style></div>', 'Shopping cart', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('22', 'Checkout', 'cart/checkout', '<div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-cart\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:cart}</div></div></div></div></div></div></div></div></div>', '<div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-cart\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:cart}</div><div class=\"js-elment module-info\"><strong>Page: cart - Show cart, checkout page</strong></div></div></div></div></div></div></div></div></div>', 'Checkout', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('23', 'Home Page', 'home/default', '<div class=\"row-elment col-md-12 module-54fd1db5ac780 \" data-id=\"101\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-banner54d82fca30d57\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:banner/index,14}</div></div></div></div></div></div></div></div><style>{module:row/index,101}</style></div><div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-m_product54c61a99ed03a\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_product/index,81}</div></div></div></div></div></div></div></div></div><div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-m_home_hilight565fe608a369d\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_home_hilight/index,175}</div></div></div></div></div></div></div></div></div><div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"></div></div></div>', '<div class=\"row-elment col-md-12 module-54fd1db5ac780 \" data-id=\"101\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-row btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.row.config(this, \'row\')\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.row.layout(this)\" href=\"javascript:void(0)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a onclick=\"grid.row.add(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a onclick=\"grid.row.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.config(this)\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-banner54d82fca30d57\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;banner&quot;, 14, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:banner/index,14}</div><div class=\"js-elment module-info\"><strong>banner: Home page</strong></div></div></div></div></div></div></div></div><style>{module:row/index,101}</style></div><div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-row btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.row.config(this, \'row\')\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.row.layout(this)\" href=\"javascript:void(0)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a onclick=\"grid.row.add(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a onclick=\"grid.row.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.config(this)\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-m_product54c61a99ed03a\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;m_product&quot;, 81, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_product/index,81}</div><div class=\"js-elment module-info\"><strong>m_product: Featured Products</strong></div></div></div></div></div></div></div></div></div><div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-row btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.row.config(this, \'row\')\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.row.layout(this)\" href=\"javascript:void(0)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a onclick=\"grid.row.add(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a onclick=\"grid.row.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.config(this)\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-m_home_hilight565fe608a369d\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;m_home_hilight&quot;, 175, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_home_hilight/index,175}</div><div class=\"js-elment module-info\"><strong>m_home_hilight: Test</strong></div></div></div></div></div></div></div></div></div><div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"></div></div></div>', 'Home Page', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('25', 'design idea - home page', 'idea/categories', '<div data-id=\"153\" class=\"row-elment col-md-12 module-54fc28a6dacdf \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"module-margin module-categories54fc1bdcab3b2\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:c_categories/index,147}</div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"module-margin module-idea\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:idea}</div></div></div></div></div></div></div></div><style>{module:row/index,153}</style></div><div data-id=\"168\" class=\"row-elment col-md-12 module-54fe5d22d501c \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c312d45bb90\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:p_categories/index,70}</div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c3449a79236\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:a_categories/index,73}</div></div></div></div></div></div></div></div><style>{module:row/index,168}</style></div>', '<div data-id=\"153\" class=\"row-elment col-md-12 module-54fc28a6dacdf \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54fc1bdcab3b2\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;c_categories&quot;, 147, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:c_categories/index,147}</div><div class=\"js-elment module-info\"><strong>c_categories: Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-idea\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.view(this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:idea}</div><div class=\"js-elment module-info\"><strong>Page: idea - Design ideas</strong></div></div></div></div></div></div></div></div><style>{module:row/index,153}</style></div><div data-id=\"168\" class=\"row-elment col-md-12 module-54fe5d22d501c \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c312d45bb90\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;p_categories&quot;, 70, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:p_categories/index,70}</div><div class=\"js-elment module-info\"><strong>p_categories: Product Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c3449a79236\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;a_categories&quot;, 73, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:a_categories/index,73}</div><div class=\"js-elment module-info\"><strong>a_categories: Blog Categories</strong></div></div></div></div></div></div></div></div><style>{module:row/index,168}</style></div>', 'design idea - home page', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('26', 'Search', 'search/all', '<div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-search\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:search}</div></div></div></div></div></div></div></div></div>', '<div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-search\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.view(this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:search}</div><div class=\"js-elment module-info\"><strong>Page: search - Search product, design idea, post</strong></div></div></div></div></div></div></div></div></div>', 'Search products, design idea, blog', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('27', 'Header', 'components/head', '<div class=\"row-elment col-md-12 module-565f1fdc71630 \" data-id=\"97\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-8\"><div class=\"module-margin module-custom565ebe4cb514b\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_custom/index,172}</div></div></div></div></div></div><div class=\"col-elment col-md-2\"><div class=\"module-margin module-login54cdff6b4efca\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:login/index,94}</div></div></div></div></div></div><div class=\"col-elment col-md-2\"><div class=\"module-margin module-m_cart54c454683b57e\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_cart/index,76}</div></div></div></div></div></div></div></div><style>{module:row/index,97}</style></div><div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-4\"><div class=\"module-margin module-image54b4cc3011da5\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:image/index,45}</div></div></div></div></div></div><div class=\"col-elment col-md-8\"><div class=\"module-margin module-menu54c59e0b857d2\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:menu/index,77}</div></div></div></div></div></div></div></div></div>', '<div class=\"row-elment col-md-12 module-565f1fdc71630 \" data-id=\"97\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-row btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.row.config(this, \'row\')\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.row.layout(this)\" href=\"javascript:void(0)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a onclick=\"grid.row.add(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a onclick=\"grid.row.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-8\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.config(this)\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-custom565ebe4cb514b\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\'grid.module.setting(\"m_custom\", 172, this)\'><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_custom/index,172}</div><div class=\"js-elment module-info\"><strong>m_custom: headert1</strong></div></div></div></div></div></div><div class=\"col-elment col-md-2\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.config(this)\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-login54cdff6b4efca\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\'grid.module.setting(\"login\", 94, this)\'><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:login/index,94}</div><div class=\"js-elment module-info\"><strong>login: login</strong></div></div></div></div></div></div><div class=\"col-elment col-md-2\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.config(this)\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-m_cart54c454683b57e\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\'grid.module.setting(\"m_cart\", 76, this)\'><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_cart/index,76}</div><div class=\"js-elment module-info\"><strong>m_cart: cart</strong></div></div></div></div></div></div></div></div><style>{module:row/index,97}</style></div><div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-row btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.row.config(this, \'row\')\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.row.layout(this)\" href=\"javascript:void(0)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a onclick=\"grid.row.add(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a onclick=\"grid.row.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-4\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.config(this)\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-image54b4cc3011da5\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\'grid.module.setting(\"image\", 45, this)\'><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:image/index,45}</div><div class=\"js-elment module-info\"><strong>image: Your Logo</strong></div></div></div></div></div></div><div class=\"col-elment col-md-8\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button class=\"btn-xs btn-elment-col btn dropdown-toggle\" aria-expanded=\"false\" type=\"button\" data-toggle=\"dropdown\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a onclick=\"grid.col.config(this)\" href=\"javascript:void(0)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a onclick=\"grid.col.addRow(this)\" href=\"javascript:void(0)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a onclick=\"grid.col.remove(this)\" href=\"javascript:void(0)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-menu54c59e0b857d2\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\'grid.module.setting(\"menu\", 77, this)\'><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:menu/index,77}</div><div class=\"js-elment module-info\"><strong>menu: menu</strong></div></div></div></div></div></div></div></div></div>', 'Header', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('28', 'Footer', 'components/footer', '<div class=\"row-elment col-md-12 module-56610a3bf1016 \" data-id=\"179\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-image54b4cc3011da5\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:image/index,45}</div></div></div></div></div></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-custom5660efbbb2256\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_custom/index,176}</div></div></div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-custom56610097a1387\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_custom/index,177}</div></div></div></div></div></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-social54fbc614e605b\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:social/index,128}</div></div></div></div></div></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-custom566100f4918cb\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_custom/index,178}</div></div></div></div></div></div></div></div></div></div><style>{module:row/index,179}</style></div>', '<div class=\"row-elment col-md-12 module-56610a3bf1016 \" data-id=\"179\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-image54b4cc3011da5\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;image&quot;, 45, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:image/index,45}</div><div class=\"js-elment module-info\"><strong>image: Your Logo</strong></div></div></div></div></div></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-custom5660efbbb2256\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;m_custom&quot;, 176, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_custom/index,176}</div><div class=\"js-elment module-info\"><strong>m_custom: Tee Address</strong></div></div></div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-custom56610097a1387\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;m_custom&quot;, 177, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_custom/index,177}</div><div class=\"js-elment module-info\"><strong>m_custom: Accepted Payment</strong></div></div></div></div></div></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-social54fbc614e605b\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;social&quot;, 128, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:social/index,128}</div><div class=\"js-elment module-info\"><strong>social: payment</strong></div></div></div></div></div></div></div><div class=\"row-content row\"><div class=\"col-elment col-md-12 elment-rows\"><div class=\"module-margin module-custom566100f4918cb\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;m_custom&quot;, 178, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_custom/index,178}</div><div class=\"js-elment module-info\"><strong>m_custom: RESERVED</strong></div></div></div></div></div></div></div></div></div></div><style>{module:row/index,179}</style></div>', 'Footer', '1', '1', '');
INSERT INTO `dg_layout` VALUES ('29', 'After quote', 'product-quote/default', '<div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-product-quote\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{page:product-quote}</div></div></div></div></div></div></div></div></div>', '<div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-product-quote\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{page:product-quote}</div><div class=\"js-elment module-info\"><strong>Page: product-quote - Product quote</strong></div></div></div></div></div></div></div></div></div>', 'After quote', '1', '1', '');

-- ----------------------------
-- Table structure for `dg_menus`
-- ----------------------------
DROP TABLE IF EXISTS `dg_menus`;
CREATE TABLE `dg_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subitem` text COLLATE utf8_unicode_ci NOT NULL,
  `html` text COLLATE utf8_unicode_ci NOT NULL,
  `options` text COLLATE utf8_unicode_ci NOT NULL,
  `published` int(1) NOT NULL DEFAULT '1',
  `menu_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=285 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_menus
-- ----------------------------
INSERT INTO `dg_menus` VALUES ('281', 'HOW TO ORDER', 'HOW TO ORDER', 'page/22-how-to-order', '', '', '{\"type\":\"custom\",\"responsive\":\"r\"}', '1', '3');
INSERT INTO `dg_menus` VALUES ('282', 'DESIGN STUDIO', '', 'design', '', '', '{\"type\":\"Design idea\",\"responsive\":\"r\"}', '1', '3');
INSERT INTO `dg_menus` VALUES ('283', 'BLOG', '', 'blog', '', '', '{\"type\":\"blog\",\"responsive\":\"r\"}', '1', '3');
INSERT INTO `dg_menus` VALUES ('280', 'CATEGORY', '', '#', '	<div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><ul class=\"list-menu ui-sortable\"><li class=\"menu-item\"><div class=\"text-editline\" id=\"editline-r0to05xko6r\" spellcheck=\"false\" style=\"position: relative;\"><a title=\"Ladies\" href=\"/categories/63-Ladies\"><img src=\"/media/assets/ladies2.png\" alt=\"\">Ladies</a></div></li><li class=\"menu-item\" style=\"position: relative;\"><div class=\"text-editline\" id=\"editline-rq30izfr\" spellcheck=\"false\" style=\"position: relative;\"><a title=\"Polos \" href=\"/categories/65-polo-dress-shirts\"><img src=\"/media/assets/polo.png\" alt=\"\">Polos </a></div></li><li class=\"menu-item\"><div class=\"text-editline\" id=\"editline-zcih9ofxbt9\" spellcheck=\"false\" style=\"position: relative;\"><a title=\"Sweatshirts\" href=\"/categories/66-ladies-tshirts\"><img src=\"/media/assets/sweat.png\" alt=\"\">Sweatshirts</a></div></li><li class=\"menu-item\"><div class=\"text-editline\" id=\"editline-df527xk1emi\" spellcheck=\"false\" style=\"position: relative;\"><a title=\"T-Shirts\" href=\"/categories/89-T-Shirts\"><img src=\"/media/assets/tshirt.png\" alt=\"\">T-Shirts</a></div></li></ul></div></div></div></div>', '<div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><ul class=\"list-menu ui-sortable\"><li class=\"menu-item\"><div class=\"text-editline\" id=\"editline-r0to05xko6r\" spellcheck=\"false\" style=\"position: relative;\"><a title=\"Ladies\" href=\"/categories/63-Ladies\"><img src=\"/media/assets/ladies2.png\" alt=\"\">Ladies</a></div><div class=\"js-elment js-menu\"><button class=\"btn btn-default btn-xs\" onclick=\"grid.menu.edit(this)\" type=\"button\" title=\"Click to edit\"><i class=\"glyphicon glyphicon-pencil\"></i></button><button class=\"btn btn-default btn-xs\" onclick=\"jQuery(this).parents(\'.menu-item\').remove()\" type=\"button\" title=\"Click to remove\"><i class=\"glyphicon glyphicon-trash\"></i></button></div><div class=\"js-elment js-handle btn btn-default btn-xs\"><i class=\"fa fa-arrows-alt\"></i></div></li><li class=\"menu-item\" style=\"position: relative;\"><div class=\"text-editline\" id=\"editline-rq30izfr\" spellcheck=\"false\" style=\"position: relative;\"><a title=\"Polos \" href=\"/categories/65-polo-dress-shirts\"><img src=\"/media/assets/polo.png\" alt=\"\">Polos </a></div><div class=\"js-elment js-menu\"><button class=\"btn btn-default btn-xs\" onclick=\"grid.menu.edit(this)\" type=\"button\" title=\"Click to edit\"><i class=\"glyphicon glyphicon-pencil\"></i></button><button class=\"btn btn-default btn-xs\" onclick=\"jQuery(this).parents(\'.menu-item\').remove()\" type=\"button\" title=\"Click to remove\"><i class=\"glyphicon glyphicon-trash\"></i></button></div><div class=\"js-elment js-handle btn btn-default btn-xs\"><i class=\"fa fa-arrows-alt\"></i></div></li><li class=\"menu-item\"><div class=\"text-editline\" id=\"editline-zcih9ofxbt9\" spellcheck=\"false\" style=\"position: relative;\"><a title=\"Sweatshirts\" href=\"/categories/66-ladies-tshirts\"><img src=\"/media/assets/sweat.png\" alt=\"\">Sweatshirts</a></div><div class=\"js-elment js-menu\"><button class=\"btn btn-default btn-xs\" onclick=\"grid.menu.edit(this)\" type=\"button\" title=\"Click to edit\"><i class=\"glyphicon glyphicon-pencil\"></i></button><button class=\"btn btn-default btn-xs\" onclick=\"jQuery(this).parents(\'.menu-item\').remove()\" type=\"button\" title=\"Click to remove\"><i class=\"glyphicon glyphicon-trash\"></i></button></div><div class=\"js-elment js-handle btn btn-default btn-xs\"><i class=\"fa fa-arrows-alt\"></i></div></li><li class=\"menu-item\"><div class=\"text-editline\" id=\"editline-df527xk1emi\" spellcheck=\"false\" style=\"position: relative;\"><a title=\"T-Shirts\" href=\"/categories/89-T-Shirts\"><img src=\"/media/assets/tshirt.png\" alt=\"\">T-Shirts</a></div><div class=\"js-elment js-menu\"><button class=\"btn btn-default btn-xs\" onclick=\"grid.menu.edit(this)\" type=\"button\" title=\"Click to edit\"><i class=\"glyphicon glyphicon-pencil\"></i></button><button class=\"btn btn-default btn-xs\" onclick=\"jQuery(this).parents(\'.menu-item\').remove()\" type=\"button\" title=\"Click to remove\"><i class=\"glyphicon glyphicon-trash\"></i></button></div><div class=\"js-elment js-handle btn btn-default btn-xs\"><i class=\"fa fa-arrows-alt\"></i></div></li></ul></div></div></div></div>', '{\"type\":\"custom\",\"responsive\":\"r\"}', '1', '3');
INSERT INTO `dg_menus` VALUES ('284', 'CONTACT US', '', 'page/21-contact-us', '', '', '{\"type\":\"page\",\"responsive\":\"r\"}', '1', '3');
INSERT INTO `dg_menus` VALUES ('279', 'HOME', '', 'home', '', '', '{\"type\":\"Menu items\",\"responsive\":\"r\"}', '1', '3');

-- ----------------------------
-- Table structure for `dg_menu_type`
-- ----------------------------
DROP TABLE IF EXISTS `dg_menu_type`;
CREATE TABLE `dg_menu_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_menu_type
-- ----------------------------
INSERT INTO `dg_menu_type` VALUES ('1', 'Main menu', 'Main menu', '');
INSERT INTO `dg_menu_type` VALUES ('2', 'Menu footer', 'Menu footer', '');
INSERT INTO `dg_menu_type` VALUES ('3', 'Nav Menu', '', '');
INSERT INTO `dg_menu_type` VALUES ('4', 'test page', '', '');

-- ----------------------------
-- Table structure for `dg_modules`
-- ----------------------------
DROP TABLE IF EXISTS `dg_modules`;
CREATE TABLE `dg_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `options` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_modules
-- ----------------------------
INSERT INTO `dg_modules` VALUES ('24', '', 'row', '54ae6a58d4100', '', '{\"class_sfx\":\"sdfsdf\"}', '{\"fontColor\":\"8EFF38\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"FFCB70\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('25', '', 'row', '54ae705a2f0d5', '', '{\"class_sfx\":\"testing\"}', '{\"fontColor\":\"61FFFF\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('26', '', 'row', '54ae71e251933', '', '{\"class_sfx\":\"blog-left\"}', '{\"fontColor\":\"B9FF40\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"3\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"3\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('27', '', 'row', '54ae724ca1419', '', '{\"class_sfx\":\"sdfsdf\"}', '{\"fontColor\":\"FFAD1F\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('28', '', 'row', '54ae727561a4e', '', '{\"class_sfx\":\"testitn abc\"}', '{\"fontColor\":\"FFAD1F\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('29', '', 'row', '54afb1f7e399e', '', '{\"class_sfx\":\"abc-testing\"}', '{\"fontColor\":\"FF3636\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"6\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"0\",\"bottom\":\"\"},\"borderColor\":\"FF951C\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"media\\/assets\\/testing\\/1414949730.png\",\"style\":\"no-repeat\"}}');
INSERT INTO `dg_modules` VALUES ('30', '', 'row', '54af9e5977f2c', '', '{\"class_sfx\":\"abc-testing\"}', '{\"fontColor\":\"FF3636\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"borderColor\":\"FF0F0F\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('31', '', 'row', '54afa570b2ef5', '', '{\"class_sfx\":\"abc-testing\"}', '{\"fontColor\":\"FF3636\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"5\",\"bottom\":\"3\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"borderColor\":\"8F82FF\",\"borderStyle\":\"dotted\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"media\\/assets\\/mens-zipper-hoodie-by-dickies-61.png\",\"style\":\"Repeat\"}}');
INSERT INTO `dg_modules` VALUES ('32', '', 'row', '54afa5cfe0810', '', '{\"class_sfx\":\"abc-testing\"}', '{\"fontColor\":\"FF3636\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"borderColor\":\"FF0F0F\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"media\\/assets\\/mens-zipper-hoodie-by-dickies-61.png\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('33', '', 'row', '54afa62b64725', '', '{\"class_sfx\":\"abc-testing\"}', '{\"fontColor\":\"FF3636\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"5\",\"bottom\":\"2\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"borderColor\":\"FF0F0F\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"media\\/assets\\/mens-zipper-hoodie-by-dickies-61.png\",\"style\":\"Repeat\"}}');
INSERT INTO `dg_modules` VALUES ('34', '', 'row', '54afa66e8fd89', '', '{\"class_sfx\":\"abc-testing\"}', '{\"fontColor\":\"FF3636\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"5\",\"bottom\":\"2\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"borderColor\":\"FF0F0F\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('35', '', 'row', '54afae01c7219', '', '{\"class_sfx\":\"abc-testing\"}', '{\"fontColor\":\"FF3636\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"3\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"borderColor\":\"FF0F0F\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('36', '', 'row', '54b07cae56094', '', '{\"class_sfx\":\"footer\"}', '{\"fontColor\":\"000000\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"5\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"FF6B2B\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('37', '', 'row', '54b08688c925e', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"1\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('40', '', 'row', '54b21ebaef429', '', '{\"class_sfx\":\"test\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"4\",\"bottom\":\"1\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"4\",\"bottom\":\"\"},\"borderColor\":\"FF9A42\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"\",\"style\":\"no-repeat\"}}');
INSERT INTO `dg_modules` VALUES ('43', 'Share', 'social', 'social54b242575d2c4', '{\"facebook\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_07.png\",\"link\":\"#\",\"publish\":\"yes\"},\"twitter\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_03.png\",\"link\":\"#\",\"publish\":\"yes\"},\"google\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_09.png\",\"link\":\"#\",\"publish\":\"yes\"},\"instagram\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_39.png\",\"link\":\"#\",\"publish\":\"yes\"},\"pinterest\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_05.png\",\"link\":\"http:\\/\\/\",\"publish\":\"no\"},\"linkedin\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_41.png\",\"link\":\"http:\\/\\/\",\"publish\":\"no\"}}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('44', '', 'row', '54b4d11ae9c89', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"FFFFFF\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"10\",\"bottom\":\"10\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"333333\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('45', 'Your Logo', 'image', 'image54b4cc3011da5', '/media/assets/logo-tee.png', '{\"animation\":\"\",\"width\":\"\",\"height\":\"\",\"alignment\":\"left\",\"style\":\"\",\"link\":\"http:\\/\\/\",\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"10\",\"bottom\":\"5\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('46', '', 'row', '54b5de6040f94', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"333333\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"1\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('49', '', 'row', '54b9553373042', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"333333\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"15\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"15\",\"bottom\":\"15\"},\"borderColor\":\"FF8F2E\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('50', '', 'row', '54cedd46d8d76', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"15\",\"bottom\":\"15\"},\"borderColor\":\"FF8E2B\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('52', 'test', 'tab', 'tab54bb279803a6e', '{\"icon\":[\"glyphicon glyphicon-star-empty\",\"glyphicon glyphicon-film\"],\"name\":[\"test\",\"abc\"],\"content\":[\"<p>asdfadsfaf<\\/p>\",\"<p>asdfadsfadf<\\/p>\"]}', '{\"tab_type\":\"top\",\"color\":\"tab-blue\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('53', '', 'row', '54fd29141df7f', '', '{\"class_sfx\":\"full-width\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"10\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"10\",\"right\":\"\",\"top\":\"20\",\"bottom\":\"20\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"FFFFFF\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('54', 'tweet', 'tweet', 'tweet54bb6d09ba62f', '{\"username\":\"dangcv\",\"key\":\"yJBCZtOd1aq1qXBlJkEqWw\",\"secret\":\"sagvGaUxoSIXkzrEWD307LP0aAzOhgsapkc8f0\",\"accesstoken\":\"192504384-2Z18XxnElJ1yDb2dGJRGkcPomYJ07Rij3tyaqOKf\",\"accesssecret\":\"wDhtV70zz74PcQ2PysXVXKkq6MSOnhYfIdPhucBtmUI\",\"number\":\"5\",\"show_picture\":\"show\",\"add_link\":\"yes\",\"publish\":\"yes\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('55', 'likebox', 'likebox', 'likebox54bb795559a78', '{\"appid\":\"261093954069581\",\"url\":\"https:\\/\\/www.facebook.com\\/FacebookDevelopers\",\"color\":\"light\",\"width\":\"\",\"height\":\"\",\"show_faces\":\"true\",\"show_header\":\"true\",\"show_border\":\"true\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('56', 'test', 'share', 'share54bb79c25aaf8', '{\"facebook\":{\"link\":\"https:\\/\\/www.facebook.com\\/\",\"option\":\"box_count\",\"publish\":\"yes\"},\"google\":{\"link\":\"#\",\"option\":\"none\",\"publish\":\"yes\"},\"tweet\":{\"option\":\"none\",\"publish\":\"yes\"},\"pinterest\":{\"link\":\"#\",\"option\":\"none\",\"publish\":\"yes\"},\"linkedin\":{\"link\":\"\",\"option\":\"\",\"publish\":\"no\"}}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('62', '', 'row', '54bb951322aa7', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"666666\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('66', '', 'row', '54bb984e642a4', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"1\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"40\",\"bottom\":\"40\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F2F2F2\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('68', '', 'row', '54bb983c2ed72', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"30\",\"bottom\":\"30\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('69', '', 'row', '54bb98e423c49', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"5\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('70', 'Product Categories', 'p_categories', 'categories54c312d45bb90', '{\"show_title\":\"yes\",\"cate_id\":\"0\",\"layout\":\"thumb\",\"show_number\":\"4\",\"show_level\":\"no\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('71', 'youtube', 'video', 'video54c3164a96804', '{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=6vlrvzoA1g0\",\"width\":\"500\",\"height\":\"300\",\"responsive\":\"yes\",\"class_sfx\":\"\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('72', 'test', 'maps', 'maps54c31911117ba', '{\"latitude\":\"21.581026\",\"longitude\":\"105.814755\",\"width\":\"\",\"height\":\"200\",\"zoom\":\"10\",\"maptype\":\"ROADMAP\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('73', 'Blog Categories', 'a_categories', 'categories54c3449a79236', '{\"show_title\":\"yes\",\"cate_id\":\"0\",\"layout\":\"thumb\",\"show_number\":\"4\",\"show_level\":\"no\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('74', 'Design Idea Categories', 'c_categories', 'categories54c3481057942', '{\"show_title\":\"yes\",\"cate_id\":\"0\",\"layout\":\"thumb\",\"show_number\":\"5\",\"show_level\":\"no\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('75', 'dailymotion', 'video', 'video54c357432fcb7', '{\"url\":\"http:\\/\\/www.dailymotion.com\\/video\\/x2f4anu_novelty-fly-swat_tech\",\"width\":\"\",\"height\":\"\",\"responsive\":\"yes\",\"class_sfx\":\"\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('76', 'cart', 'm_cart', 'm_cart54c454683b57e', 'false', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"8\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('77', 'menu', 'menu', 'menu54c59e0b857d2', 'false', '{\"menu_type\":\"3\",\"class_sfx\":\"\",\"style\":\"navbar-default\",\"display\":\"default\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('78', 'search', 'search', 'search54c59e26d764f', '{\"class_sfx\":\"search\"}', '{\"size\":\"input-sm\",\"display\":\"icon\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"8\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('79', 'breadcrumbs', 'breadcrumbs', 'breadcrumbs54c5ec42e5fc3', '{\"class_sfx\":\"breadcrumb\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('80', 'lastest product', 'm_product', 'm_product54c607799e042', 'false', '{\"show_title\":\"yes\",\"cols\":\"4\",\"show_product\":\"lastest\",\"count\":\"4\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('81', 'Featured Products', 'm_product', 'm_product54c61a99ed03a', 'false', '{\"show_title\":\"yes\",\"cols\":\"4\",\"show_product\":\"future\",\"count\":\"4\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('82', 'Sale Product', 'm_product', 'm_product54c61ab94e799', 'false', '{\"show_title\":\"yes\",\"cols\":\"4\",\"show_product\":\"sale_price\",\"count\":\"4\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('83', '', 'row', '54c7dd3340920', '', '{\"class_sfx\":\"text-center\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"20\",\"bottom\":\"20\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"2C4C7E\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('85', 'Home Video', 'video', 'video54c7dc7335072', '{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=6vlrvzoA1g0\",\"width\":\"600\",\"height\":\"400\",\"responsive\":\"no\",\"class_sfx\":\" text-center\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"10\",\"bottom\":\"10\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('87', '', 'row', '54fc293a27916', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"1\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"20\",\"bottom\":\"20\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('88', '', 'row', '54fc29dc89423', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('89', 'Sale Product Left', 'm_product', 'm_product54c8621292533', 'false', '{\"show_title\":\"yes\",\"cols\":\"1\",\"show_product\":\"sale_price\",\"count\":\"3\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('90', 'popup', 'popup', 'popup54ca00d7268f2', 'media/assets/printed-summer-dress.jpg', '{\"type\":\"image\",\"show\":\"onload\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"media\\/assets\\/printed-dress.jpg\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('91', 'Lastest Article', 'lastest_article', 'lastest_article54cc36ebc99b9', 'false', '{\"show_title\":\"yes\",\"show_date\":\"yes\",\"show_thumb\":\"yes\",\"show_intro\":\"yes\",\"count\":\"1\",\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('92', 'most article', 'most_article', 'most_article54cc36f982d9e', 'false', '{\"show_title\":\"yes\",\"show_date\":\"yes\",\"show_thumb\":\"yes\",\"show_intro\":\"yes\",\"count\":\"4\",\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('93', '', 'row', '54ccb94f830e4', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"20\",\"bottom\":\"20\"},\"borderColor\":\"FFB624\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('94', 'login', 'login', 'login54cdff6b4efca', 'false', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"2\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('95', '', 'row', '54cf01fca5eb4', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"20\",\"bottom\":\"20\"},\"borderColor\":\"FFE226\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F1F1F1\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('97', '', 'row', '565f1fdc71630', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"27AAE0\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('98', '', 'row', '54fd1d974e396', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"1\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('99', '', 'row', '54ed97d7d60b3', '', '{\"class_sfx\":\"head-banner\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"2\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"7B8493\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"\",\"image\":\"media\\/assets\\/pattern.png\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('101', '', 'row', '54fd1db5ac780', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"25\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"1\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('102', '', 'row', '54ed9d6325a6f', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"5\",\"bottom\":\"\"},\"borderColor\":\"000000\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"232323\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('105', '', 'row', '54fbfc8f54136', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"15\",\"bottom\":\"15\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"E9E9E9\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('106', 'Future Product test', 'm_product', 'm_product54fa634201f5f', 'false', '{\"show_title\":\"yes\",\"cols\":\"2\",\"show_product\":\"future\",\"count\":\"4\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('107', 'Lastest Product test', 'm_product', 'm_product54fa637380c02', 'false', '{\"show_title\":\"yes\",\"cols\":\"4\",\"show_product\":\"lastest\",\"count\":\"4\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('108', 'Sale Product test', 'm_product', 'm_product54fa63997cb7a', 'false', '{\"show_title\":\"yes\",\"cols\":\"4\",\"show_product\":\"sale_price\",\"count\":\"4\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('110', 'banner_left', 'image', 'image54fbafa7af1ce', 'media/assets/sub-banner1.png', '{\"animation\":\"\",\"width\":\"557\",\"height\":\"155\",\"alignment\":\"left\",\"style\":\"\",\"link\":\"http:\\/\\/demo.tshirtecommerce.com\\/\",\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"10\",\"top\":\"5\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('111', 'banner_right', 'image', 'image54fbafcc62351', 'media/assets/sub-banner2.png', '{\"animation\":\"\",\"width\":\"557\",\"height\":\"155\",\"alignment\":\"left\",\"style\":\"\",\"link\":\"http:\\/\\/demo.tshirtecommerce.com\\/\",\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"10\",\"right\":\"\",\"top\":\"5\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('113', '', 'row', '54fbb5838e794', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"FFFFFF\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('114', 'Infomation', 'custom', 'custom54fbb84b98707', '<h4>Information</h4>\n<p><a title=\"about\" href=\"#\">About Us</a></p>\n<p><a title=\"faqs\" href=\"#\">FAQS</a></p>\n<p><a title=\"tems\" href=\"#\">Terms and conditions</a></p>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('118', 'Follow Us', 'social', 'social54fbbb840e003', '{\"facebook\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_07.png\",\"link\":\"http:\\/\\/facebook.com\",\"publish\":\"yes\"},\"twitter\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_03.png\",\"link\":\"http:\\/\\/facebook.com\",\"publish\":\"yes\"},\"google\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_09.png\",\"link\":\"http:\\/\\/facebook.com\",\"publish\":\"no\"},\"instagram\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_39.png\",\"link\":\"http:\\/\\/facebook.com\",\"publish\":\"no\"},\"pinterest\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_05.png\",\"link\":\"http:\\/\\/facebook.com\",\"publish\":\"yes\"},\"linkedin\":{\"icon\":\"media\\/assets\\/social-icon\\/24x24\\/social_41.png\",\"link\":\"http:\\/\\/facebook.com\",\"publish\":\"yes\"}}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('120', 'Contact Us', 'm_custom', 'm_custom54fbbf5c74606', '<p><strong>Address:</strong> 1234 Street Name, City Name, United States</p>\n<p><strong>Phone:</strong> (+84) 978 057 007</p>\n<p><strong>Email:</strong> <a href=\"mailto:admin@.tshirtecommerce.com\"> admin@.tshirtecommerce.com </a></p>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('124', 'Contact Us', 'custom', 'custom54fbc29700682', '<h4>Contact</h4>\n<p><span class=\"fa fa-map-marker\">&nbsp;</span><strong>Address:</strong> Thai Nguyen City, Vietnam</p>\n<p><span class=\"fa fa-phone\">&nbsp;</span><strong>Phone:</strong> (+84) 978 057 007</p>\n<p><span class=\"fa fa-envelope\">&nbsp;</span><strong>Email:</strong> <a href=\"mailto:admin@.tshirtecommerce.com\"> admin@.tshirtecommerce.com </a></p>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('125', 'Account', 'custom', 'custom54fbc2dab84f5', '<h4>Account</h4>\n<p><a title=\"Account\" href=\"#\">Account</a></p>\n<p><a title=\"Billing address\" href=\"#\">Billing Address</a></p>\n<p><a title=\"List order\" href=\"#\">List order</a></p>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('127', 'payment', 'custom', 'custom54fbc39e76f43', '<h4 style=\"margin: 5px 0px 0px 5px;\">Payment</h4>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('128', 'payment', 'social', 'social54fbc614e605b', '{\"facebook\":{\"icon\":\"\\/media\\/assets\\/payment_icon\\/visa-logo.png\",\"link\":\"http:\\/\\/\",\"publish\":\"yes\"},\"twitter\":{\"icon\":\"\\/media\\/assets\\/payment_icon\\/mastercard-logo.png\",\"link\":\"http:\\/\\/\",\"publish\":\"yes\"},\"google\":{\"icon\":\"\\/media\\/assets\\/payment_icon\\/paypal-logo.png\",\"link\":\"http:\\/\\/\",\"publish\":\"yes\"},\"instagram\":{\"icon\":\"\\/media\\/assets\\/payment_icon\\/americanexpress-logo.png\",\"link\":\"http:\\/\\/\",\"publish\":\"yes\"},\"pinterest\":{\"icon\":\"\\/media\\/assets\\/payment_icon\\/visaelectron-logo.png\",\"link\":\"http:\\/\\/\",\"publish\":\"yes\"},\"linkedin\":{\"icon\":\"\",\"link\":\"http:\\/\\/\",\"publish\":\"no\"}}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"10\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('129', 'Footer copyright', 'custom', 'custom54fbc78632741', '<p><a title=\"copyright\" href=\"http://tshirtecommerce.com\">Copyright &copy; 2015 tshirtecommerce.com. All Rights Reserved.</a></p>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"10\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('130', 'What Clientâ€™s Say', 'custom', 'custom54fbc84cda2d2', '<h4>What Client&rsquo;s Say</h4>\n<div class=\"client-say\">\n<div class=\"block-quote\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est, in consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n</div>\n<div class=\"block-quote-arrow-down\">&nbsp;</div>\n<div class=\"block-quote-author\">\n<div class=\"img-thumbnail\"><img src=\"media/assets/avatar-1.jpg\" alt=\"\" /></div>\n<p><strong>Peter Clark</strong>UI Designer - Cliptheme</p>\n</div>\n</div>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('135', '404', 'custom', 'custom54fbcccce93f2', '<div class=\"page-error\">\n<div class=\"error-number teal\">404</div>\n<div class=\"error-details col-sm-6 col-sm-offset-3\">\n<h3>Oops! You are stuck at 404</h3>\n<p>Unfortunately the page you were looking for could not be found. <br /> It may be temporarily unavailable, moved or no longer exist. <br /> Check the URL you entered for any mistakes and try again. <br /> <a class=\"btn btn-teal btn-return\" href=\"http://demo.tshirtecommerce.com\"> Return home </a> <br /> Still no luck? <br /> Search for whatever is missing, or take a look around the rest of our site.</p>\n</div>\n</div>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('136', 'product_1', 'image', 'image54fbcfcc272f7', 'media/assets/printed-summer-dress.jpg', '{\"animation\":\"\",\"width\":\"\",\"height\":\"\",\"alignment\":\"left\",\"style\":\"\",\"link\":\"http:\\/\\/\",\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('137', 'product_2', 'image', 'image54fbcfe20be2f', 'media/assets/faded-short-sleeve-tshirts.jpg', '{\"animation\":\"\",\"width\":\"\",\"height\":\"\",\"alignment\":\"left\",\"style\":\"\",\"link\":\"http:\\/\\/\",\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('138', 'logo', 'image', 'image54fbd288325fb', 'media/assets/logo-leng.png', '{\"animation\":\"\",\"width\":\"\",\"height\":\"\",\"alignment\":\"right\",\"style\":\"\",\"link\":\"http:\\/\\/tshirtecommerce.com\",\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('139', '', 'row', '565f294022523', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"1\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"borderColor\":\"\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('140', '', 'row', '54fbd487a9187', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('141', '', 'row', '54fbd49357242', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"25\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('142', 'maps', 'maps', 'maps54fbddcd0e89a', '{\"latitude\":\"40.011530\",\"longitude\":\"-75.109077\",\"width\":\"\",\"height\":\"300\",\"zoom\":\"16\",\"maptype\":\"ROADMAP\"}', '', '{\"margin\":{\"left\":\"-15\",\"right\":\"-15\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('143', 'Contact Infomation', 'custom', 'custom54fbde76ef7e6', '<h4>Get in touch</h4>\n<p>Store offering custom-printed shirts &amp; sweatshirts, plus design assistance &amp; free delivery.</p>\n<hr />\n<h4>The Office</h4>\n<ul class=\"list-unstyled\">\n<li><strong>Address:</strong>&nbsp;920 E Hunting Park Ave, Philadelphia, PA 19124, United States</li>\n<li><strong>Phone:</strong>&nbsp;+1 267-538-5331</li>\n<li><strong>Email:</strong>&nbsp;&nbsp;<a href=\"mailto:info@teevisionprinting.com\">info@teevisionprinting.com</a></li>\n</ul>\n<hr class=\"right\" />\n<h4>Business Hours</h4>\n<div>Saturday: Closed</div>\n<div>Sunday: &nbsp;Closed</div>\n<div>Monday: 9:30 AM &ndash; 6:00 PM</div>\n<div>Tuesday: 9:30 AM &ndash; 6:00 PM</div>\n<div>Wednesday: 9:30 AM &ndash; 6:00 PM</div>\n<div>Thursday: 9:30 AM &ndash; 6:00 PM</div>\n<div>Friday: 9:30 AM &ndash; 6:00 PM</div>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('144', '', 'row', '54fc1f05f2541', '', '{\"class_sfx\":\"full-width\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"25\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('145', '', 'row', '54fd03e5508cd', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('146', 'Categories', 'p_categories', 'categories54fbfefd6c4bd', '{\"show_title\":\"yes\",\"cate_id\":\"0\",\"layout\":\"list\",\"show_number\":\"15\",\"show_level\":\"no\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"15\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('147', 'Categories', 'c_categories', 'categories54fc1bdcab3b2', '{\"show_title\":\"yes\",\"cate_id\":\"0\",\"layout\":\"list\",\"show_number\":\"15\",\"show_level\":\"no\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"15\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('148', '', 'row', '54fc25504d783', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('149', 'Categories', 'a_categories', 'categories54fc25bbaf160', '{\"show_title\":\"yes\",\"cate_id\":\"0\",\"layout\":\"list\",\"show_number\":\"15\",\"show_level\":\"no\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('150', '', 'row', '54fc25dad3584', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('151', 'Lastest Article', 'lastest_article', 'lastest_article54fc264d06fc8', 'false', '{\"show_title\":\"yes\",\"show_date\":\"yes\",\"show_thumb\":\"yes\",\"show_intro\":\"yes\",\"count\":\"3\",\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('152', '', 'row', '54fc2831f2ef1', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('153', '', 'row', '54fc28a6dacdf', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('154', '', 'row', '54fc29beb6fdb', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"25\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('155', '', 'row', '54fc99d05d2af', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('156', '', 'row', '54fc9af0f2a74', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('157', '', 'row', '54fc99dcc8733', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('158', '', 'row', '54fc9ae32c055', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('159', '', 'row', '54fcfea2bd7f3', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('160', '', 'row', '54fd031a71a0e', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"25\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('161', '', 'row', '54fd033224421', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('162', '', 'row', '54fd66c306d8d', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"40\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('163', 'search_404', 'search', 'search54fd23fb84cbe', 'false', '{\"size\":\"\",\"display\":\"\",\"class_sfx\":\"page-error\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('164', '', 'row', '54fd66cb22d17', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"40\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('165', '', 'row', '54fd65d3136eb', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('166', '', 'row', '54fe5255ee20c', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('167', '', 'row', '54fe9e4208b69', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('168', '', 'row', '54fe5d22d501c', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('169', '', 'row', '54fe5d3e99f3f', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"1\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"25\",\"bottom\":\"25\"},\"borderColor\":\"CCCCCC\",\"borderStyle\":\"solid\",\"background\":{\"color\":\"F8F8F8\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('170', 'Need custom T-shirts', 'custom', 'custom565d0fdcb1951', '<h1>Need custom T-shirts?</h1>\r\n<p style=\"text-align: center;\">Tee Vision is a Philadelphia Screen Printing company. We are committed to providing the highest quality for an affordable price. We use professional screen printers to ensure that your custom T-shirts do not crack, wash off, or fade.</p>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('171', 'test', 'slider', 'slider565d164ac193e', '{\"images\":[\"media\\/assets\\/page-builder.jpg\",\"media\\/assets\\/printed-dress.jpg\"],\"video_url\":[\"\",\"\"],\"display\":[\"image\",\"image\"],\"target\":[\"_sef\",\"_sef\"],\"thumbnail\":[\"show\",\"show\"],\"url\":[\"\",\"\"]}', '{\"mode\":\"horizontal\",\"infiniteLoop\":\"true\",\"auto\":\"true\",\"autoControls\":\"true\",\"hideControlOnEnd\":\"true\",\"maxSlides\":\"1\",\"speed\":\"400\",\"slideWidth\":\"\",\"slideHeight\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('172', 'headert1', 'custom', 'custom565ebe4cb514b', '<p><span style=\"color: #ffffff;\">Custom T-Shirts &amp; More For | Call us now (267) 538-5331</span></p>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"8\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('173', 'All Inclusive Pricing', 'custom', 'custom565f2faf26d45', '<p style=\"text-align: center;\"><img src=\"http://localhost/teevison/media/assets/social-icon/43x43/social_117.png\" alt=\"\" /></p>\r\n<h5 style=\"text-align: center;\">All Inclusive Pricing</h5>\r\n<p style=\"text-align: center;\">We offer an all-inclusive pricing meaning the price you see is the price you pay. There are no other hidden fees. No extra charges for standard shipping or any charges for artwork!</p>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('174', 'home Highlight', 'maps', 'maps565fdb8b43639', '{\"latitude\":\"40.713202\",\"longitude\":\"-73.992041\",\"width\":\"\",\"height\":\"300\",\"zoom\":\"8\",\"maptype\":\"ROADMAP\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('175', 'Test', 'm_home_hilight', 'm_home_hilight565fe608a369d', 'false', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"45FF51\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('176', 'Tee Address', 'custom', 'custom5660efbbb2256', '<div class=\"copyright\"><span class=\"fa fa-clock-o\">&nbsp;9:30AM - 6:00PM (Monday - Friday)</span><br /> <span class=\"fa fa-phone\">&nbsp;</span>(267) 538-5331 &nbsp; &nbsp; &nbsp;<span class=\"fa fa-paper-plane\">&nbsp;</span>&nbsp;<a href=\"mailto:info@teevisionprinting.com\">info@teevisionprinting.com</a><br /> <span class=\"fa fa-map-marker\">&nbsp;</span>920 E. Hunting Park Ave&nbsp;Philadelphia, PA 19124</div>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('177', 'Accepted Payment', 'custom', 'custom56610097a1387', '<p style=\"text-align: right;\">Accepted Payment</p>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"10\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('178', 'RESERVED', 'custom', 'custom566100f4918cb', '<p style=\"text-align: right;\">&copy; 2015&nbsp;SCREEN PRINTING PHILADELPHIA<br />ALL RIGHTS RESERVED</p>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('179', '', 'row', '56610a3bf1016', '', '{\"class_sfx\":\"\"}', '{\"fontColor\":\"\",\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"20\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"defaults\",\"background\":{\"color\":\"EEEEEE\",\"image\":\"\",\"style\":\"repeat\"}}');
INSERT INTO `dg_modules` VALUES ('180', 'thanh test', 'p_categories', 'categories56722a3819fbe', '{\"show_title\":\"yes\",\"cate_id\":\"89\",\"layout\":\"thumb\",\"show_number\":\"8\",\"show_level\":\"no\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('181', 'thanh test', 'p_categories', 'categories56722d9037599', '{\"show_title\":\"yes\",\"cate_id\":\"89\",\"layout\":\"list\",\"show_number\":\"8\",\"show_level\":\"no\"}', '', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');
INSERT INTO `dg_modules` VALUES ('182', 'How to Order', 'custom', 'custom568d1ab423302', '<h2 class=\"order-list\"><span style=\"text-decoration: underline;\">How to Order</span></h2>\r\n<div class=\"order-list\">&nbsp;</div>\r\n<div class=\"order-list\"><img src=\"http://teevisionprinting.com/wp-content/themes/Emporium56/images/order1.jpg\" alt=\"\" align=\"left\" /><br /><strong>Choose a product you need a quote on!</strong>&ndash; Browse through our selection and contact us if you do not see what you are looking for.</div>\r\n<div class=\"order-list\">&nbsp;</div>\r\n<div class=\"order-list\">&nbsp;</div>\r\n<div class=\"order-list\">&nbsp;</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n<div class=\"order-list\"><img src=\"http://teevisionprinting.com/wp-content/themes/Emporium56/images/order2.jpg\" alt=\"\" align=\"left\" /><br /><strong>Receive a Free Quote</strong>&ndash; Once you have chosen your garment color, quantity, sizes, and location of print we will send you a quote</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n<div class=\"order-list\"><img src=\"http://teevisionprinting.com/wp-content/themes/Emporium56/images/order3.jpg\" alt=\"\" align=\"left\" /><br /><strong>Place an Order</strong>&ndash; Either place an order over the phone or come in and place an order with us in person! We will contact you with further instructions in regards of artwork and payment.</div>\r\n<div class=\"order-list\">&nbsp;</div>\r\n<div class=\"order-list\">&nbsp;</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n<div class=\"order-list\"><img src=\"http://teevisionprinting.com/wp-content/themes/Emporium56/images/order4.jpg\" alt=\"\" align=\"left\" /><br /><strong>Approve your Design</strong>&ndash; We will send you an online proof of your new design. You can request for any revision and changes then. With your final approval we will begin to print!</div>\r\n<div class=\"order-list\">&nbsp;</div>\r\n<div class=\"order-list\">&nbsp;</div>\r\n<div class=\"order-list\">&nbsp;</div>\r\n<div class=\"clear\">&nbsp;</div>\r\n<div class=\"order-list\"><img src=\"http://teevisionprinting.com/wp-content/themes/Emporium56/images/order5.jpg\" alt=\"\" align=\"left\" /><br /><strong>Have your order shipped, delivered, or picked up!</strong>&ndash; Upon completion of your order, you can have your shirts shipped, delivered (Within Philadelphia only), or you can come pick it up at our location at&nbsp;<strong>920 E. Hunting Park Ave, Philadelphia Pa 19124</strong></div>', '{\"class_sfx\":\"\"}', '{\"margin\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"border\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"padding\":{\"left\":\"\",\"right\":\"\",\"top\":\"\",\"bottom\":\"\"},\"borderColor\":\"\",\"borderStyle\":\"Defaults\",\"background\":{\"color\":\"\",\"image\":\"\",\"style\":\"Defaults\"}}');

-- ----------------------------
-- Table structure for `dg_orders`
-- ----------------------------
DROP TABLE IF EXISTS `dg_orders`;
CREATE TABLE `dg_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_pass` varchar(10) NOT NULL COMMENT 'Help client check order',
  `payment_id` int(11) NOT NULL,
  `payment_price` float NOT NULL DEFAULT '0',
  `shipping_id` int(11) NOT NULL,
  `shipping_price` float NOT NULL DEFAULT '0',
  `sub_total` float NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0',
  `discount_id` int(11) NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `tax` float NOT NULL,
  `status` varchar(200) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_on` datetime NOT NULL,
  `client_note` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Used to store all orders';

-- ----------------------------
-- Records of dg_orders
-- ----------------------------
INSERT INTO `dg_orders` VALUES ('1', '3EDA85A', '2', '3EDA85A', '1', '0', '1', '10.5', '120', '130.5', '0', '0', '0', 'pending', '2016-01-08 02:06:06', '2016-01-08 02:06:06', '');
INSERT INTO `dg_orders` VALUES ('2', 'FC63F91', '1', 'FC63FE8', '4', '0', '4', '5.1', '30', '35.1', '0', '0', '0', 'pending', '2016-02-01 09:57:32', '2016-02-01 09:57:32', '');
INSERT INTO `dg_orders` VALUES ('3', '90546C9', '1', '905477D', '1', '0', '1', '10.5', '14', '24.5', '0', '0', '0', 'pending', '2016-02-04 11:06:08', '2016-02-04 11:06:08', '');

-- ----------------------------
-- Table structure for `dg_orders_histories`
-- ----------------------------
DROP TABLE IF EXISTS `dg_orders_histories`;
CREATE TABLE `dg_orders_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `label` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='store change of each order';

-- ----------------------------
-- Records of dg_orders_histories
-- ----------------------------

-- ----------------------------
-- Table structure for `dg_orders_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `dg_orders_userinfo`;
CREATE TABLE `dg_orders_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text NOT NULL COMMENT 'save with json',
  `created_on` datetime NOT NULL,
  `modified_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_orders_userinfo
-- ----------------------------
INSERT INTO `dg_orders_userinfo` VALUES ('1', '1', '2', '{\"First Name\":\"Cao\",\"Last Name\":\"Van-Toai\",\"Company\":\"PVAC\",\"Address\":\"Phan Van Han, Binh Thanh, Ho Chi Minh, Viet Nam\",\"Country\":\"Viet Nam\",\"State\\/Province\":\"\",\"Telephone\":\"+84919068986\",\"Zip\\/Postal Code\":\"70000\"}', '2016-01-08 02:06:10', '2016-01-08 02:06:10');
INSERT INTO `dg_orders_userinfo` VALUES ('2', '2', '1', '{\"First Name\":\"thanh\",\"Last Name\":\"tran\",\"Company\":\"\",\"Address\":\"233 oigijf\",\"Country\":\"Viet Nam\",\"State\\/Province\":\"Ho Chi Minh City\",\"Telephone\":\"1213124124\",\"Zip\\/Postal Code\":\"700000\"}', '2016-02-01 09:57:35', '2016-02-01 09:57:35');
INSERT INTO `dg_orders_userinfo` VALUES ('3', '3', '1', '{\"First Name\":\"thanh\",\"Last Name\":\"tran\",\"Company\":\"\",\"Address\":\"233 oigijf\",\"Country\":\"Viet Nam\",\"State\\/Province\":\"Ho Chi Minh City\",\"Telephone\":\"1213124124\",\"Zip\\/Postal Code\":\"700000\"}', '2016-02-04 11:06:11', '2016-02-04 11:06:11');

-- ----------------------------
-- Table structure for `dg_order_cliparts`
-- ----------------------------
DROP TABLE IF EXISTS `dg_order_cliparts`;
CREATE TABLE `dg_order_cliparts` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `clipart_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_order_cliparts
-- ----------------------------

-- ----------------------------
-- Table structure for `dg_order_items`
-- ----------------------------
DROP TABLE IF EXISTS `dg_order_items`;
CREATE TABLE `dg_order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `design_id` varchar(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_sku` varchar(200) NOT NULL,
  `product_price` float NOT NULL,
  `price_print` float NOT NULL,
  `price_clipart` float NOT NULL,
  `price_attributes` float NOT NULL,
  `quantity` int(5) NOT NULL,
  `poduct_status` varchar(200) NOT NULL,
  `attributes` text NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order';

-- ----------------------------
-- Records of dg_order_items
-- ----------------------------
INSERT INTO `dg_order_items` VALUES ('1', '1', 'B2568FB43E86887', '1', '(Gildan 2000) Ultra Cotton 6.1oz.', 'sadfds', '10', '0', '0', '0', '12', 'pending', '\"[{\\\"name\\\":\\\"Enter Sizes and Print Location\\\",\\\"type\\\":\\\"textlist\\\",\\\"value\\\":{\\\"SM\\\":\\\"12\\\"}}]\"', '2016-01-08 02:06:07', '2016-01-08 02:06:07');
INSERT INTO `dg_order_items` VALUES ('2', '2', 'A056AF1DFC5B07F', '1', '(Gildan 2000) Ultra Cotton 6.1oz.', 'SKU001', '10', '0', '0', '0', '3', 'pending', '\"[{\\\"name\\\":\\\"Enter Sizes and Print Location\\\",\\\"type\\\":\\\"textlist\\\",\\\"value\\\":{\\\"MD\\\":\\\"3\\\"}}]\"', '2016-02-01 09:57:32', '2016-02-01 09:57:32');
INSERT INTO `dg_order_items` VALUES ('3', '3', '8756B3229028557', '1', '(Gildan 2000) Ultra Cotton 6.1oz.', 'SKU001', '10', '4', '0', '0', '1', 'pending', '\"[{\\\"name\\\":\\\"Enter Sizes and Print Location\\\",\\\"type\\\":\\\"textlist\\\",\\\"value\\\":{\\\"MD\\\":\\\"1\\\"}}]\"', '2016-02-04 11:06:08', '2016-02-04 11:06:08');

-- ----------------------------
-- Table structure for `dg_pages`
-- ----------------------------
DROP TABLE IF EXISTS `dg_pages`;
CREATE TABLE `dg_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `published` int(1) NOT NULL DEFAULT '1',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_pages
-- ----------------------------
INSERT INTO `dg_pages` VALUES ('13', 'Static page', 'static', '<div data-id=\"87\" class=\"row-elment col-md-12 module-54fc293a27916 \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"></div><div class=\"col-elment col-md-6\"><div class=\"module-margin module-video54c7dc7335072\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:video/index,85}</div></div></div></div></div></div><div class=\"col-elment col-md-3\"></div></div></div><style>{module:row/index,87}</style></div><div data-id=\"154\" class=\"row-elment col-md-12 module-54fc29beb6fdb \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c312d45bb90\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:p_categories/index,70}</div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:c_categories/index,74}</div></div></div></div></div></div></div></div><style>{module:row/index,154}</style></div><div data-id=\"88\" class=\"row-elment col-md-12 module-54fc29dc89423 \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"module-margin module-categories54c3449a79236\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:a_categories/index,73}</div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"module-margin module-lastest_article54cc36ebc99b9\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:lastest_article/index,91}</div></div></div></div></div></div></div></div><style>{module:row/index,88}</style></div>', '<div data-id=\"87\" class=\"row-elment col-md-12 module-54fc293a27916 \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-video54c7dc7335072\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;video&quot;, 85, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:video/index,85}</div><div class=\"js-elment module-info\"><strong>video: Home Video</strong></div></div></div></div></div></div><div class=\"col-elment col-md-3\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div></div></div></div><style>{module:row/index,87}</style></div><div data-id=\"154\" class=\"row-elment col-md-12 module-54fc29beb6fdb \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c312d45bb90\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;p_categories&quot;, 70, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:p_categories/index,70}</div><div class=\"js-elment module-info\"><strong>p_categories: Product Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c3481057942\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;c_categories&quot;, 74, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:c_categories/index,74}</div><div class=\"js-elment module-info\"><strong>c_categories: Design Idea Categories</strong></div></div></div></div></div></div></div></div><style>{module:row/index,154}</style></div><div data-id=\"88\" class=\"row-elment col-md-12 module-54fc29dc89423 \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54c3449a79236\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;a_categories&quot;, 73, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:a_categories/index,73}</div><div class=\"js-elment module-info\"><strong>a_categories: Blog Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-lastest_article54cc36ebc99b9\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button onclick=\"grid.module.setting(&quot;lastest_article&quot;, 91, this)\" class=\"btn btn btn-teal btn-xs js-control-edit\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:lastest_article/index,91}</div><div class=\"js-elment module-info\"><strong>lastest_article: Lastest Article</strong></div></div></div></div></div></div></div></div><style>{module:row/index,88}</style></div>', 'Demo static page', 'demo;static page', 'Demo static page', '1', '');
INSERT INTO `dg_pages` VALUES ('21', 'Contact Us', 'contact-us', '<div data-id=\"144\" class=\"row-elment col-md-12 module-54fc1f05f2541 full-width\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"module-margin module-maps54fbddcd0e89a\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:maps/index,142}</div></div></div></div></div></div></div></div><style>{module:row/index,144}</style></div><div class=\"row-elment col-md-12\"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"module-margin module-contact54b253c063867\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_contact/index,6}</div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"module-margin module-custom54fbde76ef7e6\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_custom/index,143}</div></div></div></div></div></div></div></div></div>', '<div data-id=\"144\" class=\"row-elment col-md-12 module-54fc1f05f2541 full-width\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-maps54fbddcd0e89a\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;maps&quot;, 142, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:maps/index,142}</div><div class=\"js-elment module-info\"><strong>maps: maps</strong></div></div></div></div></div></div></div></div><style>{module:row/index,144}</style></div><div class=\"row-elment col-md-12\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-contact54b253c063867\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;m_contact&quot;, 6, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_contact/index,6}</div><div class=\"js-elment module-info\"><strong>m_contact: Contact</strong></div></div></div></div></div></div><div class=\"col-elment col-md-6\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-custom54fbde76ef7e6\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;m_custom&quot;, 143, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_custom/index,143}</div><div class=\"js-elment module-info\"><strong>m_custom: Contact Infomation</strong></div></div></div></div></div></div></div></div></div>', 'Contact Us', '', '', '1', '');
INSERT INTO `dg_pages` VALUES ('22', 'How to order', 'how-to-order', '<div data-id=\"154\" class=\"row-elment col-md-12 module-54fc29beb6fdb \"><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"module-margin module-categories54fbfefd6c4bd\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:p_categories/index,146}</div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"module-margin module-custom568d1ab423302\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"module-main\">{module:m_custom/index,182}</div></div></div></div></div></div></div></div><style>{module:row/index,154}</style></div>', '<div data-id=\"154\" class=\"row-elment col-md-12 module-54fc29beb6fdb \"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-row btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Row</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.row.config(this, \'row\')\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a class=\"\" href=\"javascript:void(0)\" onclick=\"grid.row.layout(this)\"><i class=\"clip-grid\"></i> Change layout</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.add(this)\"><i class=\"glyphicon glyphicon-plus\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.row.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete row</a></li></ul></div></div><div class=\"container\"><div class=\"row-content row\"><div class=\"col-elment col-md-3\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-categories54fbfefd6c4bd\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;p_categories&quot;, 146, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:p_categories/index,146}</div><div class=\"js-elment module-info\"><strong>p_categories: Categories</strong></div></div></div></div></div></div><div class=\"col-elment col-md-9\"><div class=\"js-elment js-control\"><div class=\"js-control-col btn-group\"><button type=\"button\" class=\"btn-xs btn-elment-col btn dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"js-control-text\">Column</span> <span class=\"caret\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a href=\"javascript:void(0)\" onclick=\"grid.col.config(this)\"><i class=\"fa fa-wrench\"></i> Settings</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.addRow(this)\"><i class=\"clip-list-5\"></i> Add new row</a></li><li><a href=\"javascript:void(0)\" onclick=\"grid.col.remove(this)\"><i class=\"glyphicon glyphicon-trash\"></i> Delete column</a></li></ul></div></div><div class=\"module-margin module-custom568d1ab423302\"><div class=\"module-border\"><div class=\"module-padding\"><div class=\"module-content\"><div class=\"js-elment js-button\"><center><div class=\"btn-group\"><button class=\"btn btn btn-teal btn-xs js-control-edit\" onclick=\"grid.module.setting(&quot;m_custom&quot;, 182, this)\"><i class=\"fa fa-pencil\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.module.view(this)\"><i class=\"fa fa-plus\"></i></button><button class=\"btn btn btn-teal btn-xs\" onclick=\"grid.row.remove(this)\"><i class=\"fa fa-trash-o\"></i></button></div></center></div><div class=\"module-main\">{module:m_custom/index,182}</div><div class=\"js-elment module-info\"><strong>m_custom: How to Order</strong></div></div></div></div></div></div></div></div><style>{module:row/index,154}</style></div>', 'How to order', 'How to order', 'How to order', '1', '');

-- ----------------------------
-- Table structure for `dg_payments`
-- ----------------------------
DROP TABLE IF EXISTS `dg_payments`;
CREATE TABLE `dg_payments` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `default` varchar(1) NOT NULL DEFAULT '0',
  `published` varchar(1) NOT NULL DEFAULT '1',
  `configs` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_payments
-- ----------------------------
INSERT INTO `dg_payments` VALUES ('1', 'paypal', 'payment by paypal', 'paypal', '1', '1', '{\"sandbox\":\"1\",\"publish\":\"1\",\"email\":\" nxminh.ictu-facilitator@gmail.com \",\"api_username\":\"nxminh.ictu-facilitator_api1.gmail.com\",\"password\":\"AUNCKGBVSADY7DJW\",\"signature\":\"AFcWxV21C7fd0v3bYYYRCpSSRl31At6swFz3VXQcV47glwJBgbr0dJHe\",\"currency_code\":\"USD\"}', '0000-00-00 00:00:00');
INSERT INTO `dg_payments` VALUES ('3', 'Authorize', 'Payment by authorize', 'authorize', '0', '1', '{\"sandbox\":\"1\",\"publish\":\"1\",\"api_login_id\":\"9Bc5csG4t\",\"transaction_key\":\"2yRc4p8G5U6h7ADu\"}', '2015-02-09 03:49:22');
INSERT INTO `dg_payments` VALUES ('4', 'Direct payments', 'Direct payments', 'direct', '0', '1', '{\"publish\":\"1\",\"message\":\"<p>bank: test;<\\/p>\\n<p>name: asdflkasdjfklsd;<\\/p>\\n<p>phone: 123456789<\\/p>\"}', '2015-03-05 04:19:35');

-- ----------------------------
-- Table structure for `dg_print_price`
-- ----------------------------
DROP TABLE IF EXISTS `dg_print_price`;
CREATE TABLE `dg_print_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` text NOT NULL,
  `prices` text NOT NULL,
  `location` enum('front','back') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_print_price
-- ----------------------------
INSERT INTO `dg_print_price` VALUES ('1', '[[\"12\",\"12\"],[\"13\",\"24\"],[\"25\",\"36\"],[\"37\",\"48\"],[\"49\",\"72\"],[\"73\",\"96\"],[\"97\",\"120\"],[\"121\",\"200\"],[\"201\",\"300\"],[\"301\",\"400\"],[\"401\",\"500\"],[\"501\",\"750\"],[\"751\",\"1000\"],[\"1001\",\"1500\"]]', '[[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"]]', 'front');
INSERT INTO `dg_print_price` VALUES ('2', '[[\"12\",\"12\"],[\"13\",\"30\"],[\"13\",\"30\"],[\"13\",\"30\"],[\"13\",\"30\"],[\"13\",\"30\"],[\"12\",\"12\"],[\"13\",\"30\"],[\"13\",\"30\"],[\"13\",\"30\"],[\"13\",\"30\"],[\"13\",\"30\"],[\"13\",\"30\"],[\"13\",\"30\"]]', '[[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"],[\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\"]]', 'back');

-- ----------------------------
-- Table structure for `dg_products`
-- ----------------------------
DROP TABLE IF EXISTS `dg_products`;
CREATE TABLE `dg_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `size` text COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `layout` int(5) NOT NULL,
  `print_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `sale_price` float NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `gallery` text COLLATE utf8_unicode_ci NOT NULL,
  `min_order` int(2) NOT NULL,
  `max_oder` int(5) NOT NULL,
  `default` int(1) DEFAULT '0',
  `future` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL,
  `created` datetime NOT NULL,
  `ordering` int(5) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_products
-- ----------------------------
INSERT INTO `dg_products` VALUES ('1', '(Gildan 2000) Ultra Cotton 6.1oz.', 'Ultra-Cotton-610z', '', 'preshrunk 100% cotton jersey (blended cotton/polyester in antique heather and safety colors)\r\n6-oz.\r\nseamless double-needle 7/8″ collar\r\ntaped neck and shoulders\r\ndouble-needle sleeve and bottom hems\r\nquarter-turned to eliminate center crease', '<p>&nbsp;</p>\r\n<table style=\"height: 99px;\" width=\"581\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\"><strong>&nbsp;Size</strong></td>\r\n<td style=\"text-align: center;\"><strong>S</strong></td>\r\n<td style=\"text-align: center;\"><strong>M</strong></td>\r\n<td style=\"text-align: center;\"><strong>L</strong></td>\r\n<td style=\"text-align: center;\"><strong>XL</strong></td>\r\n<td style=\"text-align: center;\"><strong>XXL</strong></td>\r\n<td style=\"text-align: center;\"><strong>XXXL</strong></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #404040; font-family: \'Helvetica Neue\', Arial, Helvetica, Corbel, Calibri, \'Trebuchet MS\', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">&nbsp;Measure A (inch)</span></td>\r\n<td style=\"text-align: center;\">&nbsp;<span style=\"color: #404040; font-family: \'Helvetica Neue\', Arial, Helvetica, Corbel, Calibri, \'Trebuchet MS\', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">24.5</span></td>\r\n<td style=\"text-align: center;\">&nbsp;<span style=\"color: #404040; font-family: \'Helvetica Neue\', Arial, Helvetica, Corbel, Calibri, \'Trebuchet MS\', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">25.5</span></td>\r\n<td style=\"text-align: center;\">&nbsp;<span style=\"color: #404040; font-family: \'Helvetica Neue\', Arial, Helvetica, Corbel, Calibri, \'Trebuchet MS\', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">26.5</span></td>\r\n<td style=\"text-align: center;\">&nbsp;<span style=\"color: #404040; font-family: \'Helvetica Neue\', Arial, Helvetica, Corbel, Calibri, \'Trebuchet MS\', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">28.0</span></td>\r\n<td style=\"text-align: center;\">&nbsp;<span style=\"color: #404040; font-family: \'Helvetica Neue\', Arial, Helvetica, Corbel, Calibri, \'Trebuchet MS\', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">28.7</span></td>\r\n<td style=\"text-align: center;\">&nbsp;26.5</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #404040; font-family: \'Helvetica Neue\', Arial, Helvetica, Corbel, Calibri, \'Trebuchet MS\', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #ffffff;\">&nbsp;Measure B (inch)</span></td>\r\n<td style=\"text-align: center;\">&nbsp;18.0</td>\r\n<td style=\"text-align: center;\">&nbsp;20.0</td>\r\n<td style=\"text-align: center;\">&nbsp;21.5</td>\r\n<td style=\"text-align: center;\">&nbsp;24.0</td>\r\n<td style=\"text-align: center;\">&nbsp;26.0</td>\r\n<td style=\"text-align: center;\">&nbsp;28.0</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'SKU001', '9', 'screen', '12', '10', 'media/assets/products/(Gildan 2000) Ultra Cotton 6.1oz/thumb.png', '', '1', '99', '1', '1', '1', '2015-01-10 11:31:51', '0', '144', '', 'Gildan 2000', '', 'Gildan 2000');
INSERT INTO `dg_products` VALUES ('12', '(Gildan 5000) 5.3 oz. Heavy Cotton', 'mens-polo', '', 'Gildan – Heavy Cotton 100% Cotton T-Shirt. 5000\r\n|\r\n5.3-ounce, 100% cotton (preshrunk)\r\nSeamless double-needle collar\r\nDouble-needle sleeves and hem\r\nTaped neck and shoulders', '<table class=\"assort_sizes full_width\" style=\"height: 79px;\" width=\"349\">\r\n<thead>\r\n<tr><th>Size</th><th>S</th><th>M</th><th>L</th><th>XL</th><th>XXL</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Measure A (inch)</td>\r\n<td>27.4</td>\r\n<td>28.0</td>\r\n<td>29.8</td>\r\n<td>30.3</td>\r\n<td>32.5</td>\r\n</tr>\r\n<tr class=\"even\">\r\n<td>Measure B (inch)</td>\r\n<td>17.8</td>\r\n<td>20.2</td>\r\n<td>21.5</td>\r\n<td>24.5</td>\r\n<td>28.5</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'SKU8452', '9', 'screen', '16', '0', 'media/assets/products/(Gildan 5000) 5.3 oz. Heavy Cotton/797_000000.jpg', 'media/assets/products/(Gildan 2300) Ultra Cotton T-Shirt with Pocket/1084_000000.jpg;media/assets/products/(Gildan 2300) Ultra Cotton T-Shirt with Pocket/1084_154396.jpg;media/assets/products/(Gildan 2300) Ultra Cotton T-Shirt with Pocket/1084_1c2041.jpg;media/assets/products/(Gildan 2300) Ultra Cotton T-Shirt with Pocket/1084_304328.jpg;media/assets/products/(Gildan 2300) Ultra Cotton T-Shirt with Pocket/1084_510090.jpg', '0', '0', '0', '1', '1', '2015-03-08 05:24:04', '0', '144', '', '', '', '');
INSERT INTO `dg_products` VALUES ('13', '(Gildan 8000) 50/50 DryBlend Poly', 'gildan-8000-5050-dryblend-poly', '', 'preshrunk 50% cotton/50% dryblend polyester jersey\r\n5.6-oz.\r\nmoisture-wicking fabric\r\nseamless double-needle 7/8″ collar\r\ntaped neck and shoulders\r\ndouble-needle sleeve and bottom hems\r\nheat transfer label', '', 'tshirt03', '9', 'screen', '12', '0', 'media/assets/products/(Gildan 8000) 50/810_ff6600.jpg', 'media/assets/products/(Gildan 8000) 50/810_999d9e.jpg;media/assets/products/(Gildan 8000) 50/810_9c0724.jpg;media/assets/products/(Gildan 8000) 50/810_a6ccd4.jpg', '1', '99', '0', '0', '1', '2016-01-14 09:56:28', '0', '144', '', '', '', '');
INSERT INTO `dg_products` VALUES ('20', '(Hanes 5180) 6.1 oz. Beefy T', 'hanes-5180-61-oz-beefy-t', '<p><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">preshrunk 100% ring-spun cotton</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">6.1-oz.</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">high-stitch-density fabric for superior printability</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">shoulder-to-shoulder taping</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">double-needle cover-seamed neck with lay-flat collar</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">double-needle sleeve and bottom hems</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">tag free neck label</span></p>', 'Key Features:\r\npreshrunk 100% ring-spun cotton\r\n6.1-oz.\r\nhigh-stitch-density fabric for superior printability\r\nshoulder-to-shoulder taping\r\ndouble-needle cover-seamed neck with lay-flat collar\r\ndouble-needle sleeve and bottom hems\r\ntag free neck label', '', 'tshirthanes5180', '9', 'screen', '12', '0', 'media/assets/products/(Hanes 5180) 6.1 oz. Beefy T/1086_c73d79.jpg', 'media/assets/products/(Hanes 5180) 6.1 oz. Beefy T/1086_c73d79.jpg;media/assets/products/(Hanes 5180) 6.1 oz. Beefy T/1086_3e94b6.jpg;media/assets/products/(Hanes 5180) 6.1 oz. Beefy T/1086_474a48.jpg;media/assets/products/(Hanes 5180) 6.1 oz. Beefy T/1086_6cabe7.jpg', '0', '0', '0', '1', '1', '2016-01-10 04:56:48', '0', '144', '', '', '', '');
INSERT INTO `dg_products` VALUES ('21', 'Gildan Heavy Blend 50/50 Full Zip-Up', 'gildan-heavy-blend-5050-full-zip-up', '', 'Gildan Adult Heavy Blend Full-Zip Hooded Sweatshirt\r\nDescription: Soft and pill-free, so this sweatshirt will be a walking billboard for years.\r\nKey Features:\r\npreshrunk 50% cotton/50% polyester\r\n8-oz.\r\nquarter-turned to eliminate center crease\r\nColors available:\r\nS-5XL: Ash (50/50), Black, Cardinal Red, Carolina Blue, Dark Chocolate, Forest Green, Irish Green, Light Blue, Light Pink, Maroon, Navy, Orange, Purple, Red, Royal, Safety Green, Safety Orange, Sport Grey (50/50), White', '', 'SKU003', '9', 'screen', '15', '0', 'media/assets/t-shirt/front_1411447323.png', 'media/assets/t-shirt/1410656688.png;media/assets/t-shirt/back_1412128115.png;media/assets/t-shirt/back_1412181069.png;media/assets/t-shirt/front_1411447323.png;media/assets/t-shirt/left_1412128115.png;media/assets/t-shirt/left_1412181069.png;media/assets/t-shirt/right_1412128567.png;media/assets/t-shirt/right_1412181069.png', '0', '0', '0', '1', '1', '2016-01-10 06:22:57', '0', '144', '', '', '', '');
INSERT INTO `dg_products` VALUES ('22', '(Gildan 2300) Ultra Cotton T-Shirt with Pocket', 'gildan-2300-ultra-cotton-t-shirt-with-pocket', '<p><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">preshrunk 100% cotton jersey</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">6-oz.</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">seamless double-needle 7/8&Prime; collar</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">taped neck and shoulders</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">double-needle sleeves</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">bottom hem and 5-point left-chest pocket</span><br style=\"margin: 0px; padding: 0px; font-family: myrid-pro; color: #333333; font-size: 14px; line-height: 20px;\" /><span style=\"color: #333333; font-family: myrid-pro; font-size: 14px; line-height: 20px;\">quarter-turned to eliminate center crease</span></p>', 'preshrunk 100% cotton jersey\r\n6-oz.\r\nseamless double-needle 7/8″ collar\r\ntaped neck and shoulders\r\ndouble-needle sleeves\r\nbottom hem and 5-point left-chest pocket\r\nquarter-turned to eliminate center crease', '', 'tshirtGildan2300', '9', 'screen', '10', '0', 'media/assets/products/(Gildan 2300) Ultra Cotton T-Shirt with Pocket/1084_999d9e.jpg', 'media/assets/products/(Gildan 2300) Ultra Cotton T-Shirt with Pocket/1084_304328.jpg;media/assets/products/(Gildan 2300) Ultra Cotton T-Shirt with Pocket/1084_510090.jpg', '12', '10000', '0', '0', '1', '2016-01-21 08:53:40', '0', '144', '', '', '', '');

-- ----------------------------
-- Table structure for `dg_products_design`
-- ----------------------------
DROP TABLE IF EXISTS `dg_products_design`;
CREATE TABLE `dg_products_design` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `color_hex` text COLLATE utf8_unicode_ci NOT NULL,
  `color_title` text COLLATE utf8_unicode_ci NOT NULL,
  `price` text COLLATE utf8_unicode_ci NOT NULL,
  `default` text COLLATE utf8_unicode_ci NOT NULL,
  `front` text COLLATE utf8_unicode_ci NOT NULL,
  `back` text COLLATE utf8_unicode_ci NOT NULL,
  `left` text COLLATE utf8_unicode_ci NOT NULL,
  `right` text COLLATE utf8_unicode_ci NOT NULL,
  `area` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `ordering` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_products_design
-- ----------------------------
INSERT INTO `dg_products_design` VALUES ('1', '1', '[\"000000\",\"E3E4E6\",\"FF78D1\",\"2A3A4B\",\"76042D\",\"7287B2\",\"534A48\",\"951C33\",\"64462B\",\"F9D320\",\"462A19\",\"303232\",\"304328\",\"178B92\",\"001140\",\"C8287B\",\"EDB45C\",\"D4D4D4\",\"3C4866\",\"4D6BB9\",\"569A32\",\"438A86\",\"3A7A51\",\"8AA140\",\"C4D8F6\",\"FDD3E2\",\"C2FF6E\",\"6C1039\",\"162F61\",\"554D2E\",\"FFF2DB\",\"1C2041\",\"443C1A\",\"FF6600\",\"C7B5F0\",\"B73933\",\"D1ED77\",\"510090\",\"AC1223\",\"154396\",\"E3FF0F\",\"EA6016\",\"FE9CC1\",\"CCC6AD\",\"0D69BE\",\"B9D8A9\",\"A6CCD4\",\"999D9E\",\"8490AB\",\"BFA87C\",\"FFA64D\",\"82411D\",\"ECDC9E\",\"FFFFFF\"]', '[\"black\",\"Ash (99\\/1)\",\"Azalea\",\"Blue Dusk\",\"Cardinal\",\"Carolina Blue\",\"Charcoal\",\"Cherry Red\",\"Chestnut\",\"Daisy\",\"Dark Chocolate\",\"Dark Heather (50\\/50)\",\"Forest Green\",\"Galapogos Blue\",\"Heather Navy (50\\/50)\",\"Heliconia\",\"Honey\",\"Ice Grey\",\"Indigo Blue\",\"Iris\",\"Irish Green\",\"Jade Dome\",\"Kelly Green\",\"Kiwi\",\"Light Blue\",\"Light Pink\",\"Lime\",\"Maroon\",\"Metro Blue\",\"Military Green\",\"Natural\",\"Navy\",\"Olive\",\"Blaze Orange\",\"Orchid\",\"Paprika\",\"Pistachio\",\"Purple\",\"Red\",\"Royal\",\"Safety Green (50\\/50)\",\"Safety Orange (50\\/50)\",\"Safety Pink\",\"Sand\",\"Sapphire\",\"Serene Green\",\"Sky\",\"Sport Grey (90\\/10)\",\"Stone Blue\",\"Tan\",\"Tangerine\",\"Texas Orange\",\"Vegas Gold\",\"White\"]', '[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"]', '', '[\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'286px\',\'height\':\'383px\',\'top\':\'62px\',\'left\':\'98px\',\'zIndex\':\'100\',\'img\':\'\\/\\/\\/media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_000000.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'293px\',\'height\':\'387px\',\'top\':\'62px\',\'left\':\'94px\',\'zIndex\':\'auto\',\'img\':\'\\/\\/\\/media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_e3e4e6.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'53px\',\'left\':\'94px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_ff78d1.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'96px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_2a3a4b.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'90px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_76042d.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'53px\',\'left\':\'90px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_7287b2.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'90px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_534a48.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'79px\',\'left\':\'91px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_951c33.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'51px\',\'left\':\'96px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_64462b.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'92px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_f9d320.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'94px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_462a19.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-1\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'53px\',\'left\':\'95px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_303232.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'51px\',\'left\':\'93px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_304328.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'75px\',\'left\':\'91px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_178b92.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'79px\',\'left\':\'91px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_001140.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'97px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_c8287b.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'80px\',\'left\':\'95px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_edb45c.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'53px\',\'left\':\'93px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_d4d4d4.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'79px\',\'left\':\'100px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_3c4866.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'96px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_4d6bb9.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'51px\',\'left\':\'95px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_569a32.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'51px\',\'left\':\'98px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_438a86.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'54px\',\'left\':\'94px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_3a7a51.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'79px\',\'left\':\'93px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_8aa140.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'100px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_c4d8f6.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'94px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_fdd3e2.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'51px\',\'left\':\'96px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_c2ff6e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'53px\',\'left\':\'93px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_6c1039.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'51px\',\'left\':\'98px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_162f61.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'51px\',\'left\':\'102px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_554d2e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'92px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_fff2db.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'53px\',\'left\':\'92px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_1c2041.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'93px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_443c1a.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'80px\',\'left\':\'94px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_ff6600.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'80px\',\'left\':\'96px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_c7b5f0.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'79px\',\'left\':\'96px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_b73933.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'91px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_d1ed77.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'53px\',\'left\':\'95px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_510090.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'94px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_ac1223.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'95px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_154396.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'78px\',\'left\':\'93px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_e3ff0f.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'79px\',\'left\':\'95px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_ea6016.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'80px\',\'left\':\'96px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_fe9cc1.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'53px\',\'left\':\'93px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_ccc6ad.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'98px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_0d69be.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'51px\',\'left\':\'95px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_b9d8a9.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'80px\',\'left\':\'96px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_a6ccd4.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'80px\',\'left\':\'93px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_999d9e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'53px\',\'left\':\'97px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_8490ab.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'51px\',\'left\':\'97px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_bfa87c.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'53px\',\'left\':\'97px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_ffa64d.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'54px\',\'left\':\'96px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_82411d1.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'51px\',\'left\':\'93px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_ecdc9e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'52px\',\'left\':\'95px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2000) Ultra Cotton 6.1oz\\/793_ffffff.jpg\'}}\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '{\"front\":\"{\'width\':244,\'height\':385,\'left\':\'115px\',\'top\':\'62px\',\'radius\':\'0px\',\'zIndex\':\'200\'}\",\"back\":\"{\'width\':211,\'height\':294,\'left\':\'141px\',\'top\':\'101px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"left\":\"{\'width\':71,\'height\':132,\'left\':\'206px\',\'top\':\'107px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"right\":\"{\'width\':69,\'height\':138,\'left\':\'235px\',\'top\':\'101px\',\'radius\':\'0px\',\'zIndex\':\'\'}\"}', '1', '{\"front\":\"{\'width\':\'28\',\'height\':\'44.16\',\'lockW\':true,\'lockH\':true,\'setbg\':true,\'shape\':\'square\',\'shapeVal\':0}\",\"back\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"left\":\"{\'width\':\'10\',\'height\':\'19.13\',\'lockW\':true,\'lockH\':false,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"right\":\"{\'width\':\'10\',\'height\':\'20.60\',\'lockW\':true,\'lockH\':false,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\"}', '[\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\"]');
INSERT INTO `dg_products_design` VALUES ('12', '12', '[\"FFA500\",\"FFFF00\",\"0000FF\",\"000080\",\"E6E6FA\",\"E3E4E6\",\"FF78D1\",\"000000\",\"76042D\",\"7287B2\",\"534A48\",\"F9D320\",\"462A19\",\"304328\",\"7A1B31\",\"C8287B\",\"3C4866\",\"569A32\",\"8AA140\",\"C4D8F6\",\"FDD3E2\",\"C2FF6E\",\"6C1039\",\"554D2E\",\"FFF2DB\",\"1C2041\",\"F7B016\",\"FF6600\",\"510090\",\"AC1223\",\"154396\",\"0D69BE\",\"A6CCD4\",\"999D9E\",\"F35709\",\"FFFFFF\",\"FFE58C\",\"E3FF0F\",\"EA6016\"]', '[\"Orange\",\"Yellow\",\"Blue\",\"Navy\",\"Lavender\",\"ash\",\"Azalea\",\"black\",\"Cardinal\",\"Carolina Blue\",\"Charcoal\",\"Daisy\",\"Dark Chocolate\",\"Forest Green\",\"Garnet\",\"Heliconia\",\"Indigo Blue\",\"Irish Green\",\"Kiwi\",\"Light Blue\",\"Light Pink\",\"Lime\",\"Maroon\",\"Military Green\",\"Natural\",\"Navy\",\"Gold\",\"Blaze Orange\",\"Purple\",\"Red\",\"Royal\",\"Sapphire\",\"Sky\",\"Sport Grey (90\\/10)\",\"Tennessee Orange\",\"White\",\"Yellow Haze\",\"Safety Green (50\\/50)\",\"Safety Orange (50\\/50)\"]', '[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"]', '', '[\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'0px\',\'left\':\'0px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/product-design\\/mens-polo\\/front\\/Orange.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'0px\',\'left\':\'0px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/product-design\\/mens-polo\\/front\\/Yellow.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'0px\',\'left\':\'0px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/product-design\\/mens-polo\\/front\\/Blue.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'0px\',\'left\':\'0px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/product-design\\/mens-polo\\/front\\/Navy.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'0px\',\'left\':\'0px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/product-design\\/mens-polo\\/front\\/Lavender.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'79px\',\'left\':\'119px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_e3e4e6.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'77px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_ff78d1.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'76px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_000000.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'75px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_76042d.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'77px\',\'left\':\'110px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_7287b2.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'76px\',\'left\':\'106px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_534a48.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'76px\',\'left\':\'112px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_f9d320.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'78px\',\'left\':\'112px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_462a19.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'77px\',\'left\':\'115px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_304328.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'80px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_7a1b31.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'80px\',\'left\':\'110px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_c8287b.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'77px\',\'left\':\'109px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_3c4866.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'76px\',\'left\':\'110px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_569a32.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'80px\',\'left\':\'114px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_8aa140.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'78px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_c4d8f6.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'77px\',\'left\':\'110px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_fdd3e2.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'76px\',\'left\':\'113px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_c2ff6e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'78px\',\'left\':\'112px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_6c1039.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'79px\',\'left\':\'113px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_554d2e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'76px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_fff2db.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'78px\',\'left\':\'112px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_1c2041.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'78px\',\'left\':\'110px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_f7b016.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'76px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_ff6600.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'77px\',\'left\':\'113px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_510090.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'78px\',\'left\':\'114px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_ac1223.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'76px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_154396.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'76px\',\'left\':\'109px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_0d69be.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'79px\',\'left\':\'112px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_a6ccd4.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'75px\',\'left\':\'109px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_999d9e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'79px\',\'left\':\'110px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_f35709.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'78px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_ffffff.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'78px\',\'left\':\'105px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 5000) 5.3 oz. Heavy Cotton\\/797_ffe58c.jpg\'}}\",\"\",\"\"]', '[\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'0px\',\'left\':\'0px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/product-design\\/mens-polo\\/back\\/Orange.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'0px\',\'left\':\'0px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/product-design\\/mens-polo\\/back\\/Yellow.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'0px\',\'left\':\'0px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/product-design\\/mens-polo\\/back\\/Blue.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'0px\',\'left\':\'0px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/product-design\\/mens-polo\\/back\\/Navy.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'0px\',\'left\':\'0px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/product-design\\/mens-polo\\/back\\/Lavender.png\'}}\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '{\"front\":\"{\'width\':254,\'height\':372,\'left\':\'138px\',\'top\':\'79px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"back\":\"{\'width\':193,\'height\':269,\'left\':\'151px\',\'top\':\'165px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"left\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"right\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\"}', '1', '{\"front\":\"{\'width\':\'30\',\'height\':\'44\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"back\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"left\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"right\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\"}', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\"]');
INSERT INTO `dg_products_design` VALUES ('20', '20', '[\"E3E4E6\",\"000000\",\"722F35\",\"7287B2\",\"474A48\",\"0B380F\",\"13134E\",\"B10042\",\"3F5269\",\"45422F\",\"F7B016\",\"3A7A51\",\"C4D8F6\",\"A2A6A8\",\"C2FF6E\",\"6C1039\",\"FFF2DB\",\"1C2041\",\"FFA500\",\"676767\",\"E2C297\",\"510090\",\"CCC6AD\",\"646464\",\"A8B3AC\",\"3E94B6\",\"FFFFFF\",\"C73D79\",\"FFFF00\"]', '[\"Ash\",\"Black\",\"Cardinal\",\"Carolina Blue\",\"Charcoal Heather (60\\/40)\",\"Deep Forest\",\"Deep Navy\",\"Deep Red\",\"Denim Blue\",\"Fatigue Green\",\"Gold\",\"Kelly Green\",\"Light Blue\",\"Light Steel (90\\/10)\",\"Lime\",\"Maroon\",\"Natural\",\"Navy\",\"Orange\",\"Oxford Grey (60\\/40)\",\"Pebble\",\"Purple\",\"Sand\",\"Smoke Grey\",\"Stonewashed Green\",\"Teal\",\"white\",\"Wow Pink\",\"Yellow\"]', '[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"]', '', '[\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'67px\',\'left\':\'101px\',\'zIndex\':\'auto\',\'img\':\'\\/media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_dee1e2.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'70px\',\'left\':\'104px\',\'zIndex\':\'auto\',\'img\':\'\\/media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_000000.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'70px\',\'left\':\'103px\',\'zIndex\':\'auto\',\'img\':\'\\/media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_722f35.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'70px\',\'left\':\'105px\',\'zIndex\':\'auto\',\'img\':\'\\/media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_6cabe7.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'72px\',\'left\':\'102px\',\'zIndex\':\'auto\',\'img\':\'\\/media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_474a48.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'68px\',\'left\':\'108px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_0b380f.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'68px\',\'left\':\'101px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_13134e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'67px\',\'left\':\'104px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_b10042.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'66px\',\'left\':\'103px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_3f5269.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'65px\',\'left\':\'101px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_45422f.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'67px\',\'left\':\'107px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_ffc20e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'70px\',\'left\':\'103px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_00945b.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'68px\',\'left\':\'105px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_a9cbeb.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'67px\',\'left\':\'100px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_a2a6a8.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'67px\',\'left\':\'99px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_b9d989.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'70px\',\'left\':\'107px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_4e3038.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'67px\',\'left\':\'101px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_fbf3e8.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'72px\',\'left\':\'104px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_09095e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'66px\',\'left\':\'103px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_f7941d.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'69px\',\'left\':\'104px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_676767.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'69px\',\'left\':\'100px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_e2c297.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'68px\',\'left\':\'98px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_4b3086.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'69px\',\'left\':\'98px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_d5d0c6.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'67px\',\'left\':\'100px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_646464.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'65px\',\'left\':\'102px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_a8b3ac.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'69px\',\'left\':\'101px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_3e94b61.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'70px\',\'left\':\'102px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_ffffff1.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'66px\',\'left\':\'100px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_c73d79.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'302px\',\'height\':\'377px\',\'top\':\'67px\',\'left\':\'105px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Hanes 5180) 6.1 oz. Beefy T\\/1086_fdf86a.jpg\'}}\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '{\"front\":\"{\'width\':283,\'height\':390,\'left\':\'111px\',\'top\':\'55px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"back\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"left\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"right\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\"}', '1', '{\"front\":\"{\'width\':\'29\',\'height\':\'40\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"back\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"left\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"right\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\"}', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\"]');
INSERT INTO `dg_products_design` VALUES ('21', '21', '[\"FFFFFF\",\"000000\"]', '[\"white\",\"black\"]', '[\"0\",\"0\"]', '', '[\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'490px\',\'height\':\'490px\',\'top\':\'5px\',\'left\':\'8px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/t-shirt\\/front_1411447323.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'494px\',\'height\':\'494px\',\'top\':\'9px\',\'left\':\'4px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/t-shirt\\/1410656688.png\'}}\"]', '[\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'-18px\',\'left\':\'-10px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/t-shirt\\/back_1412128115.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'-11px\',\'left\':\'-11px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/t-shirt\\/back_1412181069.png\'}}\"]', '[\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'-6px\',\'left\':\'-11px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/t-shirt\\/left_1412128115.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'497px\',\'height\':\'497px\',\'top\':\'-6px\',\'left\':\'1px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/t-shirt\\/left_1412181069.png\'}}\"]', '[\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'-11px\',\'left\':\'-32px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/t-shirt\\/right_1412128567.png\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'502px\',\'height\':\'502px\',\'top\':\'-1px\',\'left\':\'-30px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/t-shirt\\/right_1412181069.png\'}}\"]', '{\"front\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"back\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"left\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"right\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\"}', '1', '{\"front\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"back\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"left\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"right\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\"}', '[\"1\",\"2\"]');
INSERT INTO `dg_products_design` VALUES ('22', '0', '', '', '', '', '', '', '', '', '{\"front\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"back\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"left\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"right\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\"}', '1', '{\"front\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"back\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"left\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"right\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\"}', '');
INSERT INTO `dg_products_design` VALUES ('23', '13', '[\"E3E4E6\",\"FF78D1\",\"000000\",\"7287B2\",\"F9D320\",\"462A19\",\"303232\",\"304328\",\"7A1B31\",\"F7B016\",\"C8287B\",\"569A32\",\"438A86\",\"3A7A51\",\"8AA140\",\"C4D8F6\",\"FDD3E2\",\"C2FF6E\",\"6C1039\",\"FFF2DB\",\"1C2041\",\"FF6600\",\"DA70D6\",\"B73933\",\"510090\",\"AC1223\",\"154396\",\"CCC6AD\",\"0D69BE\",\"A6CCD4\",\"999D9E\",\"BFA87C\",\"F35709\",\"82411D\",\"FFFFFF\"]', '[\"Ash (99\\/1)\",\"Azalea\",\"black\",\"Carolina Blue\",\"Daisy\",\"Dark Chocolate\",\"Dark Heather (50\\/50)\",\"Forest Green\",\"Garnet\",\"Gold\",\"Heliconia\",\"Irish Green\",\"Jade Dome\",\"Kelly Green\",\"Kiwi\",\"Light Blue\",\"Light Pink\",\"Lime\",\"Maroon\",\"Natural\",\"Navy\",\"Blaze Orange\",\"Orchild\",\"Paprika\",\"Purple\",\"Red\",\"Royal\",\"Sand\",\"Sapphire\",\"Sky\",\"Sport Grey (90\\/10)\",\"Tan\",\"Tennessee Orange\",\"Texas Orange\",\"white\"]', '[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"]', '', '[\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'63px\',\'left\':\'118px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_e3e4e6.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'54px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_ff78d1.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'54px\',\'left\':\'113px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_000000.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'53px\',\'left\':\'115px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_7287b2.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'53px\',\'left\':\'114px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_f9d320.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'54px\',\'left\':\'114px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_462a19.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'32px\',\'left\':\'115px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_303232.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'52px\',\'left\':\'115px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_304328.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'57px\',\'left\':\'109px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_7a1b31.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'54px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_f7b016.jpg\'}}\",\"\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'53px\',\'left\':\'113px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_569a32.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'32px\',\'left\':\'114px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_438a86.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'33px\',\'left\':\'119px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_3a7a51.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'56px\',\'left\':\'115px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_8aa140.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'52px\',\'left\':\'113px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_c4d8f6.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'52px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_fdd3e2.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'54px\',\'left\':\'114px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_c2ff6e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'52px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_6c1039.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'53px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_fff2db.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'54px\',\'left\':\'113px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_1c2041.jpg\'}}\",\"\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'59px\',\'left\':\'119px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_c7b5f0.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'368px\',\'top\':\'66px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_b73933.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'60px\',\'left\':\'110px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_510090.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'58px\',\'left\':\'111px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_ac1223.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'58px\',\'left\':\'106px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_154396.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'62px\',\'left\':\'106px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_ccc6ad.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'58px\',\'left\':\'112px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_0d69be.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'62px\',\'left\':\'115px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_a6ccd4.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'61px\',\'left\':\'112px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_999d9e.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'37px\',\'left\':\'113px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_bfa87c.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'62px\',\'left\':\'108px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_f35709.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'295px\',\'height\':\'395px\',\'top\':\'38px\',\'left\':\'114px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_82411d.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'374px\',\'top\':\'58px\',\'left\':\'107px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 8000) 50\\/810_ffffff.jpg\'}}\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '{\"front\":\"{\'width\':283,\'height\':390,\'left\':\'118px\',\'top\':\'43px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"back\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"left\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"right\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\"}', '1', '{\"front\":\"{\'width\':\'29\',\'height\':\'40\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"back\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"left\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"right\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\"}', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\"]');
INSERT INTO `dg_products_design` VALUES ('24', '22', '[\"E3E4E6\",\"000000\",\"534A48\",\"E3FF0F\",\"C4D8F6\",\"1C2041\",\"510090\",\"AC1223\",\"154396\",\"304328\",\"EA6016\",\"CCC6AD\",\"999D9E\",\"6C1039\",\"CCFF00\"]', '[\"Ash\",\"Black\",\"Charcoal\",\"Safety Green\",\"Light Blue\",\"Navy\",\"Purple\",\"Red\",\"Royal\",\"Green\",\"Safety Orange (50\\/50)\",\"Sand\",\"Sport Grey (90\\/10)\",\"Maroon\",\"Electric lime\"]', '[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"]', '', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'397px\',\'top\':\'47px\',\'left\':\'105px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2300) Ultra Cotton T-Shirt with Pocket\\/1084_ccc6ad.jpg\'}}\",\"{\'0\':{\'id\':\'area-design\'},\'1\':{\'id\':\'images-0\',\'width\':\'297px\',\'height\':\'371px\',\'top\':\'69px\',\'left\':\'99px\',\'zIndex\':\'auto\',\'img\':\'media\\/assets\\/products\\/(Gildan 2300) Ultra Cotton T-Shirt with Pocket\\/1084_999d9e.jpg\'}}\",\"\",\"\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '{\"front\":\"{\'width\':283,\'height\':390,\'left\':\'111px\',\'top\':\'51px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"back\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"left\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\",\"right\":\"{\'width\':204,\'height\':283,\'left\':\'135px\',\'top\':\'90px\',\'radius\':\'0px\',\'zIndex\':\'\'}\"}', '1', '{\"front\":\"{\'width\':\'29\',\'height\':\'40\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"back\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"left\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\",\"right\":\"{\'width\':\'21\',\'height\':\'29\',\'lockW\':true,\'lockH\':true,\'setbg\':false,\'shape\':\'square\',\'shapeVal\':0}\"}', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\"]');

-- ----------------------------
-- Table structure for `dg_product_categories`
-- ----------------------------
DROP TABLE IF EXISTS `dg_product_categories`;
CREATE TABLE `dg_product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_product_categories
-- ----------------------------
INSERT INTO `dg_product_categories` VALUES ('30', '4', '16');
INSERT INTO `dg_product_categories` VALUES ('28', '3', '16');
INSERT INTO `dg_product_categories` VALUES ('26', '2', '16');
INSERT INTO `dg_product_categories` VALUES ('58', '1', '89');
INSERT INTO `dg_product_categories` VALUES ('60', '6', '74');
INSERT INTO `dg_product_categories` VALUES ('61', '0', '89');
INSERT INTO `dg_product_categories` VALUES ('37', '8', '66');
INSERT INTO `dg_product_categories` VALUES ('76', '9', '65');
INSERT INTO `dg_product_categories` VALUES ('73', '10', '89');
INSERT INTO `dg_product_categories` VALUES ('72', '11', '89');
INSERT INTO `dg_product_categories` VALUES ('71', '12', '89');
INSERT INTO `dg_product_categories` VALUES ('70', '13', '89');
INSERT INTO `dg_product_categories` VALUES ('69', '14', '89');
INSERT INTO `dg_product_categories` VALUES ('65', '15', '63');
INSERT INTO `dg_product_categories` VALUES ('63', '18', '66');
INSERT INTO `dg_product_categories` VALUES ('66', '17', '89');
INSERT INTO `dg_product_categories` VALUES ('68', '16', '63');
INSERT INTO `dg_product_categories` VALUES ('81', '20', '89');
INSERT INTO `dg_product_categories` VALUES ('83', '21', '63');
INSERT INTO `dg_product_categories` VALUES ('84', '21', '66');
INSERT INTO `dg_product_categories` VALUES ('85', '22', '89');

-- ----------------------------
-- Table structure for `dg_product_prices`
-- ----------------------------
DROP TABLE IF EXISTS `dg_product_prices`;
CREATE TABLE `dg_product_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `min_quantity` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `max_quantity` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dg_product_prices
-- ----------------------------
INSERT INTO `dg_product_prices` VALUES ('1', '1', '[\"1\",\"11\",\"101\"]', '[\"10\",\"100\",\"1000\"]', '[\"12\",\"10\",\"8\"]');
INSERT INTO `dg_product_prices` VALUES ('2', '0', '[\"20\"]', '[\"50\"]', '[\"11.5\"]');

-- ----------------------------
-- Table structure for `dg_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `dg_sessions`;
CREATE TABLE `dg_sessions` (
  `session_id` varchar(32) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `last_activity` int(12) NOT NULL,
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_sessions
-- ----------------------------
INSERT INTO `dg_sessions` VALUES ('fde23e3d396c6ed2073e2a3b7b92b3e3', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '127.0.0.1', '1458313939', '');
INSERT INTO `dg_sessions` VALUES ('03f455e89f2e9ac5bfa4a29134f77dad', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '127.0.0.1', '1458313939', '');
INSERT INTO `dg_sessions` VALUES ('74eb222248a760cf3f54987c3a9a5205', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '127.0.0.1', '1458313939', '');
INSERT INTO `dg_sessions` VALUES ('9ce1970717fa38e609a7aad87bcae732', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '127.0.0.1', '1458313939', '');
INSERT INTO `dg_sessions` VALUES ('3111448313a0b03112a3d492eaf9a751', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '127.0.0.1', '1458313939', '');
INSERT INTO `dg_sessions` VALUES ('4a43ced687904c98640a7bf345dffa89', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '127.0.0.1', '1458313939', '');
INSERT INTO `dg_sessions` VALUES ('836199bec61c72eb6c6686b9565a0099', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '127.0.0.1', '1458313939', '');
INSERT INTO `dg_sessions` VALUES ('7277aa288df607ea792a10177a50de2a', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '127.0.0.1', '1458313939', '');
INSERT INTO `dg_sessions` VALUES ('a1706401b5e891bbefe42d9b9ab4d6bc', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', '127.0.0.1', '1458313939', 'a:4:{s:9:\"user_data\";s:0:\"\";s:5:\"token\";a:1:{s:32:\"df4135b9bdb6391f88cf046d482ab6af\";s:32:\"1049a20ec22015411282f9c40f56d41e\";}s:16:\"order_session_id\";s:32:\"a1706401b5e891bbefe42d9b9ab4d6bc\";s:4:\"user\";a:6:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:5:\"admin\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:25:\"t_tuan_thanh@yahoo.com.vn\";s:5:\"admin\";b:1;s:8:\"loggedin\";b:1;}}');

-- ----------------------------
-- Table structure for `dg_settings`
-- ----------------------------
DROP TABLE IF EXISTS `dg_settings`;
CREATE TABLE `dg_settings` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `settings` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_settings
-- ----------------------------
INSERT INTO `dg_settings` VALUES ('1', '{\"site_name\":\"Tee Vision Printing\",\"meta_description\":\"Tee Vision Printing - Online Solution For Printing\",\"meta_keywords\":\"Tee Vision Printing - Online Solution For Printing\",\"currency_id\":\"144\",\"currency_symbol\":\"$\",\"currency_code\":\"USD\",\"prints\":{\"DTG\":{\"4\":\"2\",\"3\":\"2\"},\"screen\":{\"4\":\"2\",\"3\":\"2\"},\"sublimation\":{\"4\":\"2\",\"3\":\"2\"},\"embroidery\":{\"4\":\"2\",\"3\":\"2\"}},\"site_upload_min\":\"0.001\",\"site_upload_max\":\"10\",\"site_upload_terms\":\"#\",\"admin_email\":\"admin@gmail.com\",\"app_id\":\"261093954069581\",\"app_secret\":\"e9b3eef59eb6536b2b1d6a62b31fde70\",\"theme\":\"default\",\"invoice_logo\":\"\"}', '2016-03-18 16:19:19');

-- ----------------------------
-- Table structure for `dg_shippings`
-- ----------------------------
DROP TABLE IF EXISTS `dg_shippings`;
CREATE TABLE `dg_shippings` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` varchar(1) NOT NULL DEFAULT '0',
  `price` float NOT NULL,
  `published` varchar(1) NOT NULL DEFAULT '1',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_shippings
-- ----------------------------
INSERT INTO `dg_shippings` VALUES ('1', 'test', 'test abc', '1', '10.5', '1', '2014-11-22 04:18:44');
INSERT INTO `dg_shippings` VALUES ('4', 'test abc', 'tesatdfafd asdfsdaf', '0', '5.1', '1', '2014-11-22 04:32:03');
INSERT INTO `dg_shippings` VALUES ('5', 'test abcde', 'test', '0', '12', '1', '2014-11-22 04:38:21');

-- ----------------------------
-- Table structure for `dg_states`
-- ----------------------------
DROP TABLE IF EXISTS `dg_states`;
CREATE TABLE `dg_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4033 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_states
-- ----------------------------
INSERT INTO `dg_states` VALUES ('1', '1', 'Badakhshan', 'BDS', '1');
INSERT INTO `dg_states` VALUES ('2', '1', 'Badghis', 'BDG', '1');
INSERT INTO `dg_states` VALUES ('3', '1', 'Baghlan', 'BGL', '1');
INSERT INTO `dg_states` VALUES ('4', '1', 'Balkh', 'BAL', '1');
INSERT INTO `dg_states` VALUES ('5', '1', 'Bamian', 'BAM', '1');
INSERT INTO `dg_states` VALUES ('6', '1', 'Farah', 'FRA', '1');
INSERT INTO `dg_states` VALUES ('7', '1', 'Faryab', 'FYB', '1');
INSERT INTO `dg_states` VALUES ('8', '1', 'Ghazni', 'GHA', '1');
INSERT INTO `dg_states` VALUES ('9', '1', 'Ghowr', 'GHO', '1');
INSERT INTO `dg_states` VALUES ('10', '1', 'Helmand', 'HEL', '1');
INSERT INTO `dg_states` VALUES ('11', '1', 'Herat', 'HER', '1');
INSERT INTO `dg_states` VALUES ('12', '1', 'Jowzjan', 'JOW', '1');
INSERT INTO `dg_states` VALUES ('13', '1', 'Kabul', 'KAB', '1');
INSERT INTO `dg_states` VALUES ('14', '1', 'Kandahar', 'KAN', '1');
INSERT INTO `dg_states` VALUES ('15', '1', 'Kapisa', 'KAP', '1');
INSERT INTO `dg_states` VALUES ('16', '1', 'Khost', 'KHO', '1');
INSERT INTO `dg_states` VALUES ('17', '1', 'Konar', 'KNR', '1');
INSERT INTO `dg_states` VALUES ('18', '1', 'Kondoz', 'KDZ', '1');
INSERT INTO `dg_states` VALUES ('19', '1', 'Laghman', 'LAG', '1');
INSERT INTO `dg_states` VALUES ('20', '1', 'Lowgar', 'LOW', '1');
INSERT INTO `dg_states` VALUES ('21', '1', 'Nangrahar', 'NAN', '1');
INSERT INTO `dg_states` VALUES ('22', '1', 'Nimruz', 'NIM', '1');
INSERT INTO `dg_states` VALUES ('23', '1', 'Nurestan', 'NUR', '1');
INSERT INTO `dg_states` VALUES ('24', '1', 'Oruzgan', 'ORU', '1');
INSERT INTO `dg_states` VALUES ('25', '1', 'Paktia', 'PIA', '1');
INSERT INTO `dg_states` VALUES ('26', '1', 'Paktika', 'PKA', '1');
INSERT INTO `dg_states` VALUES ('27', '1', 'Parwan', 'PAR', '1');
INSERT INTO `dg_states` VALUES ('28', '1', 'Samangan', 'SAM', '1');
INSERT INTO `dg_states` VALUES ('29', '1', 'Sar-e Pol', 'SAR', '1');
INSERT INTO `dg_states` VALUES ('30', '1', 'Takhar', 'TAK', '1');
INSERT INTO `dg_states` VALUES ('31', '1', 'Wardak', 'WAR', '1');
INSERT INTO `dg_states` VALUES ('32', '1', 'Zabol', 'ZAB', '1');
INSERT INTO `dg_states` VALUES ('33', '2', 'Berat', 'BR', '1');
INSERT INTO `dg_states` VALUES ('34', '2', 'Bulqize', 'BU', '1');
INSERT INTO `dg_states` VALUES ('35', '2', 'Delvine', 'DL', '1');
INSERT INTO `dg_states` VALUES ('36', '2', 'Devoll', 'DV', '1');
INSERT INTO `dg_states` VALUES ('37', '2', 'Diber', 'DI', '1');
INSERT INTO `dg_states` VALUES ('38', '2', 'Durres', 'DR', '1');
INSERT INTO `dg_states` VALUES ('39', '2', 'Elbasan', 'EL', '1');
INSERT INTO `dg_states` VALUES ('40', '2', 'Kolonje', 'ER', '1');
INSERT INTO `dg_states` VALUES ('41', '2', 'Fier', 'FR', '1');
INSERT INTO `dg_states` VALUES ('42', '2', 'Gjirokaster', 'GJ', '1');
INSERT INTO `dg_states` VALUES ('43', '2', 'Gramsh', 'GR', '1');
INSERT INTO `dg_states` VALUES ('44', '2', 'Has', 'HA', '1');
INSERT INTO `dg_states` VALUES ('45', '2', 'Kavaje', 'KA', '1');
INSERT INTO `dg_states` VALUES ('46', '2', 'Kurbin', 'KB', '1');
INSERT INTO `dg_states` VALUES ('47', '2', 'Kucove', 'KC', '1');
INSERT INTO `dg_states` VALUES ('48', '2', 'Korce', 'KO', '1');
INSERT INTO `dg_states` VALUES ('49', '2', 'Kruje', 'KR', '1');
INSERT INTO `dg_states` VALUES ('50', '2', 'Kukes', 'KU', '1');
INSERT INTO `dg_states` VALUES ('51', '2', 'Librazhd', 'LB', '1');
INSERT INTO `dg_states` VALUES ('52', '2', 'Lezhe', 'LE', '1');
INSERT INTO `dg_states` VALUES ('53', '2', 'Lushnje', 'LU', '1');
INSERT INTO `dg_states` VALUES ('54', '2', 'Malesi e Madhe', 'MM', '1');
INSERT INTO `dg_states` VALUES ('55', '2', 'Mallakaster', 'MK', '1');
INSERT INTO `dg_states` VALUES ('56', '2', 'Mat', 'MT', '1');
INSERT INTO `dg_states` VALUES ('57', '2', 'Mirdite', 'MR', '1');
INSERT INTO `dg_states` VALUES ('58', '2', 'Peqin', 'PQ', '1');
INSERT INTO `dg_states` VALUES ('59', '2', 'Permet', 'PR', '1');
INSERT INTO `dg_states` VALUES ('60', '2', 'Pogradec', 'PG', '1');
INSERT INTO `dg_states` VALUES ('61', '2', 'Puke', 'PU', '1');
INSERT INTO `dg_states` VALUES ('62', '2', 'Shkoder', 'SH', '1');
INSERT INTO `dg_states` VALUES ('63', '2', 'Skrapar', 'SK', '1');
INSERT INTO `dg_states` VALUES ('64', '2', 'Sarande', 'SR', '1');
INSERT INTO `dg_states` VALUES ('65', '2', 'Tepelene', 'TE', '1');
INSERT INTO `dg_states` VALUES ('66', '2', 'Tropoje', 'TP', '1');
INSERT INTO `dg_states` VALUES ('67', '2', 'Tirane', 'TR', '1');
INSERT INTO `dg_states` VALUES ('68', '2', 'Vlore', 'VL', '1');
INSERT INTO `dg_states` VALUES ('69', '3', 'Adrar', 'ADR', '1');
INSERT INTO `dg_states` VALUES ('70', '3', 'Ain Defla', 'ADE', '1');
INSERT INTO `dg_states` VALUES ('71', '3', 'Ain Temouchent', 'ATE', '1');
INSERT INTO `dg_states` VALUES ('72', '3', 'Alger', 'ALG', '1');
INSERT INTO `dg_states` VALUES ('73', '3', 'Annaba', 'ANN', '1');
INSERT INTO `dg_states` VALUES ('74', '3', 'Batna', 'BAT', '1');
INSERT INTO `dg_states` VALUES ('75', '3', 'Bechar', 'BEC', '1');
INSERT INTO `dg_states` VALUES ('76', '3', 'Bejaia', 'BEJ', '1');
INSERT INTO `dg_states` VALUES ('77', '3', 'Biskra', 'BIS', '1');
INSERT INTO `dg_states` VALUES ('78', '3', 'Blida', 'BLI', '1');
INSERT INTO `dg_states` VALUES ('79', '3', 'Bordj Bou Arreridj', 'BBA', '1');
INSERT INTO `dg_states` VALUES ('80', '3', 'Bouira', 'BOA', '1');
INSERT INTO `dg_states` VALUES ('81', '3', 'Boumerdes', 'BMD', '1');
INSERT INTO `dg_states` VALUES ('82', '3', 'Chlef', 'CHL', '1');
INSERT INTO `dg_states` VALUES ('83', '3', 'Constantine', 'CON', '1');
INSERT INTO `dg_states` VALUES ('84', '3', 'Djelfa', 'DJE', '1');
INSERT INTO `dg_states` VALUES ('85', '3', 'El Bayadh', 'EBA', '1');
INSERT INTO `dg_states` VALUES ('86', '3', 'El Oued', 'EOU', '1');
INSERT INTO `dg_states` VALUES ('87', '3', 'El Tarf', 'ETA', '1');
INSERT INTO `dg_states` VALUES ('88', '3', 'Ghardaia', 'GHA', '1');
INSERT INTO `dg_states` VALUES ('89', '3', 'Guelma', 'GUE', '1');
INSERT INTO `dg_states` VALUES ('90', '3', 'Illizi', 'ILL', '1');
INSERT INTO `dg_states` VALUES ('91', '3', 'Jijel', 'JIJ', '1');
INSERT INTO `dg_states` VALUES ('92', '3', 'Khenchela', 'KHE', '1');
INSERT INTO `dg_states` VALUES ('93', '3', 'Laghouat', 'LAG', '1');
INSERT INTO `dg_states` VALUES ('94', '3', 'Muaskar', 'MUA', '1');
INSERT INTO `dg_states` VALUES ('95', '3', 'Medea', 'MED', '1');
INSERT INTO `dg_states` VALUES ('96', '3', 'Mila', 'MIL', '1');
INSERT INTO `dg_states` VALUES ('97', '3', 'Mostaganem', 'MOS', '1');
INSERT INTO `dg_states` VALUES ('98', '3', 'M\'Sila', 'MSI', '1');
INSERT INTO `dg_states` VALUES ('99', '3', 'Naama', 'NAA', '1');
INSERT INTO `dg_states` VALUES ('100', '3', 'Oran', 'ORA', '1');
INSERT INTO `dg_states` VALUES ('101', '3', 'Ouargla', 'OUA', '1');
INSERT INTO `dg_states` VALUES ('102', '3', 'Oum el-Bouaghi', 'OEB', '1');
INSERT INTO `dg_states` VALUES ('103', '3', 'Relizane', 'REL', '1');
INSERT INTO `dg_states` VALUES ('104', '3', 'Saida', 'SAI', '1');
INSERT INTO `dg_states` VALUES ('105', '3', 'Setif', 'SET', '1');
INSERT INTO `dg_states` VALUES ('106', '3', 'Sidi Bel Abbes', 'SBA', '1');
INSERT INTO `dg_states` VALUES ('107', '3', 'Skikda', 'SKI', '1');
INSERT INTO `dg_states` VALUES ('108', '3', 'Souk Ahras', 'SAH', '1');
INSERT INTO `dg_states` VALUES ('109', '3', 'Tamanghasset', 'TAM', '1');
INSERT INTO `dg_states` VALUES ('110', '3', 'Tebessa', 'TEB', '1');
INSERT INTO `dg_states` VALUES ('111', '3', 'Tiaret', 'TIA', '1');
INSERT INTO `dg_states` VALUES ('112', '3', 'Tindouf', 'TIN', '1');
INSERT INTO `dg_states` VALUES ('113', '3', 'Tipaza', 'TIP', '1');
INSERT INTO `dg_states` VALUES ('114', '3', 'Tissemsilt', 'TIS', '1');
INSERT INTO `dg_states` VALUES ('115', '3', 'Tizi Ouzou', 'TOU', '1');
INSERT INTO `dg_states` VALUES ('116', '3', 'Tlemcen', 'TLE', '1');
INSERT INTO `dg_states` VALUES ('117', '4', 'Eastern', 'E', '1');
INSERT INTO `dg_states` VALUES ('118', '4', 'Manu\'a', 'M', '1');
INSERT INTO `dg_states` VALUES ('119', '4', 'Rose Island', 'R', '1');
INSERT INTO `dg_states` VALUES ('120', '4', 'Swains Island', 'S', '1');
INSERT INTO `dg_states` VALUES ('121', '4', 'Western', 'W', '1');
INSERT INTO `dg_states` VALUES ('122', '5', 'Andorra la Vella', 'ALV', '1');
INSERT INTO `dg_states` VALUES ('123', '5', 'Canillo', 'CAN', '1');
INSERT INTO `dg_states` VALUES ('124', '5', 'Encamp', 'ENC', '1');
INSERT INTO `dg_states` VALUES ('125', '5', 'Escaldes-Engordany', 'ESE', '1');
INSERT INTO `dg_states` VALUES ('126', '5', 'La Massana', 'LMA', '1');
INSERT INTO `dg_states` VALUES ('127', '5', 'Ordino', 'ORD', '1');
INSERT INTO `dg_states` VALUES ('128', '5', 'Sant Julia de Loria', 'SJL', '1');
INSERT INTO `dg_states` VALUES ('129', '6', 'Bengo', 'BGO', '1');
INSERT INTO `dg_states` VALUES ('130', '6', 'Benguela', 'BGU', '1');
INSERT INTO `dg_states` VALUES ('131', '6', 'Bie', 'BIE', '1');
INSERT INTO `dg_states` VALUES ('132', '6', 'Cabinda', 'CAB', '1');
INSERT INTO `dg_states` VALUES ('133', '6', 'Cuando-Cubango', 'CCU', '1');
INSERT INTO `dg_states` VALUES ('134', '6', 'Cuanza Norte', 'CNO', '1');
INSERT INTO `dg_states` VALUES ('135', '6', 'Cuanza Sul', 'CUS', '1');
INSERT INTO `dg_states` VALUES ('136', '6', 'Cunene', 'CNN', '1');
INSERT INTO `dg_states` VALUES ('137', '6', 'Huambo', 'HUA', '1');
INSERT INTO `dg_states` VALUES ('138', '6', 'Huila', 'HUI', '1');
INSERT INTO `dg_states` VALUES ('139', '6', 'Luanda', 'LUA', '1');
INSERT INTO `dg_states` VALUES ('140', '6', 'Lunda Norte', 'LNO', '1');
INSERT INTO `dg_states` VALUES ('141', '6', 'Lunda Sul', 'LSU', '1');
INSERT INTO `dg_states` VALUES ('142', '6', 'Malange', 'MAL', '1');
INSERT INTO `dg_states` VALUES ('143', '6', 'Moxico', 'MOX', '1');
INSERT INTO `dg_states` VALUES ('144', '6', 'Namibe', 'NAM', '1');
INSERT INTO `dg_states` VALUES ('145', '6', 'Uige', 'UIG', '1');
INSERT INTO `dg_states` VALUES ('146', '6', 'Zaire', 'ZAI', '1');
INSERT INTO `dg_states` VALUES ('147', '9', 'Saint George', 'ASG', '1');
INSERT INTO `dg_states` VALUES ('148', '9', 'Saint John', 'ASJ', '1');
INSERT INTO `dg_states` VALUES ('149', '9', 'Saint Mary', 'ASM', '1');
INSERT INTO `dg_states` VALUES ('150', '9', 'Saint Paul', 'ASL', '1');
INSERT INTO `dg_states` VALUES ('151', '9', 'Saint Peter', 'ASR', '1');
INSERT INTO `dg_states` VALUES ('152', '9', 'Saint Philip', 'ASH', '1');
INSERT INTO `dg_states` VALUES ('153', '9', 'Barbuda', 'BAR', '1');
INSERT INTO `dg_states` VALUES ('154', '9', 'Redonda', 'RED', '1');
INSERT INTO `dg_states` VALUES ('155', '10', 'Antartida e Islas del Atlantico', 'AN', '1');
INSERT INTO `dg_states` VALUES ('156', '10', 'Buenos Aires', 'BA', '1');
INSERT INTO `dg_states` VALUES ('157', '10', 'Catamarca', 'CA', '1');
INSERT INTO `dg_states` VALUES ('158', '10', 'Chaco', 'CH', '1');
INSERT INTO `dg_states` VALUES ('159', '10', 'Chubut', 'CU', '1');
INSERT INTO `dg_states` VALUES ('160', '10', 'Cordoba', 'CO', '1');
INSERT INTO `dg_states` VALUES ('161', '10', 'Corrientes', 'CR', '1');
INSERT INTO `dg_states` VALUES ('162', '10', 'Distrito Federal', 'DF', '1');
INSERT INTO `dg_states` VALUES ('163', '10', 'Entre Rios', 'ER', '1');
INSERT INTO `dg_states` VALUES ('164', '10', 'Formosa', 'FO', '1');
INSERT INTO `dg_states` VALUES ('165', '10', 'Jujuy', 'JU', '1');
INSERT INTO `dg_states` VALUES ('166', '10', 'La Pampa', 'LP', '1');
INSERT INTO `dg_states` VALUES ('167', '10', 'La Rioja', 'LR', '1');
INSERT INTO `dg_states` VALUES ('168', '10', 'Mendoza', 'ME', '1');
INSERT INTO `dg_states` VALUES ('169', '10', 'Misiones', 'MI', '1');
INSERT INTO `dg_states` VALUES ('170', '10', 'Neuquen', 'NE', '1');
INSERT INTO `dg_states` VALUES ('171', '10', 'Rio Negro', 'RN', '1');
INSERT INTO `dg_states` VALUES ('172', '10', 'Salta', 'SA', '1');
INSERT INTO `dg_states` VALUES ('173', '10', 'San Juan', 'SJ', '1');
INSERT INTO `dg_states` VALUES ('174', '10', 'San Luis', 'SL', '1');
INSERT INTO `dg_states` VALUES ('175', '10', 'Santa Cruz', 'SC', '1');
INSERT INTO `dg_states` VALUES ('176', '10', 'Santa Fe', 'SF', '1');
INSERT INTO `dg_states` VALUES ('177', '10', 'Santiago del Estero', 'SD', '1');
INSERT INTO `dg_states` VALUES ('178', '10', 'Tierra del Fuego', 'TF', '1');
INSERT INTO `dg_states` VALUES ('179', '10', 'Tucuman', 'TU', '1');
INSERT INTO `dg_states` VALUES ('180', '11', 'Aragatsotn', 'AGT', '1');
INSERT INTO `dg_states` VALUES ('181', '11', 'Ararat', 'ARR', '1');
INSERT INTO `dg_states` VALUES ('182', '11', 'Armavir', 'ARM', '1');
INSERT INTO `dg_states` VALUES ('183', '11', 'Geghark\'unik\'', 'GEG', '1');
INSERT INTO `dg_states` VALUES ('184', '11', 'Kotayk\'', 'KOT', '1');
INSERT INTO `dg_states` VALUES ('185', '11', 'Lorri', 'LOR', '1');
INSERT INTO `dg_states` VALUES ('186', '11', 'Shirak', 'SHI', '1');
INSERT INTO `dg_states` VALUES ('187', '11', 'Syunik\'', 'SYU', '1');
INSERT INTO `dg_states` VALUES ('188', '11', 'Tavush', 'TAV', '1');
INSERT INTO `dg_states` VALUES ('189', '11', 'Vayots\' Dzor', 'VAY', '1');
INSERT INTO `dg_states` VALUES ('190', '11', 'Yerevan', 'YER', '1');
INSERT INTO `dg_states` VALUES ('191', '13', 'Australian Capital Territory', 'ACT', '1');
INSERT INTO `dg_states` VALUES ('192', '13', 'New South Wales', 'NSW', '1');
INSERT INTO `dg_states` VALUES ('193', '13', 'Northern Territory', 'NT', '1');
INSERT INTO `dg_states` VALUES ('194', '13', 'Queensland', 'QLD', '1');
INSERT INTO `dg_states` VALUES ('195', '13', 'South Australia', 'SA', '1');
INSERT INTO `dg_states` VALUES ('196', '13', 'Tasmania', 'TAS', '1');
INSERT INTO `dg_states` VALUES ('197', '13', 'Victoria', 'VIC', '1');
INSERT INTO `dg_states` VALUES ('198', '13', 'Western Australia', 'WA', '1');
INSERT INTO `dg_states` VALUES ('199', '14', 'Burgenland', 'BUR', '1');
INSERT INTO `dg_states` VALUES ('200', '14', 'KÃƒÂ¤rnten', 'KAR', '1');
INSERT INTO `dg_states` VALUES ('201', '14', 'Nieder&ouml;sterreich', 'NOS', '1');
INSERT INTO `dg_states` VALUES ('202', '14', 'Ober&ouml;sterreich', 'OOS', '1');
INSERT INTO `dg_states` VALUES ('203', '14', 'Salzburg', 'SAL', '1');
INSERT INTO `dg_states` VALUES ('204', '14', 'Steiermark', 'STE', '1');
INSERT INTO `dg_states` VALUES ('205', '14', 'Tirol', 'TIR', '1');
INSERT INTO `dg_states` VALUES ('206', '14', 'Vorarlberg', 'VOR', '1');
INSERT INTO `dg_states` VALUES ('207', '14', 'Wien', 'WIE', '1');
INSERT INTO `dg_states` VALUES ('208', '15', 'Ali Bayramli', 'AB', '1');
INSERT INTO `dg_states` VALUES ('209', '15', 'Abseron', 'ABS', '1');
INSERT INTO `dg_states` VALUES ('210', '15', 'AgcabAdi', 'AGC', '1');
INSERT INTO `dg_states` VALUES ('211', '15', 'Agdam', 'AGM', '1');
INSERT INTO `dg_states` VALUES ('212', '15', 'Agdas', 'AGS', '1');
INSERT INTO `dg_states` VALUES ('213', '15', 'Agstafa', 'AGA', '1');
INSERT INTO `dg_states` VALUES ('214', '15', 'Agsu', 'AGU', '1');
INSERT INTO `dg_states` VALUES ('215', '15', 'Astara', 'AST', '1');
INSERT INTO `dg_states` VALUES ('216', '15', 'Baki', 'BA', '1');
INSERT INTO `dg_states` VALUES ('217', '15', 'BabAk', 'BAB', '1');
INSERT INTO `dg_states` VALUES ('218', '15', 'BalakAn', 'BAL', '1');
INSERT INTO `dg_states` VALUES ('219', '15', 'BArdA', 'BAR', '1');
INSERT INTO `dg_states` VALUES ('220', '15', 'Beylaqan', 'BEY', '1');
INSERT INTO `dg_states` VALUES ('221', '15', 'Bilasuvar', 'BIL', '1');
INSERT INTO `dg_states` VALUES ('222', '15', 'Cabrayil', 'CAB', '1');
INSERT INTO `dg_states` VALUES ('223', '15', 'Calilabab', 'CAL', '1');
INSERT INTO `dg_states` VALUES ('224', '15', 'Culfa', 'CUL', '1');
INSERT INTO `dg_states` VALUES ('225', '15', 'Daskasan', 'DAS', '1');
INSERT INTO `dg_states` VALUES ('226', '15', 'Davaci', 'DAV', '1');
INSERT INTO `dg_states` VALUES ('227', '15', 'Fuzuli', 'FUZ', '1');
INSERT INTO `dg_states` VALUES ('228', '15', 'Ganca', 'GA', '1');
INSERT INTO `dg_states` VALUES ('229', '15', 'Gadabay', 'GAD', '1');
INSERT INTO `dg_states` VALUES ('230', '15', 'Goranboy', 'GOR', '1');
INSERT INTO `dg_states` VALUES ('231', '15', 'Goycay', 'GOY', '1');
INSERT INTO `dg_states` VALUES ('232', '15', 'Haciqabul', 'HAC', '1');
INSERT INTO `dg_states` VALUES ('233', '15', 'Imisli', 'IMI', '1');
INSERT INTO `dg_states` VALUES ('234', '15', 'Ismayilli', 'ISM', '1');
INSERT INTO `dg_states` VALUES ('235', '15', 'Kalbacar', 'KAL', '1');
INSERT INTO `dg_states` VALUES ('236', '15', 'Kurdamir', 'KUR', '1');
INSERT INTO `dg_states` VALUES ('237', '15', 'Lankaran', 'LA', '1');
INSERT INTO `dg_states` VALUES ('238', '15', 'Lacin', 'LAC', '1');
INSERT INTO `dg_states` VALUES ('239', '15', 'Lankaran', 'LAN', '1');
INSERT INTO `dg_states` VALUES ('240', '15', 'Lerik', 'LER', '1');
INSERT INTO `dg_states` VALUES ('241', '15', 'Masalli', 'MAS', '1');
INSERT INTO `dg_states` VALUES ('242', '15', 'Mingacevir', 'MI', '1');
INSERT INTO `dg_states` VALUES ('243', '15', 'Naftalan', 'NA', '1');
INSERT INTO `dg_states` VALUES ('244', '15', 'Neftcala', 'NEF', '1');
INSERT INTO `dg_states` VALUES ('245', '15', 'Oguz', 'OGU', '1');
INSERT INTO `dg_states` VALUES ('246', '15', 'Ordubad', 'ORD', '1');
INSERT INTO `dg_states` VALUES ('247', '15', 'Qabala', 'QAB', '1');
INSERT INTO `dg_states` VALUES ('248', '15', 'Qax', 'QAX', '1');
INSERT INTO `dg_states` VALUES ('249', '15', 'Qazax', 'QAZ', '1');
INSERT INTO `dg_states` VALUES ('250', '15', 'Qobustan', 'QOB', '1');
INSERT INTO `dg_states` VALUES ('251', '15', 'Quba', 'QBA', '1');
INSERT INTO `dg_states` VALUES ('252', '15', 'Qubadli', 'QBI', '1');
INSERT INTO `dg_states` VALUES ('253', '15', 'Qusar', 'QUS', '1');
INSERT INTO `dg_states` VALUES ('254', '15', 'Saki', 'SA', '1');
INSERT INTO `dg_states` VALUES ('255', '15', 'Saatli', 'SAT', '1');
INSERT INTO `dg_states` VALUES ('256', '15', 'Sabirabad', 'SAB', '1');
INSERT INTO `dg_states` VALUES ('257', '15', 'Sadarak', 'SAD', '1');
INSERT INTO `dg_states` VALUES ('258', '15', 'Sahbuz', 'SAH', '1');
INSERT INTO `dg_states` VALUES ('259', '15', 'Saki', 'SAK', '1');
INSERT INTO `dg_states` VALUES ('260', '15', 'Salyan', 'SAL', '1');
INSERT INTO `dg_states` VALUES ('261', '15', 'Sumqayit', 'SM', '1');
INSERT INTO `dg_states` VALUES ('262', '15', 'Samaxi', 'SMI', '1');
INSERT INTO `dg_states` VALUES ('263', '15', 'Samkir', 'SKR', '1');
INSERT INTO `dg_states` VALUES ('264', '15', 'Samux', 'SMX', '1');
INSERT INTO `dg_states` VALUES ('265', '15', 'Sarur', 'SAR', '1');
INSERT INTO `dg_states` VALUES ('266', '15', 'Siyazan', 'SIY', '1');
INSERT INTO `dg_states` VALUES ('267', '15', 'Susa', 'SS', '1');
INSERT INTO `dg_states` VALUES ('268', '15', 'Susa', 'SUS', '1');
INSERT INTO `dg_states` VALUES ('269', '15', 'Tartar', 'TAR', '1');
INSERT INTO `dg_states` VALUES ('270', '15', 'Tovuz', 'TOV', '1');
INSERT INTO `dg_states` VALUES ('271', '15', 'Ucar', 'UCA', '1');
INSERT INTO `dg_states` VALUES ('272', '15', 'Xankandi', 'XA', '1');
INSERT INTO `dg_states` VALUES ('273', '15', 'Xacmaz', 'XAC', '1');
INSERT INTO `dg_states` VALUES ('274', '15', 'Xanlar', 'XAN', '1');
INSERT INTO `dg_states` VALUES ('275', '15', 'Xizi', 'XIZ', '1');
INSERT INTO `dg_states` VALUES ('276', '15', 'Xocali', 'XCI', '1');
INSERT INTO `dg_states` VALUES ('277', '15', 'Xocavand', 'XVD', '1');
INSERT INTO `dg_states` VALUES ('278', '15', 'Yardimli', 'YAR', '1');
INSERT INTO `dg_states` VALUES ('279', '15', 'Yevlax', 'YEV', '1');
INSERT INTO `dg_states` VALUES ('280', '15', 'Zangilan', 'ZAN', '1');
INSERT INTO `dg_states` VALUES ('281', '15', 'Zaqatala', 'ZAQ', '1');
INSERT INTO `dg_states` VALUES ('282', '15', 'Zardab', 'ZAR', '1');
INSERT INTO `dg_states` VALUES ('283', '15', 'Naxcivan', 'NX', '1');
INSERT INTO `dg_states` VALUES ('284', '16', 'Acklins', 'ACK', '1');
INSERT INTO `dg_states` VALUES ('285', '16', 'Berry Islands', 'BER', '1');
INSERT INTO `dg_states` VALUES ('286', '16', 'Bimini', 'BIM', '1');
INSERT INTO `dg_states` VALUES ('287', '16', 'Black Point', 'BLK', '1');
INSERT INTO `dg_states` VALUES ('288', '16', 'Cat Island', 'CAT', '1');
INSERT INTO `dg_states` VALUES ('289', '16', 'Central Abaco', 'CAB', '1');
INSERT INTO `dg_states` VALUES ('290', '16', 'Central Andros', 'CAN', '1');
INSERT INTO `dg_states` VALUES ('291', '16', 'Central Eleuthera', 'CEL', '1');
INSERT INTO `dg_states` VALUES ('292', '16', 'City of Freeport', 'FRE', '1');
INSERT INTO `dg_states` VALUES ('293', '16', 'Crooked Island', 'CRO', '1');
INSERT INTO `dg_states` VALUES ('294', '16', 'East Grand Bahama', 'EGB', '1');
INSERT INTO `dg_states` VALUES ('295', '16', 'Exuma', 'EXU', '1');
INSERT INTO `dg_states` VALUES ('296', '16', 'Grand Cay', 'GRD', '1');
INSERT INTO `dg_states` VALUES ('297', '16', 'Harbour Island', 'HAR', '1');
INSERT INTO `dg_states` VALUES ('298', '16', 'Hope Town', 'HOP', '1');
INSERT INTO `dg_states` VALUES ('299', '16', 'Inagua', 'INA', '1');
INSERT INTO `dg_states` VALUES ('300', '16', 'Long Island', 'LNG', '1');
INSERT INTO `dg_states` VALUES ('301', '16', 'Mangrove Cay', 'MAN', '1');
INSERT INTO `dg_states` VALUES ('302', '16', 'Mayaguana', 'MAY', '1');
INSERT INTO `dg_states` VALUES ('303', '16', 'Moore\'s Island', 'MOO', '1');
INSERT INTO `dg_states` VALUES ('304', '16', 'North Abaco', 'NAB', '1');
INSERT INTO `dg_states` VALUES ('305', '16', 'North Andros', 'NAN', '1');
INSERT INTO `dg_states` VALUES ('306', '16', 'North Eleuthera', 'NEL', '1');
INSERT INTO `dg_states` VALUES ('307', '16', 'Ragged Island', 'RAG', '1');
INSERT INTO `dg_states` VALUES ('308', '16', 'Rum Cay', 'RUM', '1');
INSERT INTO `dg_states` VALUES ('309', '16', 'San Salvador', 'SAL', '1');
INSERT INTO `dg_states` VALUES ('310', '16', 'South Abaco', 'SAB', '1');
INSERT INTO `dg_states` VALUES ('311', '16', 'South Andros', 'SAN', '1');
INSERT INTO `dg_states` VALUES ('312', '16', 'South Eleuthera', 'SEL', '1');
INSERT INTO `dg_states` VALUES ('313', '16', 'Spanish Wells', 'SWE', '1');
INSERT INTO `dg_states` VALUES ('314', '16', 'West Grand Bahama', 'WGB', '1');
INSERT INTO `dg_states` VALUES ('315', '17', 'Capital', 'CAP', '1');
INSERT INTO `dg_states` VALUES ('316', '17', 'Central', 'CEN', '1');
INSERT INTO `dg_states` VALUES ('317', '17', 'Muharraq', 'MUH', '1');
INSERT INTO `dg_states` VALUES ('318', '17', 'Northern', 'NOR', '1');
INSERT INTO `dg_states` VALUES ('319', '17', 'Southern', 'SOU', '1');
INSERT INTO `dg_states` VALUES ('320', '18', 'Barisal', 'BAR', '1');
INSERT INTO `dg_states` VALUES ('321', '18', 'Chittagong', 'CHI', '1');
INSERT INTO `dg_states` VALUES ('322', '18', 'Dhaka', 'DHA', '1');
INSERT INTO `dg_states` VALUES ('323', '18', 'Khulna', 'KHU', '1');
INSERT INTO `dg_states` VALUES ('324', '18', 'Rajshahi', 'RAJ', '1');
INSERT INTO `dg_states` VALUES ('325', '18', 'Sylhet', 'SYL', '1');
INSERT INTO `dg_states` VALUES ('326', '19', 'Christ Church', 'CC', '1');
INSERT INTO `dg_states` VALUES ('327', '19', 'Saint Andrew', 'AND', '1');
INSERT INTO `dg_states` VALUES ('328', '19', 'Saint George', 'GEO', '1');
INSERT INTO `dg_states` VALUES ('329', '19', 'Saint James', 'JAM', '1');
INSERT INTO `dg_states` VALUES ('330', '19', 'Saint John', 'JOH', '1');
INSERT INTO `dg_states` VALUES ('331', '19', 'Saint Joseph', 'JOS', '1');
INSERT INTO `dg_states` VALUES ('332', '19', 'Saint Lucy', 'LUC', '1');
INSERT INTO `dg_states` VALUES ('333', '19', 'Saint Michael', 'MIC', '1');
INSERT INTO `dg_states` VALUES ('334', '19', 'Saint Peter', 'PET', '1');
INSERT INTO `dg_states` VALUES ('335', '19', 'Saint Philip', 'PHI', '1');
INSERT INTO `dg_states` VALUES ('336', '19', 'Saint Thomas', 'THO', '1');
INSERT INTO `dg_states` VALUES ('337', '20', 'Brestskaya (Brest)', 'BR', '1');
INSERT INTO `dg_states` VALUES ('338', '20', 'Homyel\'skaya (Homyel\')', 'HO', '1');
INSERT INTO `dg_states` VALUES ('339', '20', 'Horad Minsk', 'HM', '1');
INSERT INTO `dg_states` VALUES ('340', '20', 'Hrodzyenskaya (Hrodna)', 'HR', '1');
INSERT INTO `dg_states` VALUES ('341', '20', 'Mahilyowskaya (Mahilyow)', 'MA', '1');
INSERT INTO `dg_states` VALUES ('342', '20', 'Minskaya', 'MI', '1');
INSERT INTO `dg_states` VALUES ('343', '20', 'Vitsyebskaya (Vitsyebsk)', 'VI', '1');
INSERT INTO `dg_states` VALUES ('344', '21', 'Antwerpen', 'VAN', '1');
INSERT INTO `dg_states` VALUES ('345', '21', 'Brabant Wallon', 'WBR', '1');
INSERT INTO `dg_states` VALUES ('346', '21', 'Hainaut', 'WHT', '1');
INSERT INTO `dg_states` VALUES ('347', '21', 'LiÃƒÂ¨ge', 'WLG', '1');
INSERT INTO `dg_states` VALUES ('348', '21', 'Limburg', 'VLI', '1');
INSERT INTO `dg_states` VALUES ('349', '21', 'Luxembourg', 'WLX', '1');
INSERT INTO `dg_states` VALUES ('350', '21', 'Namur', 'WNA', '1');
INSERT INTO `dg_states` VALUES ('351', '21', 'Oost-Vlaanderen', 'VOV', '1');
INSERT INTO `dg_states` VALUES ('352', '21', 'Vlaams Brabant', 'VBR', '1');
INSERT INTO `dg_states` VALUES ('353', '21', 'West-Vlaanderen', 'VWV', '1');
INSERT INTO `dg_states` VALUES ('354', '22', 'Belize', 'BZ', '1');
INSERT INTO `dg_states` VALUES ('355', '22', 'Cayo', 'CY', '1');
INSERT INTO `dg_states` VALUES ('356', '22', 'Corozal', 'CR', '1');
INSERT INTO `dg_states` VALUES ('357', '22', 'Orange Walk', 'OW', '1');
INSERT INTO `dg_states` VALUES ('358', '22', 'Stann Creek', 'SC', '1');
INSERT INTO `dg_states` VALUES ('359', '22', 'Toledo', 'TO', '1');
INSERT INTO `dg_states` VALUES ('360', '23', 'Alibori', 'AL', '1');
INSERT INTO `dg_states` VALUES ('361', '23', 'Atakora', 'AK', '1');
INSERT INTO `dg_states` VALUES ('362', '23', 'Atlantique', 'AQ', '1');
INSERT INTO `dg_states` VALUES ('363', '23', 'Borgou', 'BO', '1');
INSERT INTO `dg_states` VALUES ('364', '23', 'Collines', 'CO', '1');
INSERT INTO `dg_states` VALUES ('365', '23', 'Donga', 'DO', '1');
INSERT INTO `dg_states` VALUES ('366', '23', 'Kouffo', 'KO', '1');
INSERT INTO `dg_states` VALUES ('367', '23', 'Littoral', 'LI', '1');
INSERT INTO `dg_states` VALUES ('368', '23', 'Mono', 'MO', '1');
INSERT INTO `dg_states` VALUES ('369', '23', 'Oueme', 'OU', '1');
INSERT INTO `dg_states` VALUES ('370', '23', 'Plateau', 'PL', '1');
INSERT INTO `dg_states` VALUES ('371', '23', 'Zou', 'ZO', '1');
INSERT INTO `dg_states` VALUES ('372', '24', 'Devonshire', 'DS', '1');
INSERT INTO `dg_states` VALUES ('373', '24', 'Hamilton City', 'HC', '1');
INSERT INTO `dg_states` VALUES ('374', '24', 'Hamilton', 'HA', '1');
INSERT INTO `dg_states` VALUES ('375', '24', 'Paget', 'PG', '1');
INSERT INTO `dg_states` VALUES ('376', '24', 'Pembroke', 'PB', '1');
INSERT INTO `dg_states` VALUES ('377', '24', 'Saint George City', 'GC', '1');
INSERT INTO `dg_states` VALUES ('378', '24', 'Saint George\'s', 'SG', '1');
INSERT INTO `dg_states` VALUES ('379', '24', 'Sandys', 'SA', '1');
INSERT INTO `dg_states` VALUES ('380', '24', 'Smith\'s', 'SM', '1');
INSERT INTO `dg_states` VALUES ('381', '24', 'Southampton', 'SH', '1');
INSERT INTO `dg_states` VALUES ('382', '24', 'Warwick', 'WA', '1');
INSERT INTO `dg_states` VALUES ('383', '25', 'Bumthang', 'BUM', '1');
INSERT INTO `dg_states` VALUES ('384', '25', 'Chukha', 'CHU', '1');
INSERT INTO `dg_states` VALUES ('385', '25', 'Dagana', 'DAG', '1');
INSERT INTO `dg_states` VALUES ('386', '25', 'Gasa', 'GAS', '1');
INSERT INTO `dg_states` VALUES ('387', '25', 'Haa', 'HAA', '1');
INSERT INTO `dg_states` VALUES ('388', '25', 'Lhuntse', 'LHU', '1');
INSERT INTO `dg_states` VALUES ('389', '25', 'Mongar', 'MON', '1');
INSERT INTO `dg_states` VALUES ('390', '25', 'Paro', 'PAR', '1');
INSERT INTO `dg_states` VALUES ('391', '25', 'Pemagatshel', 'PEM', '1');
INSERT INTO `dg_states` VALUES ('392', '25', 'Punakha', 'PUN', '1');
INSERT INTO `dg_states` VALUES ('393', '25', 'Samdrup Jongkhar', 'SJO', '1');
INSERT INTO `dg_states` VALUES ('394', '25', 'Samtse', 'SAT', '1');
INSERT INTO `dg_states` VALUES ('395', '25', 'Sarpang', 'SAR', '1');
INSERT INTO `dg_states` VALUES ('396', '25', 'Thimphu', 'THI', '1');
INSERT INTO `dg_states` VALUES ('397', '25', 'Trashigang', 'TRG', '1');
INSERT INTO `dg_states` VALUES ('398', '25', 'Trashiyangste', 'TRY', '1');
INSERT INTO `dg_states` VALUES ('399', '25', 'Trongsa', 'TRO', '1');
INSERT INTO `dg_states` VALUES ('400', '25', 'Tsirang', 'TSI', '1');
INSERT INTO `dg_states` VALUES ('401', '25', 'Wangdue Phodrang', 'WPH', '1');
INSERT INTO `dg_states` VALUES ('402', '25', 'Zhemgang', 'ZHE', '1');
INSERT INTO `dg_states` VALUES ('403', '26', 'Beni', 'BEN', '1');
INSERT INTO `dg_states` VALUES ('404', '26', 'Chuquisaca', 'CHU', '1');
INSERT INTO `dg_states` VALUES ('405', '26', 'Cochabamba', 'COC', '1');
INSERT INTO `dg_states` VALUES ('406', '26', 'La Paz', 'LPZ', '1');
INSERT INTO `dg_states` VALUES ('407', '26', 'Oruro', 'ORU', '1');
INSERT INTO `dg_states` VALUES ('408', '26', 'Pando', 'PAN', '1');
INSERT INTO `dg_states` VALUES ('409', '26', 'Potosi', 'POT', '1');
INSERT INTO `dg_states` VALUES ('410', '26', 'Santa Cruz', 'SCZ', '1');
INSERT INTO `dg_states` VALUES ('411', '26', 'Tarija', 'TAR', '1');
INSERT INTO `dg_states` VALUES ('412', '27', 'Brcko district', 'BRO', '1');
INSERT INTO `dg_states` VALUES ('413', '27', 'Unsko-Sanski Kanton', 'FUS', '1');
INSERT INTO `dg_states` VALUES ('414', '27', 'Posavski Kanton', 'FPO', '1');
INSERT INTO `dg_states` VALUES ('415', '27', 'Tuzlanski Kanton', 'FTU', '1');
INSERT INTO `dg_states` VALUES ('416', '27', 'Zenicko-Dobojski Kanton', 'FZE', '1');
INSERT INTO `dg_states` VALUES ('417', '27', 'Bosanskopodrinjski Kanton', 'FBP', '1');
INSERT INTO `dg_states` VALUES ('418', '27', 'Srednjebosanski Kanton', 'FSB', '1');
INSERT INTO `dg_states` VALUES ('419', '27', 'Hercegovacko-neretvanski Kanton', 'FHN', '1');
INSERT INTO `dg_states` VALUES ('420', '27', 'Zapadnohercegovacka Zupanija', 'FZH', '1');
INSERT INTO `dg_states` VALUES ('421', '27', 'Kanton Sarajevo', 'FSA', '1');
INSERT INTO `dg_states` VALUES ('422', '27', 'Zapadnobosanska', 'FZA', '1');
INSERT INTO `dg_states` VALUES ('423', '27', 'Banja Luka', 'SBL', '1');
INSERT INTO `dg_states` VALUES ('424', '27', 'Doboj', 'SDO', '1');
INSERT INTO `dg_states` VALUES ('425', '27', 'Bijeljina', 'SBI', '1');
INSERT INTO `dg_states` VALUES ('426', '27', 'Vlasenica', 'SVL', '1');
INSERT INTO `dg_states` VALUES ('427', '27', 'Sarajevo-Romanija or Sokolac', 'SSR', '1');
INSERT INTO `dg_states` VALUES ('428', '27', 'Foca', 'SFO', '1');
INSERT INTO `dg_states` VALUES ('429', '27', 'Trebinje', 'STR', '1');
INSERT INTO `dg_states` VALUES ('430', '28', 'Central', 'CE', '1');
INSERT INTO `dg_states` VALUES ('431', '28', 'Ghanzi', 'GH', '1');
INSERT INTO `dg_states` VALUES ('432', '28', 'Kgalagadi', 'KD', '1');
INSERT INTO `dg_states` VALUES ('433', '28', 'Kgatleng', 'KT', '1');
INSERT INTO `dg_states` VALUES ('434', '28', 'Kweneng', 'KW', '1');
INSERT INTO `dg_states` VALUES ('435', '28', 'Ngamiland', 'NG', '1');
INSERT INTO `dg_states` VALUES ('436', '28', 'North East', 'NE', '1');
INSERT INTO `dg_states` VALUES ('437', '28', 'North West', 'NW', '1');
INSERT INTO `dg_states` VALUES ('438', '28', 'South East', 'SE', '1');
INSERT INTO `dg_states` VALUES ('439', '28', 'Southern', 'SO', '1');
INSERT INTO `dg_states` VALUES ('440', '30', 'Acre', 'AC', '1');
INSERT INTO `dg_states` VALUES ('441', '30', 'Alagoas', 'AL', '1');
INSERT INTO `dg_states` VALUES ('442', '30', 'AmapÃƒÂ¡', 'AP', '1');
INSERT INTO `dg_states` VALUES ('443', '30', 'Amazonas', 'AM', '1');
INSERT INTO `dg_states` VALUES ('444', '30', 'Bahia', 'BA', '1');
INSERT INTO `dg_states` VALUES ('445', '30', 'CearÃƒÂ¡', 'CE', '1');
INSERT INTO `dg_states` VALUES ('446', '30', 'Distrito Federal', 'DF', '1');
INSERT INTO `dg_states` VALUES ('447', '30', 'EspÃƒÂ­rito Santo', 'ES', '1');
INSERT INTO `dg_states` VALUES ('448', '30', 'GoiÃƒÂ¡s', 'GO', '1');
INSERT INTO `dg_states` VALUES ('449', '30', 'MaranhÃƒÂ£o', 'MA', '1');
INSERT INTO `dg_states` VALUES ('450', '30', 'Mato Grosso', 'MT', '1');
INSERT INTO `dg_states` VALUES ('451', '30', 'Mato Grosso do Sul', 'MS', '1');
INSERT INTO `dg_states` VALUES ('452', '30', 'Minas Gerais', 'MG', '1');
INSERT INTO `dg_states` VALUES ('453', '30', 'ParÃƒÂ¡', 'PA', '1');
INSERT INTO `dg_states` VALUES ('454', '30', 'ParaÃƒÂ­ba', 'PB', '1');
INSERT INTO `dg_states` VALUES ('455', '30', 'ParanÃƒÂ¡', 'PR', '1');
INSERT INTO `dg_states` VALUES ('456', '30', 'Pernambuco', 'PE', '1');
INSERT INTO `dg_states` VALUES ('457', '30', 'PiauÃƒÂ­', 'PI', '1');
INSERT INTO `dg_states` VALUES ('458', '30', 'Rio de Janeiro', 'RJ', '1');
INSERT INTO `dg_states` VALUES ('459', '30', 'Rio Grande do Norte', 'RN', '1');
INSERT INTO `dg_states` VALUES ('460', '30', 'Rio Grande do Sul', 'RS', '1');
INSERT INTO `dg_states` VALUES ('461', '30', 'RondÃƒÂ´nia', 'RO', '1');
INSERT INTO `dg_states` VALUES ('462', '30', 'Roraima', 'RR', '1');
INSERT INTO `dg_states` VALUES ('463', '30', 'Santa Catarina', 'SC', '1');
INSERT INTO `dg_states` VALUES ('464', '30', 'SÃƒÂ£o Paulo', 'SP', '1');
INSERT INTO `dg_states` VALUES ('465', '30', 'Sergipe', 'SE', '1');
INSERT INTO `dg_states` VALUES ('466', '30', 'Tocantins', 'TO', '1');
INSERT INTO `dg_states` VALUES ('467', '31', 'Peros Banhos', 'PB', '1');
INSERT INTO `dg_states` VALUES ('468', '31', 'Salomon Islands', 'SI', '1');
INSERT INTO `dg_states` VALUES ('469', '31', 'Nelsons Island', 'NI', '1');
INSERT INTO `dg_states` VALUES ('470', '31', 'Three Brothers', 'TB', '1');
INSERT INTO `dg_states` VALUES ('471', '31', 'Eagle Islands', 'EA', '1');
INSERT INTO `dg_states` VALUES ('472', '31', 'Danger Island', 'DI', '1');
INSERT INTO `dg_states` VALUES ('473', '31', 'Egmont Islands', 'EG', '1');
INSERT INTO `dg_states` VALUES ('474', '31', 'Diego Garcia', 'DG', '1');
INSERT INTO `dg_states` VALUES ('475', '32', 'Belait', 'BEL', '1');
INSERT INTO `dg_states` VALUES ('476', '32', 'Brunei and Muara', 'BRM', '1');
INSERT INTO `dg_states` VALUES ('477', '32', 'Temburong', 'TEM', '1');
INSERT INTO `dg_states` VALUES ('478', '32', 'Tutong', 'TUT', '1');
INSERT INTO `dg_states` VALUES ('479', '33', 'Blagoevgrad', '', '1');
INSERT INTO `dg_states` VALUES ('480', '33', 'Burgas', '', '1');
INSERT INTO `dg_states` VALUES ('481', '33', 'Dobrich', '', '1');
INSERT INTO `dg_states` VALUES ('482', '33', 'Gabrovo', '', '1');
INSERT INTO `dg_states` VALUES ('483', '33', 'Haskovo', '', '1');
INSERT INTO `dg_states` VALUES ('484', '33', 'Kardjali', '', '1');
INSERT INTO `dg_states` VALUES ('485', '33', 'Kyustendil', '', '1');
INSERT INTO `dg_states` VALUES ('486', '33', 'Lovech', '', '1');
INSERT INTO `dg_states` VALUES ('487', '33', 'Montana', '', '1');
INSERT INTO `dg_states` VALUES ('488', '33', 'Pazardjik', '', '1');
INSERT INTO `dg_states` VALUES ('489', '33', 'Pernik', '', '1');
INSERT INTO `dg_states` VALUES ('490', '33', 'Pleven', '', '1');
INSERT INTO `dg_states` VALUES ('491', '33', 'Plovdiv', '', '1');
INSERT INTO `dg_states` VALUES ('492', '33', 'Razgrad', '', '1');
INSERT INTO `dg_states` VALUES ('493', '33', 'Shumen', '', '1');
INSERT INTO `dg_states` VALUES ('494', '33', 'Silistra', '', '1');
INSERT INTO `dg_states` VALUES ('495', '33', 'Sliven', '', '1');
INSERT INTO `dg_states` VALUES ('496', '33', 'Smolyan', '', '1');
INSERT INTO `dg_states` VALUES ('497', '33', 'Sofia', '', '1');
INSERT INTO `dg_states` VALUES ('498', '33', 'Sofia - town', '', '1');
INSERT INTO `dg_states` VALUES ('499', '33', 'Stara Zagora', '', '1');
INSERT INTO `dg_states` VALUES ('500', '33', 'Targovishte', '', '1');
INSERT INTO `dg_states` VALUES ('501', '33', 'Varna', '', '1');
INSERT INTO `dg_states` VALUES ('502', '33', 'Veliko Tarnovo', '', '1');
INSERT INTO `dg_states` VALUES ('503', '33', 'Vidin', '', '1');
INSERT INTO `dg_states` VALUES ('504', '33', 'Vratza', '', '1');
INSERT INTO `dg_states` VALUES ('505', '33', 'Yambol', '', '1');
INSERT INTO `dg_states` VALUES ('506', '34', 'Bale', 'BAL', '1');
INSERT INTO `dg_states` VALUES ('507', '34', 'Bam', 'BAM', '1');
INSERT INTO `dg_states` VALUES ('508', '34', 'Banwa', 'BAN', '1');
INSERT INTO `dg_states` VALUES ('509', '34', 'Bazega', 'BAZ', '1');
INSERT INTO `dg_states` VALUES ('510', '34', 'Bougouriba', 'BOR', '1');
INSERT INTO `dg_states` VALUES ('511', '34', 'Boulgou', 'BLG', '1');
INSERT INTO `dg_states` VALUES ('512', '34', 'Boulkiemde', 'BOK', '1');
INSERT INTO `dg_states` VALUES ('513', '34', 'Comoe', 'COM', '1');
INSERT INTO `dg_states` VALUES ('514', '34', 'Ganzourgou', 'GAN', '1');
INSERT INTO `dg_states` VALUES ('515', '34', 'Gnagna', 'GNA', '1');
INSERT INTO `dg_states` VALUES ('516', '34', 'Gourma', 'GOU', '1');
INSERT INTO `dg_states` VALUES ('517', '34', 'Houet', 'HOU', '1');
INSERT INTO `dg_states` VALUES ('518', '34', 'Ioba', 'IOA', '1');
INSERT INTO `dg_states` VALUES ('519', '34', 'Kadiogo', 'KAD', '1');
INSERT INTO `dg_states` VALUES ('520', '34', 'Kenedougou', 'KEN', '1');
INSERT INTO `dg_states` VALUES ('521', '34', 'Komondjari', 'KOD', '1');
INSERT INTO `dg_states` VALUES ('522', '34', 'Kompienga', 'KOP', '1');
INSERT INTO `dg_states` VALUES ('523', '34', 'Kossi', 'KOS', '1');
INSERT INTO `dg_states` VALUES ('524', '34', 'Koulpelogo', 'KOL', '1');
INSERT INTO `dg_states` VALUES ('525', '34', 'Kouritenga', 'KOT', '1');
INSERT INTO `dg_states` VALUES ('526', '34', 'Kourweogo', 'KOW', '1');
INSERT INTO `dg_states` VALUES ('527', '34', 'Leraba', 'LER', '1');
INSERT INTO `dg_states` VALUES ('528', '34', 'Loroum', 'LOR', '1');
INSERT INTO `dg_states` VALUES ('529', '34', 'Mouhoun', 'MOU', '1');
INSERT INTO `dg_states` VALUES ('530', '34', 'Nahouri', 'NAH', '1');
INSERT INTO `dg_states` VALUES ('531', '34', 'Namentenga', 'NAM', '1');
INSERT INTO `dg_states` VALUES ('532', '34', 'Nayala', 'NAY', '1');
INSERT INTO `dg_states` VALUES ('533', '34', 'Noumbiel', 'NOU', '1');
INSERT INTO `dg_states` VALUES ('534', '34', 'Oubritenga', 'OUB', '1');
INSERT INTO `dg_states` VALUES ('535', '34', 'Oudalan', 'OUD', '1');
INSERT INTO `dg_states` VALUES ('536', '34', 'Passore', 'PAS', '1');
INSERT INTO `dg_states` VALUES ('537', '34', 'Poni', 'PON', '1');
INSERT INTO `dg_states` VALUES ('538', '34', 'Sanguie', 'SAG', '1');
INSERT INTO `dg_states` VALUES ('539', '34', 'Sanmatenga', 'SAM', '1');
INSERT INTO `dg_states` VALUES ('540', '34', 'Seno', 'SEN', '1');
INSERT INTO `dg_states` VALUES ('541', '34', 'Sissili', 'SIS', '1');
INSERT INTO `dg_states` VALUES ('542', '34', 'Soum', 'SOM', '1');
INSERT INTO `dg_states` VALUES ('543', '34', 'Sourou', 'SOR', '1');
INSERT INTO `dg_states` VALUES ('544', '34', 'Tapoa', 'TAP', '1');
INSERT INTO `dg_states` VALUES ('545', '34', 'Tuy', 'TUY', '1');
INSERT INTO `dg_states` VALUES ('546', '34', 'Yagha', 'YAG', '1');
INSERT INTO `dg_states` VALUES ('547', '34', 'Yatenga', 'YAT', '1');
INSERT INTO `dg_states` VALUES ('548', '34', 'Ziro', 'ZIR', '1');
INSERT INTO `dg_states` VALUES ('549', '34', 'Zondoma', 'ZOD', '1');
INSERT INTO `dg_states` VALUES ('550', '34', 'Zoundweogo', 'ZOW', '1');
INSERT INTO `dg_states` VALUES ('551', '35', 'Bubanza', 'BB', '1');
INSERT INTO `dg_states` VALUES ('552', '35', 'Bujumbura', 'BJ', '1');
INSERT INTO `dg_states` VALUES ('553', '35', 'Bururi', 'BR', '1');
INSERT INTO `dg_states` VALUES ('554', '35', 'Cankuzo', 'CA', '1');
INSERT INTO `dg_states` VALUES ('555', '35', 'Cibitoke', 'CI', '1');
INSERT INTO `dg_states` VALUES ('556', '35', 'Gitega', 'GI', '1');
INSERT INTO `dg_states` VALUES ('557', '35', 'Karuzi', 'KR', '1');
INSERT INTO `dg_states` VALUES ('558', '35', 'Kayanza', 'KY', '1');
INSERT INTO `dg_states` VALUES ('559', '35', 'Kirundo', 'KI', '1');
INSERT INTO `dg_states` VALUES ('560', '35', 'Makamba', 'MA', '1');
INSERT INTO `dg_states` VALUES ('561', '35', 'Muramvya', 'MU', '1');
INSERT INTO `dg_states` VALUES ('562', '35', 'Muyinga', 'MY', '1');
INSERT INTO `dg_states` VALUES ('563', '35', 'Mwaro', 'MW', '1');
INSERT INTO `dg_states` VALUES ('564', '35', 'Ngozi', 'NG', '1');
INSERT INTO `dg_states` VALUES ('565', '35', 'Rutana', 'RT', '1');
INSERT INTO `dg_states` VALUES ('566', '35', 'Ruyigi', 'RY', '1');
INSERT INTO `dg_states` VALUES ('567', '36', 'Phnom Penh', 'PP', '1');
INSERT INTO `dg_states` VALUES ('568', '36', 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', '1');
INSERT INTO `dg_states` VALUES ('569', '36', 'Pailin', 'PA', '1');
INSERT INTO `dg_states` VALUES ('570', '36', 'Keb', 'KB', '1');
INSERT INTO `dg_states` VALUES ('571', '36', 'Banteay Meanchey', 'BM', '1');
INSERT INTO `dg_states` VALUES ('572', '36', 'Battambang', 'BA', '1');
INSERT INTO `dg_states` VALUES ('573', '36', 'Kampong Cham', 'KM', '1');
INSERT INTO `dg_states` VALUES ('574', '36', 'Kampong Chhnang', 'KN', '1');
INSERT INTO `dg_states` VALUES ('575', '36', 'Kampong Speu', 'KU', '1');
INSERT INTO `dg_states` VALUES ('576', '36', 'Kampong Som', 'KO', '1');
INSERT INTO `dg_states` VALUES ('577', '36', 'Kampong Thom', 'KT', '1');
INSERT INTO `dg_states` VALUES ('578', '36', 'Kampot', 'KP', '1');
INSERT INTO `dg_states` VALUES ('579', '36', 'Kandal', 'KL', '1');
INSERT INTO `dg_states` VALUES ('580', '36', 'Kaoh Kong', 'KK', '1');
INSERT INTO `dg_states` VALUES ('581', '36', 'Kratie', 'KR', '1');
INSERT INTO `dg_states` VALUES ('582', '36', 'Mondul Kiri', 'MK', '1');
INSERT INTO `dg_states` VALUES ('583', '36', 'Oddar Meancheay', 'OM', '1');
INSERT INTO `dg_states` VALUES ('584', '36', 'Pursat', 'PU', '1');
INSERT INTO `dg_states` VALUES ('585', '36', 'Preah Vihear', 'PR', '1');
INSERT INTO `dg_states` VALUES ('586', '36', 'Prey Veng', 'PG', '1');
INSERT INTO `dg_states` VALUES ('587', '36', 'Ratanak Kiri', 'RK', '1');
INSERT INTO `dg_states` VALUES ('588', '36', 'Siemreap', 'SI', '1');
INSERT INTO `dg_states` VALUES ('589', '36', 'Stung Treng', 'ST', '1');
INSERT INTO `dg_states` VALUES ('590', '36', 'Svay Rieng', 'SR', '1');
INSERT INTO `dg_states` VALUES ('591', '36', 'Takeo', 'TK', '1');
INSERT INTO `dg_states` VALUES ('592', '37', 'Adamawa (Adamaoua)', 'ADA', '1');
INSERT INTO `dg_states` VALUES ('593', '37', 'Centre', 'CEN', '1');
INSERT INTO `dg_states` VALUES ('594', '37', 'East (Est)', 'EST', '1');
INSERT INTO `dg_states` VALUES ('595', '37', 'Extreme North (Extreme-Nord)', 'EXN', '1');
INSERT INTO `dg_states` VALUES ('596', '37', 'Littoral', 'LIT', '1');
INSERT INTO `dg_states` VALUES ('597', '37', 'North (Nord)', 'NOR', '1');
INSERT INTO `dg_states` VALUES ('598', '37', 'Northwest (Nord-Ouest)', 'NOT', '1');
INSERT INTO `dg_states` VALUES ('599', '37', 'West (Ouest)', 'OUE', '1');
INSERT INTO `dg_states` VALUES ('600', '37', 'South (Sud)', 'SUD', '1');
INSERT INTO `dg_states` VALUES ('601', '37', 'Southwest (Sud-Ouest).', 'SOU', '1');
INSERT INTO `dg_states` VALUES ('602', '38', 'Alberta', 'AB', '1');
INSERT INTO `dg_states` VALUES ('603', '38', 'British Columbia', 'BC', '1');
INSERT INTO `dg_states` VALUES ('604', '38', 'Manitoba', 'MB', '1');
INSERT INTO `dg_states` VALUES ('605', '38', 'New Brunswick', 'NB', '1');
INSERT INTO `dg_states` VALUES ('606', '38', 'Newfoundland and Labrador', 'NL', '1');
INSERT INTO `dg_states` VALUES ('607', '38', 'Northwest Territories', 'NT', '1');
INSERT INTO `dg_states` VALUES ('608', '38', 'Nova Scotia', 'NS', '1');
INSERT INTO `dg_states` VALUES ('609', '38', 'Nunavut', 'NU', '1');
INSERT INTO `dg_states` VALUES ('610', '38', 'Ontario', 'ON', '1');
INSERT INTO `dg_states` VALUES ('611', '38', 'Prince Edward Island', 'PE', '1');
INSERT INTO `dg_states` VALUES ('612', '38', 'Qu&eacute;bec', 'QC', '1');
INSERT INTO `dg_states` VALUES ('613', '38', 'Saskatchewan', 'SK', '1');
INSERT INTO `dg_states` VALUES ('614', '38', 'Yukon Territory', 'YT', '1');
INSERT INTO `dg_states` VALUES ('615', '39', 'Boa Vista', 'BV', '1');
INSERT INTO `dg_states` VALUES ('616', '39', 'Brava', 'BR', '1');
INSERT INTO `dg_states` VALUES ('617', '39', 'Calheta de Sao Miguel', 'CS', '1');
INSERT INTO `dg_states` VALUES ('618', '39', 'Maio', 'MA', '1');
INSERT INTO `dg_states` VALUES ('619', '39', 'Mosteiros', 'MO', '1');
INSERT INTO `dg_states` VALUES ('620', '39', 'Paul', 'PA', '1');
INSERT INTO `dg_states` VALUES ('621', '39', 'Porto Novo', 'PN', '1');
INSERT INTO `dg_states` VALUES ('622', '39', 'Praia', 'PR', '1');
INSERT INTO `dg_states` VALUES ('623', '39', 'Ribeira Grande', 'RG', '1');
INSERT INTO `dg_states` VALUES ('624', '39', 'Sal', 'SL', '1');
INSERT INTO `dg_states` VALUES ('625', '39', 'Santa Catarina', 'CA', '1');
INSERT INTO `dg_states` VALUES ('626', '39', 'Santa Cruz', 'CR', '1');
INSERT INTO `dg_states` VALUES ('627', '39', 'Sao Domingos', 'SD', '1');
INSERT INTO `dg_states` VALUES ('628', '39', 'Sao Filipe', 'SF', '1');
INSERT INTO `dg_states` VALUES ('629', '39', 'Sao Nicolau', 'SN', '1');
INSERT INTO `dg_states` VALUES ('630', '39', 'Sao Vicente', 'SV', '1');
INSERT INTO `dg_states` VALUES ('631', '39', 'Tarrafal', 'TA', '1');
INSERT INTO `dg_states` VALUES ('632', '40', 'Creek', 'CR', '1');
INSERT INTO `dg_states` VALUES ('633', '40', 'Eastern', 'EA', '1');
INSERT INTO `dg_states` VALUES ('634', '40', 'Midland', 'ML', '1');
INSERT INTO `dg_states` VALUES ('635', '40', 'South Town', 'ST', '1');
INSERT INTO `dg_states` VALUES ('636', '40', 'Spot Bay', 'SP', '1');
INSERT INTO `dg_states` VALUES ('637', '40', 'Stake Bay', 'SK', '1');
INSERT INTO `dg_states` VALUES ('638', '40', 'West End', 'WD', '1');
INSERT INTO `dg_states` VALUES ('639', '40', 'Western', 'WN', '1');
INSERT INTO `dg_states` VALUES ('640', '41', 'Bamingui-Bangoran', 'BBA', '1');
INSERT INTO `dg_states` VALUES ('641', '41', 'Basse-Kotto', 'BKO', '1');
INSERT INTO `dg_states` VALUES ('642', '41', 'Haute-Kotto', 'HKO', '1');
INSERT INTO `dg_states` VALUES ('643', '41', 'Haut-Mbomou', 'HMB', '1');
INSERT INTO `dg_states` VALUES ('644', '41', 'Kemo', 'KEM', '1');
INSERT INTO `dg_states` VALUES ('645', '41', 'Lobaye', 'LOB', '1');
INSERT INTO `dg_states` VALUES ('646', '41', 'Mambere-KadeÃƒâ€', 'MKD', '1');
INSERT INTO `dg_states` VALUES ('647', '41', 'Mbomou', 'MBO', '1');
INSERT INTO `dg_states` VALUES ('648', '41', 'Nana-Mambere', 'NMM', '1');
INSERT INTO `dg_states` VALUES ('649', '41', 'Ombella-M\'Poko', 'OMP', '1');
INSERT INTO `dg_states` VALUES ('650', '41', 'Ouaka', 'OUK', '1');
INSERT INTO `dg_states` VALUES ('651', '41', 'Ouham', 'OUH', '1');
INSERT INTO `dg_states` VALUES ('652', '41', 'Ouham-Pende', 'OPE', '1');
INSERT INTO `dg_states` VALUES ('653', '41', 'Vakaga', 'VAK', '1');
INSERT INTO `dg_states` VALUES ('654', '41', 'Nana-Grebizi', 'NGR', '1');
INSERT INTO `dg_states` VALUES ('655', '41', 'Sangha-Mbaere', 'SMB', '1');
INSERT INTO `dg_states` VALUES ('656', '41', 'Bangui', 'BAN', '1');
INSERT INTO `dg_states` VALUES ('657', '42', 'Batha', 'BA', '1');
INSERT INTO `dg_states` VALUES ('658', '42', 'Biltine', 'BI', '1');
INSERT INTO `dg_states` VALUES ('659', '42', 'Borkou-Ennedi-Tibesti', 'BE', '1');
INSERT INTO `dg_states` VALUES ('660', '42', 'Chari-Baguirmi', 'CB', '1');
INSERT INTO `dg_states` VALUES ('661', '42', 'Guera', 'GU', '1');
INSERT INTO `dg_states` VALUES ('662', '42', 'Kanem', 'KA', '1');
INSERT INTO `dg_states` VALUES ('663', '42', 'Lac', 'LA', '1');
INSERT INTO `dg_states` VALUES ('664', '42', 'Logone Occidental', 'LC', '1');
INSERT INTO `dg_states` VALUES ('665', '42', 'Logone Oriental', 'LR', '1');
INSERT INTO `dg_states` VALUES ('666', '42', 'Mayo-Kebbi', 'MK', '1');
INSERT INTO `dg_states` VALUES ('667', '42', 'Moyen-Chari', 'MC', '1');
INSERT INTO `dg_states` VALUES ('668', '42', 'Ouaddai', 'OU', '1');
INSERT INTO `dg_states` VALUES ('669', '42', 'Salamat', 'SA', '1');
INSERT INTO `dg_states` VALUES ('670', '42', 'Tandjile', 'TA', '1');
INSERT INTO `dg_states` VALUES ('671', '43', 'Aisen del General Carlos Ibanez', 'AI', '1');
INSERT INTO `dg_states` VALUES ('672', '43', 'Antofagasta', 'AN', '1');
INSERT INTO `dg_states` VALUES ('673', '43', 'Araucania', 'AR', '1');
INSERT INTO `dg_states` VALUES ('674', '43', 'Atacama', 'AT', '1');
INSERT INTO `dg_states` VALUES ('675', '43', 'Bio-Bio', 'BI', '1');
INSERT INTO `dg_states` VALUES ('676', '43', 'Coquimbo', 'CO', '1');
INSERT INTO `dg_states` VALUES ('677', '43', 'Libertador General Bernardo O\'Hi', 'LI', '1');
INSERT INTO `dg_states` VALUES ('678', '43', 'Los Lagos', 'LL', '1');
INSERT INTO `dg_states` VALUES ('679', '43', 'Magallanes y de la Antartica Chi', 'MA', '1');
INSERT INTO `dg_states` VALUES ('680', '43', 'Maule', 'ML', '1');
INSERT INTO `dg_states` VALUES ('681', '43', 'Region Metropolitana', 'RM', '1');
INSERT INTO `dg_states` VALUES ('682', '43', 'Tarapaca', 'TA', '1');
INSERT INTO `dg_states` VALUES ('683', '43', 'Valparaiso', 'VS', '1');
INSERT INTO `dg_states` VALUES ('684', '44', 'Anhui', 'AN', '1');
INSERT INTO `dg_states` VALUES ('685', '44', 'Beijing', 'BE', '1');
INSERT INTO `dg_states` VALUES ('686', '44', 'Chongqing', 'CH', '1');
INSERT INTO `dg_states` VALUES ('687', '44', 'Fujian', 'FU', '1');
INSERT INTO `dg_states` VALUES ('688', '44', 'Gansu', 'GA', '1');
INSERT INTO `dg_states` VALUES ('689', '44', 'Guangdong', 'GU', '1');
INSERT INTO `dg_states` VALUES ('690', '44', 'Guangxi', 'GX', '1');
INSERT INTO `dg_states` VALUES ('691', '44', 'Guizhou', 'GZ', '1');
INSERT INTO `dg_states` VALUES ('692', '44', 'Hainan', 'HA', '1');
INSERT INTO `dg_states` VALUES ('693', '44', 'Hebei', 'HB', '1');
INSERT INTO `dg_states` VALUES ('694', '44', 'Heilongjiang', 'HL', '1');
INSERT INTO `dg_states` VALUES ('695', '44', 'Henan', 'HE', '1');
INSERT INTO `dg_states` VALUES ('696', '44', 'Hong Kong', 'HK', '1');
INSERT INTO `dg_states` VALUES ('697', '44', 'Hubei', 'HU', '1');
INSERT INTO `dg_states` VALUES ('698', '44', 'Hunan', 'HN', '1');
INSERT INTO `dg_states` VALUES ('699', '44', 'Inner Mongolia', 'IM', '1');
INSERT INTO `dg_states` VALUES ('700', '44', 'Jiangsu', 'JI', '1');
INSERT INTO `dg_states` VALUES ('701', '44', 'Jiangxi', 'JX', '1');
INSERT INTO `dg_states` VALUES ('702', '44', 'Jilin', 'JL', '1');
INSERT INTO `dg_states` VALUES ('703', '44', 'Liaoning', 'LI', '1');
INSERT INTO `dg_states` VALUES ('704', '44', 'Macau', 'MA', '1');
INSERT INTO `dg_states` VALUES ('705', '44', 'Ningxia', 'NI', '1');
INSERT INTO `dg_states` VALUES ('706', '44', 'Shaanxi', 'SH', '1');
INSERT INTO `dg_states` VALUES ('707', '44', 'Shandong', 'SA', '1');
INSERT INTO `dg_states` VALUES ('708', '44', 'Shanghai', 'SG', '1');
INSERT INTO `dg_states` VALUES ('709', '44', 'Shanxi', 'SX', '1');
INSERT INTO `dg_states` VALUES ('710', '44', 'Sichuan', 'SI', '1');
INSERT INTO `dg_states` VALUES ('711', '44', 'Tianjin', 'TI', '1');
INSERT INTO `dg_states` VALUES ('712', '44', 'Xinjiang', 'XI', '1');
INSERT INTO `dg_states` VALUES ('713', '44', 'Yunnan', 'YU', '1');
INSERT INTO `dg_states` VALUES ('714', '44', 'Zhejiang', 'ZH', '1');
INSERT INTO `dg_states` VALUES ('715', '46', 'Direction Island', 'D', '1');
INSERT INTO `dg_states` VALUES ('716', '46', 'Home Island', 'H', '1');
INSERT INTO `dg_states` VALUES ('717', '46', 'Horsburgh Island', 'O', '1');
INSERT INTO `dg_states` VALUES ('718', '46', 'South Island', 'S', '1');
INSERT INTO `dg_states` VALUES ('719', '46', 'West Island', 'W', '1');
INSERT INTO `dg_states` VALUES ('720', '47', 'Amazonas', 'AMZ', '1');
INSERT INTO `dg_states` VALUES ('721', '47', 'Antioquia', 'ANT', '1');
INSERT INTO `dg_states` VALUES ('722', '47', 'Arauca', 'ARA', '1');
INSERT INTO `dg_states` VALUES ('723', '47', 'Atlantico', 'ATL', '1');
INSERT INTO `dg_states` VALUES ('724', '47', 'Bogota D.C.', 'BDC', '1');
INSERT INTO `dg_states` VALUES ('725', '47', 'Bolivar', 'BOL', '1');
INSERT INTO `dg_states` VALUES ('726', '47', 'Boyaca', 'BOY', '1');
INSERT INTO `dg_states` VALUES ('727', '47', 'Caldas', 'CAL', '1');
INSERT INTO `dg_states` VALUES ('728', '47', 'Caqueta', 'CAQ', '1');
INSERT INTO `dg_states` VALUES ('729', '47', 'Casanare', 'CAS', '1');
INSERT INTO `dg_states` VALUES ('730', '47', 'Cauca', 'CAU', '1');
INSERT INTO `dg_states` VALUES ('731', '47', 'Cesar', 'CES', '1');
INSERT INTO `dg_states` VALUES ('732', '47', 'Choco', 'CHO', '1');
INSERT INTO `dg_states` VALUES ('733', '47', 'Cordoba', 'COR', '1');
INSERT INTO `dg_states` VALUES ('734', '47', 'Cundinamarca', 'CAM', '1');
INSERT INTO `dg_states` VALUES ('735', '47', 'Guainia', 'GNA', '1');
INSERT INTO `dg_states` VALUES ('736', '47', 'Guajira', 'GJR', '1');
INSERT INTO `dg_states` VALUES ('737', '47', 'Guaviare', 'GVR', '1');
INSERT INTO `dg_states` VALUES ('738', '47', 'Huila', 'HUI', '1');
INSERT INTO `dg_states` VALUES ('739', '47', 'Magdalena', 'MAG', '1');
INSERT INTO `dg_states` VALUES ('740', '47', 'Meta', 'MET', '1');
INSERT INTO `dg_states` VALUES ('741', '47', 'Narino', 'NAR', '1');
INSERT INTO `dg_states` VALUES ('742', '47', 'Norte de Santander', 'NDS', '1');
INSERT INTO `dg_states` VALUES ('743', '47', 'Putumayo', 'PUT', '1');
INSERT INTO `dg_states` VALUES ('744', '47', 'Quindio', 'QUI', '1');
INSERT INTO `dg_states` VALUES ('745', '47', 'Risaralda', 'RIS', '1');
INSERT INTO `dg_states` VALUES ('746', '47', 'San Andres y Providencia', 'SAP', '1');
INSERT INTO `dg_states` VALUES ('747', '47', 'Santander', 'SAN', '1');
INSERT INTO `dg_states` VALUES ('748', '47', 'Sucre', 'SUC', '1');
INSERT INTO `dg_states` VALUES ('749', '47', 'Tolima', 'TOL', '1');
INSERT INTO `dg_states` VALUES ('750', '47', 'Valle del Cauca', 'VDC', '1');
INSERT INTO `dg_states` VALUES ('751', '47', 'Vaupes', 'VAU', '1');
INSERT INTO `dg_states` VALUES ('752', '47', 'Vichada', 'VIC', '1');
INSERT INTO `dg_states` VALUES ('753', '48', 'Grande Comore', 'G', '1');
INSERT INTO `dg_states` VALUES ('754', '48', 'Anjouan', 'A', '1');
INSERT INTO `dg_states` VALUES ('755', '48', 'Moheli', 'M', '1');
INSERT INTO `dg_states` VALUES ('756', '49', 'Bouenza', 'BO', '1');
INSERT INTO `dg_states` VALUES ('757', '49', 'Brazzaville', 'BR', '1');
INSERT INTO `dg_states` VALUES ('758', '49', 'Cuvette', 'CU', '1');
INSERT INTO `dg_states` VALUES ('759', '49', 'Cuvette-Ouest', 'CO', '1');
INSERT INTO `dg_states` VALUES ('760', '49', 'Kouilou', 'KO', '1');
INSERT INTO `dg_states` VALUES ('761', '49', 'Lekoumou', 'LE', '1');
INSERT INTO `dg_states` VALUES ('762', '49', 'Likouala', 'LI', '1');
INSERT INTO `dg_states` VALUES ('763', '49', 'Niari', 'NI', '1');
INSERT INTO `dg_states` VALUES ('764', '49', 'Plateaux', 'PL', '1');
INSERT INTO `dg_states` VALUES ('765', '49', 'Pool', 'PO', '1');
INSERT INTO `dg_states` VALUES ('766', '49', 'Sangha', 'SA', '1');
INSERT INTO `dg_states` VALUES ('767', '50', 'Pukapuka', 'PU', '1');
INSERT INTO `dg_states` VALUES ('768', '50', 'Rakahanga', 'RK', '1');
INSERT INTO `dg_states` VALUES ('769', '50', 'Manihiki', 'MK', '1');
INSERT INTO `dg_states` VALUES ('770', '50', 'Penrhyn', 'PE', '1');
INSERT INTO `dg_states` VALUES ('771', '50', 'Nassau Island', 'NI', '1');
INSERT INTO `dg_states` VALUES ('772', '50', 'Surwarrow', 'SU', '1');
INSERT INTO `dg_states` VALUES ('773', '50', 'Palmerston', 'PA', '1');
INSERT INTO `dg_states` VALUES ('774', '50', 'Aitutaki', 'AI', '1');
INSERT INTO `dg_states` VALUES ('775', '50', 'Manuae', 'MA', '1');
INSERT INTO `dg_states` VALUES ('776', '50', 'Takutea', 'TA', '1');
INSERT INTO `dg_states` VALUES ('777', '50', 'Mitiaro', 'MT', '1');
INSERT INTO `dg_states` VALUES ('778', '50', 'Atiu', 'AT', '1');
INSERT INTO `dg_states` VALUES ('779', '50', 'Mauke', 'MU', '1');
INSERT INTO `dg_states` VALUES ('780', '50', 'Rarotonga', 'RR', '1');
INSERT INTO `dg_states` VALUES ('781', '50', 'Mangaia', 'MG', '1');
INSERT INTO `dg_states` VALUES ('782', '51', 'Alajuela', 'AL', '1');
INSERT INTO `dg_states` VALUES ('783', '51', 'Cartago', 'CA', '1');
INSERT INTO `dg_states` VALUES ('784', '51', 'Guanacaste', 'GU', '1');
INSERT INTO `dg_states` VALUES ('785', '51', 'Heredia', 'HE', '1');
INSERT INTO `dg_states` VALUES ('786', '51', 'Limon', 'LI', '1');
INSERT INTO `dg_states` VALUES ('787', '51', 'Puntarenas', 'PU', '1');
INSERT INTO `dg_states` VALUES ('788', '51', 'San Jose', 'SJ', '1');
INSERT INTO `dg_states` VALUES ('789', '52', 'Abengourou', 'ABE', '1');
INSERT INTO `dg_states` VALUES ('790', '52', 'Abidjan', 'ABI', '1');
INSERT INTO `dg_states` VALUES ('791', '52', 'Aboisso', 'ABO', '1');
INSERT INTO `dg_states` VALUES ('792', '52', 'Adiake', 'ADI', '1');
INSERT INTO `dg_states` VALUES ('793', '52', 'Adzope', 'ADZ', '1');
INSERT INTO `dg_states` VALUES ('794', '52', 'Agboville', 'AGB', '1');
INSERT INTO `dg_states` VALUES ('795', '52', 'Agnibilekrou', 'AGN', '1');
INSERT INTO `dg_states` VALUES ('796', '52', 'Alepe', 'ALE', '1');
INSERT INTO `dg_states` VALUES ('797', '52', 'Bocanda', 'BOC', '1');
INSERT INTO `dg_states` VALUES ('798', '52', 'Bangolo', 'BAN', '1');
INSERT INTO `dg_states` VALUES ('799', '52', 'Beoumi', 'BEO', '1');
INSERT INTO `dg_states` VALUES ('800', '52', 'Biankouma', 'BIA', '1');
INSERT INTO `dg_states` VALUES ('801', '52', 'Bondoukou', 'BDK', '1');
INSERT INTO `dg_states` VALUES ('802', '52', 'Bongouanou', 'BGN', '1');
INSERT INTO `dg_states` VALUES ('803', '52', 'Bouafle', 'BFL', '1');
INSERT INTO `dg_states` VALUES ('804', '52', 'Bouake', 'BKE', '1');
INSERT INTO `dg_states` VALUES ('805', '52', 'Bouna', 'BNA', '1');
INSERT INTO `dg_states` VALUES ('806', '52', 'Boundiali', 'BDL', '1');
INSERT INTO `dg_states` VALUES ('807', '52', 'Dabakala', 'DKL', '1');
INSERT INTO `dg_states` VALUES ('808', '52', 'Dabou', 'DBU', '1');
INSERT INTO `dg_states` VALUES ('809', '52', 'Daloa', 'DAL', '1');
INSERT INTO `dg_states` VALUES ('810', '52', 'Danane', 'DAN', '1');
INSERT INTO `dg_states` VALUES ('811', '52', 'Daoukro', 'DAO', '1');
INSERT INTO `dg_states` VALUES ('812', '52', 'Dimbokro', 'DIM', '1');
INSERT INTO `dg_states` VALUES ('813', '52', 'Divo', 'DIV', '1');
INSERT INTO `dg_states` VALUES ('814', '52', 'Duekoue', 'DUE', '1');
INSERT INTO `dg_states` VALUES ('815', '52', 'Ferkessedougou', 'FER', '1');
INSERT INTO `dg_states` VALUES ('816', '52', 'Gagnoa', 'GAG', '1');
INSERT INTO `dg_states` VALUES ('817', '52', 'Grand-Bassam', 'GBA', '1');
INSERT INTO `dg_states` VALUES ('818', '52', 'Grand-Lahou', 'GLA', '1');
INSERT INTO `dg_states` VALUES ('819', '52', 'Guiglo', 'GUI', '1');
INSERT INTO `dg_states` VALUES ('820', '52', 'Issia', 'ISS', '1');
INSERT INTO `dg_states` VALUES ('821', '52', 'Jacqueville', 'JAC', '1');
INSERT INTO `dg_states` VALUES ('822', '52', 'Katiola', 'KAT', '1');
INSERT INTO `dg_states` VALUES ('823', '52', 'Korhogo', 'KOR', '1');
INSERT INTO `dg_states` VALUES ('824', '52', 'Lakota', 'LAK', '1');
INSERT INTO `dg_states` VALUES ('825', '52', 'Man', 'MAN', '1');
INSERT INTO `dg_states` VALUES ('826', '52', 'Mankono', 'MKN', '1');
INSERT INTO `dg_states` VALUES ('827', '52', 'Mbahiakro', 'MBA', '1');
INSERT INTO `dg_states` VALUES ('828', '52', 'Odienne', 'ODI', '1');
INSERT INTO `dg_states` VALUES ('829', '52', 'Oume', 'OUM', '1');
INSERT INTO `dg_states` VALUES ('830', '52', 'Sakassou', 'SAK', '1');
INSERT INTO `dg_states` VALUES ('831', '52', 'San-Pedro', 'SPE', '1');
INSERT INTO `dg_states` VALUES ('832', '52', 'Sassandra', 'SAS', '1');
INSERT INTO `dg_states` VALUES ('833', '52', 'Seguela', 'SEG', '1');
INSERT INTO `dg_states` VALUES ('834', '52', 'Sinfra', 'SIN', '1');
INSERT INTO `dg_states` VALUES ('835', '52', 'Soubre', 'SOU', '1');
INSERT INTO `dg_states` VALUES ('836', '52', 'Tabou', 'TAB', '1');
INSERT INTO `dg_states` VALUES ('837', '52', 'Tanda', 'TAN', '1');
INSERT INTO `dg_states` VALUES ('838', '52', 'Tiebissou', 'TIE', '1');
INSERT INTO `dg_states` VALUES ('839', '52', 'Tingrela', 'TIN', '1');
INSERT INTO `dg_states` VALUES ('840', '52', 'Tiassale', 'TIA', '1');
INSERT INTO `dg_states` VALUES ('841', '52', 'Touba', 'TBA', '1');
INSERT INTO `dg_states` VALUES ('842', '52', 'Toulepleu', 'TLP', '1');
INSERT INTO `dg_states` VALUES ('843', '52', 'Toumodi', 'TMD', '1');
INSERT INTO `dg_states` VALUES ('844', '52', 'Vavoua', 'VAV', '1');
INSERT INTO `dg_states` VALUES ('845', '52', 'Yamoussoukro', 'YAM', '1');
INSERT INTO `dg_states` VALUES ('846', '52', 'Zuenoula', 'ZUE', '1');
INSERT INTO `dg_states` VALUES ('847', '53', 'Bjelovar-Bilogora', 'BB', '1');
INSERT INTO `dg_states` VALUES ('848', '53', 'City of Zagreb', 'CZ', '1');
INSERT INTO `dg_states` VALUES ('849', '53', 'Dubrovnik-Neretva', 'DN', '1');
INSERT INTO `dg_states` VALUES ('850', '53', 'Istra', 'IS', '1');
INSERT INTO `dg_states` VALUES ('851', '53', 'Karlovac', 'KA', '1');
INSERT INTO `dg_states` VALUES ('852', '53', 'Koprivnica-Krizevci', 'KK', '1');
INSERT INTO `dg_states` VALUES ('853', '53', 'Krapina-Zagorje', 'KZ', '1');
INSERT INTO `dg_states` VALUES ('854', '53', 'Lika-Senj', 'LS', '1');
INSERT INTO `dg_states` VALUES ('855', '53', 'Medimurje', 'ME', '1');
INSERT INTO `dg_states` VALUES ('856', '53', 'Osijek-Baranja', 'OB', '1');
INSERT INTO `dg_states` VALUES ('857', '53', 'Pozega-Slavonia', 'PS', '1');
INSERT INTO `dg_states` VALUES ('858', '53', 'Primorje-Gorski Kotar', 'PG', '1');
INSERT INTO `dg_states` VALUES ('859', '53', 'Sibenik', 'SI', '1');
INSERT INTO `dg_states` VALUES ('860', '53', 'Sisak-Moslavina', 'SM', '1');
INSERT INTO `dg_states` VALUES ('861', '53', 'Slavonski Brod-Posavina', 'SB', '1');
INSERT INTO `dg_states` VALUES ('862', '53', 'Split-Dalmatia', 'SD', '1');
INSERT INTO `dg_states` VALUES ('863', '53', 'Varazdin', 'VA', '1');
INSERT INTO `dg_states` VALUES ('864', '53', 'Virovitica-Podravina', 'VP', '1');
INSERT INTO `dg_states` VALUES ('865', '53', 'Vukovar-Srijem', 'VS', '1');
INSERT INTO `dg_states` VALUES ('866', '53', 'Zadar-Knin', 'ZK', '1');
INSERT INTO `dg_states` VALUES ('867', '53', 'Zagreb', 'ZA', '1');
INSERT INTO `dg_states` VALUES ('868', '54', 'Camaguey', 'CA', '1');
INSERT INTO `dg_states` VALUES ('869', '54', 'Ciego de Avila', 'CD', '1');
INSERT INTO `dg_states` VALUES ('870', '54', 'Cienfuegos', 'CI', '1');
INSERT INTO `dg_states` VALUES ('871', '54', 'Ciudad de La Habana', 'CH', '1');
INSERT INTO `dg_states` VALUES ('872', '54', 'Granma', 'GR', '1');
INSERT INTO `dg_states` VALUES ('873', '54', 'Guantanamo', 'GU', '1');
INSERT INTO `dg_states` VALUES ('874', '54', 'Holguin', 'HO', '1');
INSERT INTO `dg_states` VALUES ('875', '54', 'Isla de la Juventud', 'IJ', '1');
INSERT INTO `dg_states` VALUES ('876', '54', 'La Habana', 'LH', '1');
INSERT INTO `dg_states` VALUES ('877', '54', 'Las Tunas', 'LT', '1');
INSERT INTO `dg_states` VALUES ('878', '54', 'Matanzas', 'MA', '1');
INSERT INTO `dg_states` VALUES ('879', '54', 'Pinar del Rio', 'PR', '1');
INSERT INTO `dg_states` VALUES ('880', '54', 'Sancti Spiritus', 'SS', '1');
INSERT INTO `dg_states` VALUES ('881', '54', 'Santiago de Cuba', 'SC', '1');
INSERT INTO `dg_states` VALUES ('882', '54', 'Villa Clara', 'VC', '1');
INSERT INTO `dg_states` VALUES ('883', '55', 'Famagusta', 'F', '1');
INSERT INTO `dg_states` VALUES ('884', '55', 'Kyrenia', 'K', '1');
INSERT INTO `dg_states` VALUES ('885', '55', 'Larnaca', 'A', '1');
INSERT INTO `dg_states` VALUES ('886', '55', 'Limassol', 'I', '1');
INSERT INTO `dg_states` VALUES ('887', '55', 'Nicosia', 'N', '1');
INSERT INTO `dg_states` VALUES ('888', '55', 'Paphos', 'P', '1');
INSERT INTO `dg_states` VALUES ('889', '56', 'ÃƒÅ¡steckÃƒÂ½', 'U', '1');
INSERT INTO `dg_states` VALUES ('890', '56', 'JihoÃ„ÂeskÃƒÂ½', 'C', '1');
INSERT INTO `dg_states` VALUES ('891', '56', 'JihomoravskÃƒÂ½', 'B', '1');
INSERT INTO `dg_states` VALUES ('892', '56', 'KarlovarskÃƒÂ½', 'K', '1');
INSERT INTO `dg_states` VALUES ('893', '56', 'KrÃƒÂ¡lovehradeckÃƒÂ½', 'H', '1');
INSERT INTO `dg_states` VALUES ('894', '56', 'LibereckÃƒÂ½', 'L', '1');
INSERT INTO `dg_states` VALUES ('895', '56', 'MoravskoslezskÃƒÂ½', 'T', '1');
INSERT INTO `dg_states` VALUES ('896', '56', 'OlomouckÃƒÂ½', 'M', '1');
INSERT INTO `dg_states` VALUES ('897', '56', 'PardubickÃƒÂ½', 'E', '1');
INSERT INTO `dg_states` VALUES ('898', '56', 'PlzeÃ…Ë†skÃƒÂ½', 'P', '1');
INSERT INTO `dg_states` VALUES ('899', '56', 'Praha', 'A', '1');
INSERT INTO `dg_states` VALUES ('900', '56', 'StÃ…â„¢edoÃ„ÂeskÃƒÂ½', 'S', '1');
INSERT INTO `dg_states` VALUES ('901', '56', 'VysoÃ„Âina', 'J', '1');
INSERT INTO `dg_states` VALUES ('902', '56', 'ZlÃƒÂ­nskÃƒÂ½', 'Z', '1');
INSERT INTO `dg_states` VALUES ('903', '57', 'Arhus', 'AR', '1');
INSERT INTO `dg_states` VALUES ('904', '57', 'Bornholm', 'BH', '1');
INSERT INTO `dg_states` VALUES ('905', '57', 'Copenhagen', 'CO', '1');
INSERT INTO `dg_states` VALUES ('906', '57', 'Faroe Islands', 'FO', '1');
INSERT INTO `dg_states` VALUES ('907', '57', 'Frederiksborg', 'FR', '1');
INSERT INTO `dg_states` VALUES ('908', '57', 'Fyn', 'FY', '1');
INSERT INTO `dg_states` VALUES ('909', '57', 'Kobenhavn', 'KO', '1');
INSERT INTO `dg_states` VALUES ('910', '57', 'Nordjylland', 'NO', '1');
INSERT INTO `dg_states` VALUES ('911', '57', 'Ribe', 'RI', '1');
INSERT INTO `dg_states` VALUES ('912', '57', 'Ringkobing', 'RK', '1');
INSERT INTO `dg_states` VALUES ('913', '57', 'Roskilde', 'RO', '1');
INSERT INTO `dg_states` VALUES ('914', '57', 'Sonderjylland', 'SO', '1');
INSERT INTO `dg_states` VALUES ('915', '57', 'Storstrom', 'ST', '1');
INSERT INTO `dg_states` VALUES ('916', '57', 'Vejle', 'VK', '1');
INSERT INTO `dg_states` VALUES ('917', '57', 'Vestj&aelig;lland', 'VJ', '1');
INSERT INTO `dg_states` VALUES ('918', '57', 'Viborg', 'VB', '1');
INSERT INTO `dg_states` VALUES ('919', '58', '\'Ali Sabih', 'S', '1');
INSERT INTO `dg_states` VALUES ('920', '58', 'Dikhil', 'K', '1');
INSERT INTO `dg_states` VALUES ('921', '58', 'Djibouti', 'J', '1');
INSERT INTO `dg_states` VALUES ('922', '58', 'Obock', 'O', '1');
INSERT INTO `dg_states` VALUES ('923', '58', 'Tadjoura', 'T', '1');
INSERT INTO `dg_states` VALUES ('924', '59', 'Saint Andrew Parish', 'AND', '1');
INSERT INTO `dg_states` VALUES ('925', '59', 'Saint David Parish', 'DAV', '1');
INSERT INTO `dg_states` VALUES ('926', '59', 'Saint George Parish', 'GEO', '1');
INSERT INTO `dg_states` VALUES ('927', '59', 'Saint John Parish', 'JOH', '1');
INSERT INTO `dg_states` VALUES ('928', '59', 'Saint Joseph Parish', 'JOS', '1');
INSERT INTO `dg_states` VALUES ('929', '59', 'Saint Luke Parish', 'LUK', '1');
INSERT INTO `dg_states` VALUES ('930', '59', 'Saint Mark Parish', 'MAR', '1');
INSERT INTO `dg_states` VALUES ('931', '59', 'Saint Patrick Parish', 'PAT', '1');
INSERT INTO `dg_states` VALUES ('932', '59', 'Saint Paul Parish', 'PAU', '1');
INSERT INTO `dg_states` VALUES ('933', '59', 'Saint Peter Parish', 'PET', '1');
INSERT INTO `dg_states` VALUES ('934', '60', 'Distrito Nacional', 'DN', '1');
INSERT INTO `dg_states` VALUES ('935', '60', 'Azua', 'AZ', '1');
INSERT INTO `dg_states` VALUES ('936', '60', 'Baoruco', 'BC', '1');
INSERT INTO `dg_states` VALUES ('937', '60', 'Barahona', 'BH', '1');
INSERT INTO `dg_states` VALUES ('938', '60', 'Dajabon', 'DJ', '1');
INSERT INTO `dg_states` VALUES ('939', '60', 'Duarte', 'DU', '1');
INSERT INTO `dg_states` VALUES ('940', '60', 'Elias Pina', 'EL', '1');
INSERT INTO `dg_states` VALUES ('941', '60', 'El Seybo', 'SY', '1');
INSERT INTO `dg_states` VALUES ('942', '60', 'Espaillat', 'ET', '1');
INSERT INTO `dg_states` VALUES ('943', '60', 'Hato Mayor', 'HM', '1');
INSERT INTO `dg_states` VALUES ('944', '60', 'Independencia', 'IN', '1');
INSERT INTO `dg_states` VALUES ('945', '60', 'La Altagracia', 'AL', '1');
INSERT INTO `dg_states` VALUES ('946', '60', 'La Romana', 'RO', '1');
INSERT INTO `dg_states` VALUES ('947', '60', 'La Vega', 'VE', '1');
INSERT INTO `dg_states` VALUES ('948', '60', 'Maria Trinidad Sanchez', 'MT', '1');
INSERT INTO `dg_states` VALUES ('949', '60', 'Monsenor Nouel', 'MN', '1');
INSERT INTO `dg_states` VALUES ('950', '60', 'Monte Cristi', 'MC', '1');
INSERT INTO `dg_states` VALUES ('951', '60', 'Monte Plata', 'MP', '1');
INSERT INTO `dg_states` VALUES ('952', '60', 'Pedernales', 'PD', '1');
INSERT INTO `dg_states` VALUES ('953', '60', 'Peravia (Bani)', 'PR', '1');
INSERT INTO `dg_states` VALUES ('954', '60', 'Puerto Plata', 'PP', '1');
INSERT INTO `dg_states` VALUES ('955', '60', 'Salcedo', 'SL', '1');
INSERT INTO `dg_states` VALUES ('956', '60', 'Samana', 'SM', '1');
INSERT INTO `dg_states` VALUES ('957', '60', 'Sanchez Ramirez', 'SH', '1');
INSERT INTO `dg_states` VALUES ('958', '60', 'San Cristobal', 'SC', '1');
INSERT INTO `dg_states` VALUES ('959', '60', 'San Jose de Ocoa', 'JO', '1');
INSERT INTO `dg_states` VALUES ('960', '60', 'San Juan', 'SJ', '1');
INSERT INTO `dg_states` VALUES ('961', '60', 'San Pedro de Macoris', 'PM', '1');
INSERT INTO `dg_states` VALUES ('962', '60', 'Santiago', 'SA', '1');
INSERT INTO `dg_states` VALUES ('963', '60', 'Santiago Rodriguez', 'ST', '1');
INSERT INTO `dg_states` VALUES ('964', '60', 'Santo Domingo', 'SD', '1');
INSERT INTO `dg_states` VALUES ('965', '60', 'Valverde', 'VA', '1');
INSERT INTO `dg_states` VALUES ('966', '61', 'Aileu', 'AL', '1');
INSERT INTO `dg_states` VALUES ('967', '61', 'Ainaro', 'AN', '1');
INSERT INTO `dg_states` VALUES ('968', '61', 'Baucau', 'BA', '1');
INSERT INTO `dg_states` VALUES ('969', '61', 'Bobonaro', 'BO', '1');
INSERT INTO `dg_states` VALUES ('970', '61', 'Cova Lima', 'CO', '1');
INSERT INTO `dg_states` VALUES ('971', '61', 'Dili', 'DI', '1');
INSERT INTO `dg_states` VALUES ('972', '61', 'Ermera', 'ER', '1');
INSERT INTO `dg_states` VALUES ('973', '61', 'Lautem', 'LA', '1');
INSERT INTO `dg_states` VALUES ('974', '61', 'Liquica', 'LI', '1');
INSERT INTO `dg_states` VALUES ('975', '61', 'Manatuto', 'MT', '1');
INSERT INTO `dg_states` VALUES ('976', '61', 'Manufahi', 'MF', '1');
INSERT INTO `dg_states` VALUES ('977', '61', 'Oecussi', 'OE', '1');
INSERT INTO `dg_states` VALUES ('978', '61', 'Viqueque', 'VI', '1');
INSERT INTO `dg_states` VALUES ('979', '62', 'Azuay', 'AZU', '1');
INSERT INTO `dg_states` VALUES ('980', '62', 'Bolivar', 'BOL', '1');
INSERT INTO `dg_states` VALUES ('981', '62', 'Ca&ntilde;ar', 'CAN', '1');
INSERT INTO `dg_states` VALUES ('982', '62', 'Carchi', 'CAR', '1');
INSERT INTO `dg_states` VALUES ('983', '62', 'Chimborazo', 'CHI', '1');
INSERT INTO `dg_states` VALUES ('984', '62', 'Cotopaxi', 'COT', '1');
INSERT INTO `dg_states` VALUES ('985', '62', 'El Oro', 'EOR', '1');
INSERT INTO `dg_states` VALUES ('986', '62', 'Esmeraldas', 'ESM', '1');
INSERT INTO `dg_states` VALUES ('987', '62', 'Gal&aacute;pagos', 'GPS', '1');
INSERT INTO `dg_states` VALUES ('988', '62', 'Guayas', 'GUA', '1');
INSERT INTO `dg_states` VALUES ('989', '62', 'Imbabura', 'IMB', '1');
INSERT INTO `dg_states` VALUES ('990', '62', 'Loja', 'LOJ', '1');
INSERT INTO `dg_states` VALUES ('991', '62', 'Los Rios', 'LRO', '1');
INSERT INTO `dg_states` VALUES ('992', '62', 'Manab&iacute;', 'MAN', '1');
INSERT INTO `dg_states` VALUES ('993', '62', 'Morona Santiago', 'MSA', '1');
INSERT INTO `dg_states` VALUES ('994', '62', 'Napo', 'NAP', '1');
INSERT INTO `dg_states` VALUES ('995', '62', 'Orellana', 'ORE', '1');
INSERT INTO `dg_states` VALUES ('996', '62', 'Pastaza', 'PAS', '1');
INSERT INTO `dg_states` VALUES ('997', '62', 'Pichincha', 'PIC', '1');
INSERT INTO `dg_states` VALUES ('998', '62', 'Sucumb&iacute;os', 'SUC', '1');
INSERT INTO `dg_states` VALUES ('999', '62', 'Tungurahua', 'TUN', '1');
INSERT INTO `dg_states` VALUES ('1000', '62', 'Zamora Chinchipe', 'ZCH', '1');
INSERT INTO `dg_states` VALUES ('1001', '63', 'Ad Daqahliyah', 'DHY', '1');
INSERT INTO `dg_states` VALUES ('1002', '63', 'Al Bahr al Ahmar', 'BAM', '1');
INSERT INTO `dg_states` VALUES ('1003', '63', 'Al Buhayrah', 'BHY', '1');
INSERT INTO `dg_states` VALUES ('1004', '63', 'Al Fayyum', 'FYM', '1');
INSERT INTO `dg_states` VALUES ('1005', '63', 'Al Gharbiyah', 'GBY', '1');
INSERT INTO `dg_states` VALUES ('1006', '63', 'Al Iskandariyah', 'IDR', '1');
INSERT INTO `dg_states` VALUES ('1007', '63', 'Al Isma\'iliyah', 'IML', '1');
INSERT INTO `dg_states` VALUES ('1008', '63', 'Al Jizah', 'JZH', '1');
INSERT INTO `dg_states` VALUES ('1009', '63', 'Al Minufiyah', 'MFY', '1');
INSERT INTO `dg_states` VALUES ('1010', '63', 'Al Minya', 'MNY', '1');
INSERT INTO `dg_states` VALUES ('1011', '63', 'Al Qahirah', 'QHR', '1');
INSERT INTO `dg_states` VALUES ('1012', '63', 'Al Qalyubiyah', 'QLY', '1');
INSERT INTO `dg_states` VALUES ('1013', '63', 'Al Wadi al Jadid', 'WJD', '1');
INSERT INTO `dg_states` VALUES ('1014', '63', 'Ash Sharqiyah', 'SHQ', '1');
INSERT INTO `dg_states` VALUES ('1015', '63', 'As Suways', 'SWY', '1');
INSERT INTO `dg_states` VALUES ('1016', '63', 'Aswan', 'ASW', '1');
INSERT INTO `dg_states` VALUES ('1017', '63', 'Asyut', 'ASY', '1');
INSERT INTO `dg_states` VALUES ('1018', '63', 'Bani Suwayf', 'BSW', '1');
INSERT INTO `dg_states` VALUES ('1019', '63', 'Bur Sa\'id', 'BSD', '1');
INSERT INTO `dg_states` VALUES ('1020', '63', 'Dumyat', 'DMY', '1');
INSERT INTO `dg_states` VALUES ('1021', '63', 'Janub Sina\'', 'JNS', '1');
INSERT INTO `dg_states` VALUES ('1022', '63', 'Kafr ash Shaykh', 'KSH', '1');
INSERT INTO `dg_states` VALUES ('1023', '63', 'Matruh', 'MAT', '1');
INSERT INTO `dg_states` VALUES ('1024', '63', 'Qina', 'QIN', '1');
INSERT INTO `dg_states` VALUES ('1025', '63', 'Shamal Sina\'', 'SHS', '1');
INSERT INTO `dg_states` VALUES ('1026', '63', 'Suhaj', 'SUH', '1');
INSERT INTO `dg_states` VALUES ('1027', '64', 'Ahuachapan', 'AH', '1');
INSERT INTO `dg_states` VALUES ('1028', '64', 'Cabanas', 'CA', '1');
INSERT INTO `dg_states` VALUES ('1029', '64', 'Chalatenango', 'CH', '1');
INSERT INTO `dg_states` VALUES ('1030', '64', 'Cuscatlan', 'CU', '1');
INSERT INTO `dg_states` VALUES ('1031', '64', 'La Libertad', 'LB', '1');
INSERT INTO `dg_states` VALUES ('1032', '64', 'La Paz', 'PZ', '1');
INSERT INTO `dg_states` VALUES ('1033', '64', 'La Union', 'UN', '1');
INSERT INTO `dg_states` VALUES ('1034', '64', 'Morazan', 'MO', '1');
INSERT INTO `dg_states` VALUES ('1035', '64', 'San Miguel', 'SM', '1');
INSERT INTO `dg_states` VALUES ('1036', '64', 'San Salvador', 'SS', '1');
INSERT INTO `dg_states` VALUES ('1037', '64', 'San Vicente', 'SV', '1');
INSERT INTO `dg_states` VALUES ('1038', '64', 'Santa Ana', 'SA', '1');
INSERT INTO `dg_states` VALUES ('1039', '64', 'Sonsonate', 'SO', '1');
INSERT INTO `dg_states` VALUES ('1040', '64', 'Usulutan', 'US', '1');
INSERT INTO `dg_states` VALUES ('1041', '65', 'Provincia Annobon', 'AN', '1');
INSERT INTO `dg_states` VALUES ('1042', '65', 'Provincia Bioko Norte', 'BN', '1');
INSERT INTO `dg_states` VALUES ('1043', '65', 'Provincia Bioko Sur', 'BS', '1');
INSERT INTO `dg_states` VALUES ('1044', '65', 'Provincia Centro Sur', 'CS', '1');
INSERT INTO `dg_states` VALUES ('1045', '65', 'Provincia Kie-Ntem', 'KN', '1');
INSERT INTO `dg_states` VALUES ('1046', '65', 'Provincia Litoral', 'LI', '1');
INSERT INTO `dg_states` VALUES ('1047', '65', 'Provincia Wele-Nzas', 'WN', '1');
INSERT INTO `dg_states` VALUES ('1048', '66', 'Central (Maekel)', 'MA', '1');
INSERT INTO `dg_states` VALUES ('1049', '66', 'Anseba (Keren)', 'KE', '1');
INSERT INTO `dg_states` VALUES ('1050', '66', 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', '1');
INSERT INTO `dg_states` VALUES ('1051', '66', 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', '1');
INSERT INTO `dg_states` VALUES ('1052', '66', 'Southern (Debub)', 'DE', '1');
INSERT INTO `dg_states` VALUES ('1053', '66', 'Gash-Barka (Barentu)', 'BR', '1');
INSERT INTO `dg_states` VALUES ('1054', '67', 'Harjumaa (Tallinn)', 'HA', '1');
INSERT INTO `dg_states` VALUES ('1055', '67', 'Hiiumaa (Kardla)', 'HI', '1');
INSERT INTO `dg_states` VALUES ('1056', '67', 'Ida-Virumaa (Johvi)', 'IV', '1');
INSERT INTO `dg_states` VALUES ('1057', '67', 'Jarvamaa (Paide)', 'JA', '1');
INSERT INTO `dg_states` VALUES ('1058', '67', 'Jogevamaa (Jogeva)', 'JO', '1');
INSERT INTO `dg_states` VALUES ('1059', '67', 'Laane-Virumaa (Rakvere)', 'LV', '1');
INSERT INTO `dg_states` VALUES ('1060', '67', 'Laanemaa (Haapsalu)', 'LA', '1');
INSERT INTO `dg_states` VALUES ('1061', '67', 'Parnumaa (Parnu)', 'PA', '1');
INSERT INTO `dg_states` VALUES ('1062', '67', 'Polvamaa (Polva)', 'PO', '1');
INSERT INTO `dg_states` VALUES ('1063', '67', 'Raplamaa (Rapla)', 'RA', '1');
INSERT INTO `dg_states` VALUES ('1064', '67', 'Saaremaa (Kuessaare)', 'SA', '1');
INSERT INTO `dg_states` VALUES ('1065', '67', 'Tartumaa (Tartu)', 'TA', '1');
INSERT INTO `dg_states` VALUES ('1066', '67', 'Valgamaa (Valga)', 'VA', '1');
INSERT INTO `dg_states` VALUES ('1067', '67', 'Viljandimaa (Viljandi)', 'VI', '1');
INSERT INTO `dg_states` VALUES ('1068', '67', 'Vorumaa (Voru)', 'VO', '1');
INSERT INTO `dg_states` VALUES ('1069', '68', 'Afar', 'AF', '1');
INSERT INTO `dg_states` VALUES ('1070', '68', 'Amhara', 'AH', '1');
INSERT INTO `dg_states` VALUES ('1071', '68', 'Benishangul-Gumaz', 'BG', '1');
INSERT INTO `dg_states` VALUES ('1072', '68', 'Gambela', 'GB', '1');
INSERT INTO `dg_states` VALUES ('1073', '68', 'Hariai', 'HR', '1');
INSERT INTO `dg_states` VALUES ('1074', '68', 'Oromia', 'OR', '1');
INSERT INTO `dg_states` VALUES ('1075', '68', 'Somali', 'SM', '1');
INSERT INTO `dg_states` VALUES ('1076', '68', 'Southern Nations - Nationalities and Peoples Region', 'SN', '1');
INSERT INTO `dg_states` VALUES ('1077', '68', 'Tigray', 'TG', '1');
INSERT INTO `dg_states` VALUES ('1078', '68', 'Addis Ababa', 'AA', '1');
INSERT INTO `dg_states` VALUES ('1079', '68', 'Dire Dawa', 'DD', '1');
INSERT INTO `dg_states` VALUES ('1080', '71', 'Central Division', 'C', '1');
INSERT INTO `dg_states` VALUES ('1081', '71', 'Northern Division', 'N', '1');
INSERT INTO `dg_states` VALUES ('1082', '71', 'Eastern Division', 'E', '1');
INSERT INTO `dg_states` VALUES ('1083', '71', 'Western Division', 'W', '1');
INSERT INTO `dg_states` VALUES ('1084', '71', 'Rotuma', 'R', '1');
INSERT INTO `dg_states` VALUES ('1085', '72', 'Ahvenanmaan Laani', 'AL', '1');
INSERT INTO `dg_states` VALUES ('1086', '72', 'Etela-Suomen Laani', 'ES', '1');
INSERT INTO `dg_states` VALUES ('1087', '72', 'Ita-Suomen Laani', 'IS', '1');
INSERT INTO `dg_states` VALUES ('1088', '72', 'Lansi-Suomen Laani', 'LS', '1');
INSERT INTO `dg_states` VALUES ('1089', '72', 'Lapin Lanani', 'LA', '1');
INSERT INTO `dg_states` VALUES ('1090', '72', 'Oulun Laani', 'OU', '1');
INSERT INTO `dg_states` VALUES ('1114', '74', 'Ain', '01', '1');
INSERT INTO `dg_states` VALUES ('1115', '74', 'Aisne', '02', '1');
INSERT INTO `dg_states` VALUES ('1116', '74', 'Allier', '03', '1');
INSERT INTO `dg_states` VALUES ('1117', '74', 'Alpes de Haute Provence', '04', '1');
INSERT INTO `dg_states` VALUES ('1118', '74', 'Hautes-Alpes', '05', '1');
INSERT INTO `dg_states` VALUES ('1119', '74', 'Alpes Maritimes', '06', '1');
INSERT INTO `dg_states` VALUES ('1120', '74', 'Ard&egrave;che', '07', '1');
INSERT INTO `dg_states` VALUES ('1121', '74', 'Ardennes', '08', '1');
INSERT INTO `dg_states` VALUES ('1122', '74', 'Ari&egrave;ge', '09', '1');
INSERT INTO `dg_states` VALUES ('1123', '74', 'Aube', '10', '1');
INSERT INTO `dg_states` VALUES ('1124', '74', 'Aude', '11', '1');
INSERT INTO `dg_states` VALUES ('1125', '74', 'Aveyron', '12', '1');
INSERT INTO `dg_states` VALUES ('1126', '74', 'Bouches du Rh&ocirc;ne', '13', '1');
INSERT INTO `dg_states` VALUES ('1127', '74', 'Calvados', '14', '1');
INSERT INTO `dg_states` VALUES ('1128', '74', 'Cantal', '15', '1');
INSERT INTO `dg_states` VALUES ('1129', '74', 'Charente', '16', '1');
INSERT INTO `dg_states` VALUES ('1130', '74', 'Charente Maritime', '17', '1');
INSERT INTO `dg_states` VALUES ('1131', '74', 'Cher', '18', '1');
INSERT INTO `dg_states` VALUES ('1132', '74', 'Corr&egrave;ze', '19', '1');
INSERT INTO `dg_states` VALUES ('1133', '74', 'Corse du Sud', '2A', '1');
INSERT INTO `dg_states` VALUES ('1134', '74', 'Haute Corse', '2B', '1');
INSERT INTO `dg_states` VALUES ('1135', '74', 'C&ocirc;te d&#039;or', '21', '1');
INSERT INTO `dg_states` VALUES ('1136', '74', 'C&ocirc;tes d&#039;Armor', '22', '1');
INSERT INTO `dg_states` VALUES ('1137', '74', 'Creuse', '23', '1');
INSERT INTO `dg_states` VALUES ('1138', '74', 'Dordogne', '24', '1');
INSERT INTO `dg_states` VALUES ('1139', '74', 'Doubs', '25', '1');
INSERT INTO `dg_states` VALUES ('1140', '74', 'Dr&ocirc;me', '26', '1');
INSERT INTO `dg_states` VALUES ('1141', '74', 'Eure', '27', '1');
INSERT INTO `dg_states` VALUES ('1142', '74', 'Eure et Loir', '28', '1');
INSERT INTO `dg_states` VALUES ('1143', '74', 'Finist&egrave;re', '29', '1');
INSERT INTO `dg_states` VALUES ('1144', '74', 'Gard', '30', '1');
INSERT INTO `dg_states` VALUES ('1145', '74', 'Haute Garonne', '31', '1');
INSERT INTO `dg_states` VALUES ('1146', '74', 'Gers', '32', '1');
INSERT INTO `dg_states` VALUES ('1147', '74', 'Gironde', '33', '1');
INSERT INTO `dg_states` VALUES ('1148', '74', 'H&eacute;rault', '34', '1');
INSERT INTO `dg_states` VALUES ('1149', '74', 'Ille et Vilaine', '35', '1');
INSERT INTO `dg_states` VALUES ('1150', '74', 'Indre', '36', '1');
INSERT INTO `dg_states` VALUES ('1151', '74', 'Indre et Loire', '37', '1');
INSERT INTO `dg_states` VALUES ('1152', '74', 'Is&eacute;re', '38', '1');
INSERT INTO `dg_states` VALUES ('1153', '74', 'Jura', '39', '1');
INSERT INTO `dg_states` VALUES ('1154', '74', 'Landes', '40', '1');
INSERT INTO `dg_states` VALUES ('1155', '74', 'Loir et Cher', '41', '1');
INSERT INTO `dg_states` VALUES ('1156', '74', 'Loire', '42', '1');
INSERT INTO `dg_states` VALUES ('1157', '74', 'Haute Loire', '43', '1');
INSERT INTO `dg_states` VALUES ('1158', '74', 'Loire Atlantique', '44', '1');
INSERT INTO `dg_states` VALUES ('1159', '74', 'Loiret', '45', '1');
INSERT INTO `dg_states` VALUES ('1160', '74', 'Lot', '46', '1');
INSERT INTO `dg_states` VALUES ('1161', '74', 'Lot et Garonne', '47', '1');
INSERT INTO `dg_states` VALUES ('1162', '74', 'Loz&egrave;re', '48', '1');
INSERT INTO `dg_states` VALUES ('1163', '74', 'Maine et Loire', '49', '1');
INSERT INTO `dg_states` VALUES ('1164', '74', 'Manche', '50', '1');
INSERT INTO `dg_states` VALUES ('1165', '74', 'Marne', '51', '1');
INSERT INTO `dg_states` VALUES ('1166', '74', 'Haute Marne', '52', '1');
INSERT INTO `dg_states` VALUES ('1167', '74', 'Mayenne', '53', '1');
INSERT INTO `dg_states` VALUES ('1168', '74', 'Meurthe et Moselle', '54', '1');
INSERT INTO `dg_states` VALUES ('1169', '74', 'Meuse', '55', '1');
INSERT INTO `dg_states` VALUES ('1170', '74', 'Morbihan', '56', '1');
INSERT INTO `dg_states` VALUES ('1171', '74', 'Moselle', '57', '1');
INSERT INTO `dg_states` VALUES ('1172', '74', 'Ni&egrave;vre', '58', '1');
INSERT INTO `dg_states` VALUES ('1173', '74', 'Nord', '59', '1');
INSERT INTO `dg_states` VALUES ('1174', '74', 'Oise', '60', '1');
INSERT INTO `dg_states` VALUES ('1175', '74', 'Orne', '61', '1');
INSERT INTO `dg_states` VALUES ('1176', '74', 'Pas de Calais', '62', '1');
INSERT INTO `dg_states` VALUES ('1177', '74', 'Puy de D&ocirc;me', '63', '1');
INSERT INTO `dg_states` VALUES ('1178', '74', 'Pyr&eacute;n&eacute;es Atlantiques', '64', '1');
INSERT INTO `dg_states` VALUES ('1179', '74', 'Hautes Pyr&eacute;n&eacute;es', '65', '1');
INSERT INTO `dg_states` VALUES ('1180', '74', 'Pyr&eacute;n&eacute;es Orientales', '66', '1');
INSERT INTO `dg_states` VALUES ('1181', '74', 'Bas Rhin', '67', '1');
INSERT INTO `dg_states` VALUES ('1182', '74', 'Haut Rhin', '68', '1');
INSERT INTO `dg_states` VALUES ('1183', '74', 'Rh&ocirc;ne', '69', '1');
INSERT INTO `dg_states` VALUES ('1184', '74', 'Haute Sa&ocirc;ne', '70', '1');
INSERT INTO `dg_states` VALUES ('1185', '74', 'Sa&ocirc;ne et Loire', '71', '1');
INSERT INTO `dg_states` VALUES ('1186', '74', 'Sarthe', '72', '1');
INSERT INTO `dg_states` VALUES ('1187', '74', 'Savoie', '73', '1');
INSERT INTO `dg_states` VALUES ('1188', '74', 'Haute Savoie', '74', '1');
INSERT INTO `dg_states` VALUES ('1189', '74', 'Paris', '75', '1');
INSERT INTO `dg_states` VALUES ('1190', '74', 'Seine Maritime', '76', '1');
INSERT INTO `dg_states` VALUES ('1191', '74', 'Seine et Marne', '77', '1');
INSERT INTO `dg_states` VALUES ('1192', '74', 'Yvelines', '78', '1');
INSERT INTO `dg_states` VALUES ('1193', '74', 'Deux S&egrave;vres', '79', '1');
INSERT INTO `dg_states` VALUES ('1194', '74', 'Somme', '80', '1');
INSERT INTO `dg_states` VALUES ('1195', '74', 'Tarn', '81', '1');
INSERT INTO `dg_states` VALUES ('1196', '74', 'Tarn et Garonne', '82', '1');
INSERT INTO `dg_states` VALUES ('1197', '74', 'Var', '83', '1');
INSERT INTO `dg_states` VALUES ('1198', '74', 'Vaucluse', '84', '1');
INSERT INTO `dg_states` VALUES ('1199', '74', 'Vend&eacute;e', '85', '1');
INSERT INTO `dg_states` VALUES ('1200', '74', 'Vienne', '86', '1');
INSERT INTO `dg_states` VALUES ('1201', '74', 'Haute Vienne', '87', '1');
INSERT INTO `dg_states` VALUES ('1202', '74', 'Vosges', '88', '1');
INSERT INTO `dg_states` VALUES ('1203', '74', 'Yonne', '89', '1');
INSERT INTO `dg_states` VALUES ('1204', '74', 'Territoire de Belfort', '90', '1');
INSERT INTO `dg_states` VALUES ('1205', '74', 'Essonne', '91', '1');
INSERT INTO `dg_states` VALUES ('1206', '74', 'Hauts de Seine', '92', '1');
INSERT INTO `dg_states` VALUES ('1207', '74', 'Seine St-Denis', '93', '1');
INSERT INTO `dg_states` VALUES ('1208', '74', 'Val de Marne', '94', '1');
INSERT INTO `dg_states` VALUES ('1209', '74', 'Val d\'Oise', '95', '1');
INSERT INTO `dg_states` VALUES ('1210', '76', 'Archipel des Marquises', 'M', '1');
INSERT INTO `dg_states` VALUES ('1211', '76', 'Archipel des Tuamotu', 'T', '1');
INSERT INTO `dg_states` VALUES ('1212', '76', 'Archipel des Tubuai', 'I', '1');
INSERT INTO `dg_states` VALUES ('1213', '76', 'Iles du Vent', 'V', '1');
INSERT INTO `dg_states` VALUES ('1214', '76', 'Iles Sous-le-Vent', 'S', '1');
INSERT INTO `dg_states` VALUES ('1215', '77', 'Iles Crozet', 'C', '1');
INSERT INTO `dg_states` VALUES ('1216', '77', 'Iles Kerguelen', 'K', '1');
INSERT INTO `dg_states` VALUES ('1217', '77', 'Ile Amsterdam', 'A', '1');
INSERT INTO `dg_states` VALUES ('1218', '77', 'Ile Saint-Paul', 'P', '1');
INSERT INTO `dg_states` VALUES ('1219', '77', 'Adelie Land', 'D', '1');
INSERT INTO `dg_states` VALUES ('1220', '78', 'Estuaire', 'ES', '1');
INSERT INTO `dg_states` VALUES ('1221', '78', 'Haut-Ogooue', 'HO', '1');
INSERT INTO `dg_states` VALUES ('1222', '78', 'Moyen-Ogooue', 'MO', '1');
INSERT INTO `dg_states` VALUES ('1223', '78', 'Ngounie', 'NG', '1');
INSERT INTO `dg_states` VALUES ('1224', '78', 'Nyanga', 'NY', '1');
INSERT INTO `dg_states` VALUES ('1225', '78', 'Ogooue-Ivindo', 'OI', '1');
INSERT INTO `dg_states` VALUES ('1226', '78', 'Ogooue-Lolo', 'OL', '1');
INSERT INTO `dg_states` VALUES ('1227', '78', 'Ogooue-Maritime', 'OM', '1');
INSERT INTO `dg_states` VALUES ('1228', '78', 'Woleu-Ntem', 'WN', '1');
INSERT INTO `dg_states` VALUES ('1229', '79', 'Banjul', 'BJ', '1');
INSERT INTO `dg_states` VALUES ('1230', '79', 'Basse', 'BS', '1');
INSERT INTO `dg_states` VALUES ('1231', '79', 'Brikama', 'BR', '1');
INSERT INTO `dg_states` VALUES ('1232', '79', 'Janjangbure', 'JA', '1');
INSERT INTO `dg_states` VALUES ('1233', '79', 'Kanifeng', 'KA', '1');
INSERT INTO `dg_states` VALUES ('1234', '79', 'Kerewan', 'KE', '1');
INSERT INTO `dg_states` VALUES ('1235', '79', 'Kuntaur', 'KU', '1');
INSERT INTO `dg_states` VALUES ('1236', '79', 'Mansakonko', 'MA', '1');
INSERT INTO `dg_states` VALUES ('1237', '79', 'Lower River', 'LR', '1');
INSERT INTO `dg_states` VALUES ('1238', '79', 'Central River', 'CR', '1');
INSERT INTO `dg_states` VALUES ('1239', '79', 'North Bank', 'NB', '1');
INSERT INTO `dg_states` VALUES ('1240', '79', 'Upper River', 'UR', '1');
INSERT INTO `dg_states` VALUES ('1241', '79', 'Western', 'WE', '1');
INSERT INTO `dg_states` VALUES ('1242', '80', 'Abkhazia', 'AB', '1');
INSERT INTO `dg_states` VALUES ('1243', '80', 'Ajaria', 'AJ', '1');
INSERT INTO `dg_states` VALUES ('1244', '80', 'Tbilisi', 'TB', '1');
INSERT INTO `dg_states` VALUES ('1245', '80', 'Guria', 'GU', '1');
INSERT INTO `dg_states` VALUES ('1246', '80', 'Imereti', 'IM', '1');
INSERT INTO `dg_states` VALUES ('1247', '80', 'Kakheti', 'KA', '1');
INSERT INTO `dg_states` VALUES ('1248', '80', 'Kvemo Kartli', 'KK', '1');
INSERT INTO `dg_states` VALUES ('1249', '80', 'Mtskheta-Mtianeti', 'MM', '1');
INSERT INTO `dg_states` VALUES ('1250', '80', 'Racha Lechkhumi and Kvemo Svanet', 'RL', '1');
INSERT INTO `dg_states` VALUES ('1251', '80', 'Samegrelo-Zemo Svaneti', 'SZ', '1');
INSERT INTO `dg_states` VALUES ('1252', '80', 'Samtskhe-Javakheti', 'SJ', '1');
INSERT INTO `dg_states` VALUES ('1253', '80', 'Shida Kartli', 'SK', '1');
INSERT INTO `dg_states` VALUES ('1254', '81', 'Baden-W&uuml;rttemberg', 'BAW', '1');
INSERT INTO `dg_states` VALUES ('1255', '81', 'Bayern', 'BAY', '1');
INSERT INTO `dg_states` VALUES ('1256', '81', 'Berlin', 'BER', '1');
INSERT INTO `dg_states` VALUES ('1257', '81', 'Brandenburg', 'BRG', '1');
INSERT INTO `dg_states` VALUES ('1258', '81', 'Bremen', 'BRE', '1');
INSERT INTO `dg_states` VALUES ('1259', '81', 'Hamburg', 'HAM', '1');
INSERT INTO `dg_states` VALUES ('1260', '81', 'Hessen', 'HES', '1');
INSERT INTO `dg_states` VALUES ('1261', '81', 'Mecklenburg-Vorpommern', 'MEC', '1');
INSERT INTO `dg_states` VALUES ('1262', '81', 'Niedersachsen', 'NDS', '1');
INSERT INTO `dg_states` VALUES ('1263', '81', 'Nordrhein-Westfalen', 'NRW', '1');
INSERT INTO `dg_states` VALUES ('1264', '81', 'Rheinland-Pfalz', 'RHE', '1');
INSERT INTO `dg_states` VALUES ('1265', '81', 'Saarland', 'SAR', '1');
INSERT INTO `dg_states` VALUES ('1266', '81', 'Sachsen', 'SAS', '1');
INSERT INTO `dg_states` VALUES ('1267', '81', 'Sachsen-Anhalt', 'SAC', '1');
INSERT INTO `dg_states` VALUES ('1268', '81', 'Schleswig-Holstein', 'SCN', '1');
INSERT INTO `dg_states` VALUES ('1269', '81', 'Th&uuml;ringen', 'THE', '1');
INSERT INTO `dg_states` VALUES ('1270', '82', 'Ashanti Region', 'AS', '1');
INSERT INTO `dg_states` VALUES ('1271', '82', 'Brong-Ahafo Region', 'BA', '1');
INSERT INTO `dg_states` VALUES ('1272', '82', 'Central Region', 'CE', '1');
INSERT INTO `dg_states` VALUES ('1273', '82', 'Eastern Region', 'EA', '1');
INSERT INTO `dg_states` VALUES ('1274', '82', 'Greater Accra Region', 'GA', '1');
INSERT INTO `dg_states` VALUES ('1275', '82', 'Northern Region', 'NO', '1');
INSERT INTO `dg_states` VALUES ('1276', '82', 'Upper East Region', 'UE', '1');
INSERT INTO `dg_states` VALUES ('1277', '82', 'Upper West Region', 'UW', '1');
INSERT INTO `dg_states` VALUES ('1278', '82', 'Volta Region', 'VO', '1');
INSERT INTO `dg_states` VALUES ('1279', '82', 'Western Region', 'WE', '1');
INSERT INTO `dg_states` VALUES ('1280', '84', 'Attica', 'AT', '1');
INSERT INTO `dg_states` VALUES ('1281', '84', 'Central Greece', 'CN', '1');
INSERT INTO `dg_states` VALUES ('1282', '84', 'Central Macedonia', 'CM', '1');
INSERT INTO `dg_states` VALUES ('1283', '84', 'Crete', 'CR', '1');
INSERT INTO `dg_states` VALUES ('1284', '84', 'East Macedonia and Thrace', 'EM', '1');
INSERT INTO `dg_states` VALUES ('1285', '84', 'Epirus', 'EP', '1');
INSERT INTO `dg_states` VALUES ('1286', '84', 'Ionian Islands', 'II', '1');
INSERT INTO `dg_states` VALUES ('1287', '84', 'North Aegean', 'NA', '1');
INSERT INTO `dg_states` VALUES ('1288', '84', 'Peloponnesos', 'PP', '1');
INSERT INTO `dg_states` VALUES ('1289', '84', 'South Aegean', 'SA', '1');
INSERT INTO `dg_states` VALUES ('1290', '84', 'Thessaly', 'TH', '1');
INSERT INTO `dg_states` VALUES ('1291', '84', 'West Greece', 'WG', '1');
INSERT INTO `dg_states` VALUES ('1292', '84', 'West Macedonia', 'WM', '1');
INSERT INTO `dg_states` VALUES ('1293', '85', 'Avannaa', 'A', '1');
INSERT INTO `dg_states` VALUES ('1294', '85', 'Tunu', 'T', '1');
INSERT INTO `dg_states` VALUES ('1295', '85', 'Kitaa', 'K', '1');
INSERT INTO `dg_states` VALUES ('1296', '86', 'Saint Andrew', 'A', '1');
INSERT INTO `dg_states` VALUES ('1297', '86', 'Saint David', 'D', '1');
INSERT INTO `dg_states` VALUES ('1298', '86', 'Saint George', 'G', '1');
INSERT INTO `dg_states` VALUES ('1299', '86', 'Saint John', 'J', '1');
INSERT INTO `dg_states` VALUES ('1300', '86', 'Saint Mark', 'M', '1');
INSERT INTO `dg_states` VALUES ('1301', '86', 'Saint Patrick', 'P', '1');
INSERT INTO `dg_states` VALUES ('1302', '86', 'Carriacou', 'C', '1');
INSERT INTO `dg_states` VALUES ('1303', '86', 'Petit Martinique', 'Q', '1');
INSERT INTO `dg_states` VALUES ('1304', '89', 'Alta Verapaz', 'AV', '1');
INSERT INTO `dg_states` VALUES ('1305', '89', 'Baja Verapaz', 'BV', '1');
INSERT INTO `dg_states` VALUES ('1306', '89', 'Chimaltenango', 'CM', '1');
INSERT INTO `dg_states` VALUES ('1307', '89', 'Chiquimula', 'CQ', '1');
INSERT INTO `dg_states` VALUES ('1308', '89', 'El Peten', 'PE', '1');
INSERT INTO `dg_states` VALUES ('1309', '89', 'El Progreso', 'PR', '1');
INSERT INTO `dg_states` VALUES ('1310', '89', 'El Quiche', 'QC', '1');
INSERT INTO `dg_states` VALUES ('1311', '89', 'Escuintla', 'ES', '1');
INSERT INTO `dg_states` VALUES ('1312', '89', 'Guatemala', 'GU', '1');
INSERT INTO `dg_states` VALUES ('1313', '89', 'Huehuetenango', 'HU', '1');
INSERT INTO `dg_states` VALUES ('1314', '89', 'Izabal', 'IZ', '1');
INSERT INTO `dg_states` VALUES ('1315', '89', 'Jalapa', 'JA', '1');
INSERT INTO `dg_states` VALUES ('1316', '89', 'Jutiapa', 'JU', '1');
INSERT INTO `dg_states` VALUES ('1317', '89', 'Quetzaltenango', 'QZ', '1');
INSERT INTO `dg_states` VALUES ('1318', '89', 'Retalhuleu', 'RE', '1');
INSERT INTO `dg_states` VALUES ('1319', '89', 'Sacatepequez', 'ST', '1');
INSERT INTO `dg_states` VALUES ('1320', '89', 'San Marcos', 'SM', '1');
INSERT INTO `dg_states` VALUES ('1321', '89', 'Santa Rosa', 'SR', '1');
INSERT INTO `dg_states` VALUES ('1322', '89', 'Solola', 'SO', '1');
INSERT INTO `dg_states` VALUES ('1323', '89', 'Suchitepequez', 'SU', '1');
INSERT INTO `dg_states` VALUES ('1324', '89', 'Totonicapan', 'TO', '1');
INSERT INTO `dg_states` VALUES ('1325', '89', 'Zacapa', 'ZA', '1');
INSERT INTO `dg_states` VALUES ('1326', '90', 'Conakry', 'CNK', '1');
INSERT INTO `dg_states` VALUES ('1327', '90', 'Beyla', 'BYL', '1');
INSERT INTO `dg_states` VALUES ('1328', '90', 'Boffa', 'BFA', '1');
INSERT INTO `dg_states` VALUES ('1329', '90', 'Boke', 'BOK', '1');
INSERT INTO `dg_states` VALUES ('1330', '90', 'Coyah', 'COY', '1');
INSERT INTO `dg_states` VALUES ('1331', '90', 'Dabola', 'DBL', '1');
INSERT INTO `dg_states` VALUES ('1332', '90', 'Dalaba', 'DLB', '1');
INSERT INTO `dg_states` VALUES ('1333', '90', 'Dinguiraye', 'DGR', '1');
INSERT INTO `dg_states` VALUES ('1334', '90', 'Dubreka', 'DBR', '1');
INSERT INTO `dg_states` VALUES ('1335', '90', 'Faranah', 'FRN', '1');
INSERT INTO `dg_states` VALUES ('1336', '90', 'Forecariah', 'FRC', '1');
INSERT INTO `dg_states` VALUES ('1337', '90', 'Fria', 'FRI', '1');
INSERT INTO `dg_states` VALUES ('1338', '90', 'Gaoual', 'GAO', '1');
INSERT INTO `dg_states` VALUES ('1339', '90', 'Gueckedou', 'GCD', '1');
INSERT INTO `dg_states` VALUES ('1340', '90', 'Kankan', 'KNK', '1');
INSERT INTO `dg_states` VALUES ('1341', '90', 'Kerouane', 'KRN', '1');
INSERT INTO `dg_states` VALUES ('1342', '90', 'Kindia', 'KND', '1');
INSERT INTO `dg_states` VALUES ('1343', '90', 'Kissidougou', 'KSD', '1');
INSERT INTO `dg_states` VALUES ('1344', '90', 'Koubia', 'KBA', '1');
INSERT INTO `dg_states` VALUES ('1345', '90', 'Koundara', 'KDA', '1');
INSERT INTO `dg_states` VALUES ('1346', '90', 'Kouroussa', 'KRA', '1');
INSERT INTO `dg_states` VALUES ('1347', '90', 'Labe', 'LAB', '1');
INSERT INTO `dg_states` VALUES ('1348', '90', 'Lelouma', 'LLM', '1');
INSERT INTO `dg_states` VALUES ('1349', '90', 'Lola', 'LOL', '1');
INSERT INTO `dg_states` VALUES ('1350', '90', 'Macenta', 'MCT', '1');
INSERT INTO `dg_states` VALUES ('1351', '90', 'Mali', 'MAL', '1');
INSERT INTO `dg_states` VALUES ('1352', '90', 'Mamou', 'MAM', '1');
INSERT INTO `dg_states` VALUES ('1353', '90', 'Mandiana', 'MAN', '1');
INSERT INTO `dg_states` VALUES ('1354', '90', 'Nzerekore', 'NZR', '1');
INSERT INTO `dg_states` VALUES ('1355', '90', 'Pita', 'PIT', '1');
INSERT INTO `dg_states` VALUES ('1356', '90', 'Siguiri', 'SIG', '1');
INSERT INTO `dg_states` VALUES ('1357', '90', 'Telimele', 'TLM', '1');
INSERT INTO `dg_states` VALUES ('1358', '90', 'Tougue', 'TOG', '1');
INSERT INTO `dg_states` VALUES ('1359', '90', 'Yomou', 'YOM', '1');
INSERT INTO `dg_states` VALUES ('1360', '91', 'Bafata Region', 'BF', '1');
INSERT INTO `dg_states` VALUES ('1361', '91', 'Biombo Region', 'BB', '1');
INSERT INTO `dg_states` VALUES ('1362', '91', 'Bissau Region', 'BS', '1');
INSERT INTO `dg_states` VALUES ('1363', '91', 'Bolama Region', 'BL', '1');
INSERT INTO `dg_states` VALUES ('1364', '91', 'Cacheu Region', 'CA', '1');
INSERT INTO `dg_states` VALUES ('1365', '91', 'Gabu Region', 'GA', '1');
INSERT INTO `dg_states` VALUES ('1366', '91', 'Oio Region', 'OI', '1');
INSERT INTO `dg_states` VALUES ('1367', '91', 'Quinara Region', 'QU', '1');
INSERT INTO `dg_states` VALUES ('1368', '91', 'Tombali Region', 'TO', '1');
INSERT INTO `dg_states` VALUES ('1369', '92', 'Barima-Waini', 'BW', '1');
INSERT INTO `dg_states` VALUES ('1370', '92', 'Cuyuni-Mazaruni', 'CM', '1');
INSERT INTO `dg_states` VALUES ('1371', '92', 'Demerara-Mahaica', 'DM', '1');
INSERT INTO `dg_states` VALUES ('1372', '92', 'East Berbice-Corentyne', 'EC', '1');
INSERT INTO `dg_states` VALUES ('1373', '92', 'Essequibo Islands-West Demerara', 'EW', '1');
INSERT INTO `dg_states` VALUES ('1374', '92', 'Mahaica-Berbice', 'MB', '1');
INSERT INTO `dg_states` VALUES ('1375', '92', 'Pomeroon-Supenaam', 'PM', '1');
INSERT INTO `dg_states` VALUES ('1376', '92', 'Potaro-Siparuni', 'PI', '1');
INSERT INTO `dg_states` VALUES ('1377', '92', 'Upper Demerara-Berbice', 'UD', '1');
INSERT INTO `dg_states` VALUES ('1378', '92', 'Upper Takutu-Upper Essequibo', 'UT', '1');
INSERT INTO `dg_states` VALUES ('1379', '93', 'Artibonite', 'AR', '1');
INSERT INTO `dg_states` VALUES ('1380', '93', 'Centre', 'CE', '1');
INSERT INTO `dg_states` VALUES ('1381', '93', 'Grand\'Anse', 'GA', '1');
INSERT INTO `dg_states` VALUES ('1382', '93', 'Nord', 'ND', '1');
INSERT INTO `dg_states` VALUES ('1383', '93', 'Nord-Est', 'NE', '1');
INSERT INTO `dg_states` VALUES ('1384', '93', 'Nord-Ouest', 'NO', '1');
INSERT INTO `dg_states` VALUES ('1385', '93', 'Ouest', 'OU', '1');
INSERT INTO `dg_states` VALUES ('1386', '93', 'Sud', 'SD', '1');
INSERT INTO `dg_states` VALUES ('1387', '93', 'Sud-Est', 'SE', '1');
INSERT INTO `dg_states` VALUES ('1388', '94', 'Flat Island', 'F', '1');
INSERT INTO `dg_states` VALUES ('1389', '94', 'McDonald Island', 'M', '1');
INSERT INTO `dg_states` VALUES ('1390', '94', 'Shag Island', 'S', '1');
INSERT INTO `dg_states` VALUES ('1391', '94', 'Heard Island', 'H', '1');
INSERT INTO `dg_states` VALUES ('1392', '95', 'Atlantida', 'AT', '1');
INSERT INTO `dg_states` VALUES ('1393', '95', 'Choluteca', 'CH', '1');
INSERT INTO `dg_states` VALUES ('1394', '95', 'Colon', 'CL', '1');
INSERT INTO `dg_states` VALUES ('1395', '95', 'Comayagua', 'CM', '1');
INSERT INTO `dg_states` VALUES ('1396', '95', 'Copan', 'CP', '1');
INSERT INTO `dg_states` VALUES ('1397', '95', 'Cortes', 'CR', '1');
INSERT INTO `dg_states` VALUES ('1398', '95', 'El Paraiso', 'PA', '1');
INSERT INTO `dg_states` VALUES ('1399', '95', 'Francisco Morazan', 'FM', '1');
INSERT INTO `dg_states` VALUES ('1400', '95', 'Gracias a Dios', 'GD', '1');
INSERT INTO `dg_states` VALUES ('1401', '95', 'Intibuca', 'IN', '1');
INSERT INTO `dg_states` VALUES ('1402', '95', 'Islas de la Bahia (Bay Islands)', 'IB', '1');
INSERT INTO `dg_states` VALUES ('1403', '95', 'La Paz', 'PZ', '1');
INSERT INTO `dg_states` VALUES ('1404', '95', 'Lempira', 'LE', '1');
INSERT INTO `dg_states` VALUES ('1405', '95', 'Ocotepeque', 'OC', '1');
INSERT INTO `dg_states` VALUES ('1406', '95', 'Olancho', 'OL', '1');
INSERT INTO `dg_states` VALUES ('1407', '95', 'Santa Barbara', 'SB', '1');
INSERT INTO `dg_states` VALUES ('1408', '95', 'Valle', 'VA', '1');
INSERT INTO `dg_states` VALUES ('1409', '95', 'Yoro', 'YO', '1');
INSERT INTO `dg_states` VALUES ('1410', '96', 'Central and Western Hong Kong Island', 'HCW', '1');
INSERT INTO `dg_states` VALUES ('1411', '96', 'Eastern Hong Kong Island', 'HEA', '1');
INSERT INTO `dg_states` VALUES ('1412', '96', 'Southern Hong Kong Island', 'HSO', '1');
INSERT INTO `dg_states` VALUES ('1413', '96', 'Wan Chai Hong Kong Island', 'HWC', '1');
INSERT INTO `dg_states` VALUES ('1414', '96', 'Kowloon City Kowloon', 'KKC', '1');
INSERT INTO `dg_states` VALUES ('1415', '96', 'Kwun Tong Kowloon', 'KKT', '1');
INSERT INTO `dg_states` VALUES ('1416', '96', 'Sham Shui Po Kowloon', 'KSS', '1');
INSERT INTO `dg_states` VALUES ('1417', '96', 'Wong Tai Sin Kowloon', 'KWT', '1');
INSERT INTO `dg_states` VALUES ('1418', '96', 'Yau Tsim Mong Kowloon', 'KYT', '1');
INSERT INTO `dg_states` VALUES ('1419', '96', 'Islands New Territories', 'NIS', '1');
INSERT INTO `dg_states` VALUES ('1420', '96', 'Kwai Tsing New Territories', 'NKT', '1');
INSERT INTO `dg_states` VALUES ('1421', '96', 'North New Territories', 'NNO', '1');
INSERT INTO `dg_states` VALUES ('1422', '96', 'Sai Kung New Territories', 'NSK', '1');
INSERT INTO `dg_states` VALUES ('1423', '96', 'Sha Tin New Territories', 'NST', '1');
INSERT INTO `dg_states` VALUES ('1424', '96', 'Tai Po New Territories', 'NTP', '1');
INSERT INTO `dg_states` VALUES ('1425', '96', 'Tsuen Wan New Territories', 'NTW', '1');
INSERT INTO `dg_states` VALUES ('1426', '96', 'Tuen Mun New Territories', 'NTM', '1');
INSERT INTO `dg_states` VALUES ('1427', '96', 'Yuen Long New Territories', 'NYL', '1');
INSERT INTO `dg_states` VALUES ('1428', '97', 'Bacs-Kiskun', 'BK', '1');
INSERT INTO `dg_states` VALUES ('1429', '97', 'Baranya', 'BA', '1');
INSERT INTO `dg_states` VALUES ('1430', '97', 'Bekes', 'BE', '1');
INSERT INTO `dg_states` VALUES ('1431', '97', 'Bekescsaba', 'BS', '1');
INSERT INTO `dg_states` VALUES ('1432', '97', 'Borsod-Abauj-Zemplen', 'BZ', '1');
INSERT INTO `dg_states` VALUES ('1433', '97', 'Budapest', 'BU', '1');
INSERT INTO `dg_states` VALUES ('1434', '97', 'Csongrad', 'CS', '1');
INSERT INTO `dg_states` VALUES ('1435', '97', 'Debrecen', 'DE', '1');
INSERT INTO `dg_states` VALUES ('1436', '97', 'Dunaujvaros', 'DU', '1');
INSERT INTO `dg_states` VALUES ('1437', '97', 'Eger', 'EG', '1');
INSERT INTO `dg_states` VALUES ('1438', '97', 'Fejer', 'FE', '1');
INSERT INTO `dg_states` VALUES ('1439', '97', 'Gyor', 'GY', '1');
INSERT INTO `dg_states` VALUES ('1440', '97', 'Gyor-Moson-Sopron', 'GM', '1');
INSERT INTO `dg_states` VALUES ('1441', '97', 'Hajdu-Bihar', 'HB', '1');
INSERT INTO `dg_states` VALUES ('1442', '97', 'Heves', 'HE', '1');
INSERT INTO `dg_states` VALUES ('1443', '97', 'Hodmezovasarhely', 'HO', '1');
INSERT INTO `dg_states` VALUES ('1444', '97', 'Jasz-Nagykun-Szolnok', 'JN', '1');
INSERT INTO `dg_states` VALUES ('1445', '97', 'Kaposvar', 'KA', '1');
INSERT INTO `dg_states` VALUES ('1446', '97', 'Kecskemet', 'KE', '1');
INSERT INTO `dg_states` VALUES ('1447', '97', 'Komarom-Esztergom', 'KO', '1');
INSERT INTO `dg_states` VALUES ('1448', '97', 'Miskolc', 'MI', '1');
INSERT INTO `dg_states` VALUES ('1449', '97', 'Nagykanizsa', 'NA', '1');
INSERT INTO `dg_states` VALUES ('1450', '97', 'Nograd', 'NO', '1');
INSERT INTO `dg_states` VALUES ('1451', '97', 'Nyiregyhaza', 'NY', '1');
INSERT INTO `dg_states` VALUES ('1452', '97', 'Pecs', 'PE', '1');
INSERT INTO `dg_states` VALUES ('1453', '97', 'Pest', 'PS', '1');
INSERT INTO `dg_states` VALUES ('1454', '97', 'Somogy', 'SO', '1');
INSERT INTO `dg_states` VALUES ('1455', '97', 'Sopron', 'SP', '1');
INSERT INTO `dg_states` VALUES ('1456', '97', 'Szabolcs-Szatmar-Bereg', 'SS', '1');
INSERT INTO `dg_states` VALUES ('1457', '97', 'Szeged', 'SZ', '1');
INSERT INTO `dg_states` VALUES ('1458', '97', 'Szekesfehervar', 'SE', '1');
INSERT INTO `dg_states` VALUES ('1459', '97', 'Szolnok', 'SL', '1');
INSERT INTO `dg_states` VALUES ('1460', '97', 'Szombathely', 'SM', '1');
INSERT INTO `dg_states` VALUES ('1461', '97', 'Tatabanya', 'TA', '1');
INSERT INTO `dg_states` VALUES ('1462', '97', 'Tolna', 'TO', '1');
INSERT INTO `dg_states` VALUES ('1463', '97', 'Vas', 'VA', '1');
INSERT INTO `dg_states` VALUES ('1464', '97', 'Veszprem', 'VE', '1');
INSERT INTO `dg_states` VALUES ('1465', '97', 'Zala', 'ZA', '1');
INSERT INTO `dg_states` VALUES ('1466', '97', 'Zalaegerszeg', 'ZZ', '1');
INSERT INTO `dg_states` VALUES ('1467', '98', 'Austurland', 'AL', '1');
INSERT INTO `dg_states` VALUES ('1468', '98', 'Hofuoborgarsvaeoi', 'HF', '1');
INSERT INTO `dg_states` VALUES ('1469', '98', 'Norourland eystra', 'NE', '1');
INSERT INTO `dg_states` VALUES ('1470', '98', 'Norourland vestra', 'NV', '1');
INSERT INTO `dg_states` VALUES ('1471', '98', 'Suourland', 'SL', '1');
INSERT INTO `dg_states` VALUES ('1472', '98', 'Suournes', 'SN', '1');
INSERT INTO `dg_states` VALUES ('1473', '98', 'Vestfiroir', 'VF', '1');
INSERT INTO `dg_states` VALUES ('1474', '98', 'Vesturland', 'VL', '1');
INSERT INTO `dg_states` VALUES ('1475', '99', 'Andaman and Nicobar Islands', 'AN', '1');
INSERT INTO `dg_states` VALUES ('1476', '99', 'Andhra Pradesh', 'AP', '1');
INSERT INTO `dg_states` VALUES ('1477', '99', 'Arunachal Pradesh', 'AR', '1');
INSERT INTO `dg_states` VALUES ('1478', '99', 'Assam', 'AS', '1');
INSERT INTO `dg_states` VALUES ('1479', '99', 'Bihar', 'BI', '1');
INSERT INTO `dg_states` VALUES ('1480', '99', 'Chandigarh', 'CH', '1');
INSERT INTO `dg_states` VALUES ('1481', '99', 'Dadra and Nagar Haveli', 'DA', '1');
INSERT INTO `dg_states` VALUES ('1482', '99', 'Daman and Diu', 'DM', '1');
INSERT INTO `dg_states` VALUES ('1483', '99', 'Delhi', 'DE', '1');
INSERT INTO `dg_states` VALUES ('1484', '99', 'Goa', 'GO', '1');
INSERT INTO `dg_states` VALUES ('1485', '99', 'Gujarat', 'GU', '1');
INSERT INTO `dg_states` VALUES ('1486', '99', 'Haryana', 'HA', '1');
INSERT INTO `dg_states` VALUES ('1487', '99', 'Himachal Pradesh', 'HP', '1');
INSERT INTO `dg_states` VALUES ('1488', '99', 'Jammu and Kashmir', 'JA', '1');
INSERT INTO `dg_states` VALUES ('1489', '99', 'Karnataka', 'KA', '1');
INSERT INTO `dg_states` VALUES ('1490', '99', 'Kerala', 'KE', '1');
INSERT INTO `dg_states` VALUES ('1491', '99', 'Lakshadweep Islands', 'LI', '1');
INSERT INTO `dg_states` VALUES ('1492', '99', 'Madhya Pradesh', 'MP', '1');
INSERT INTO `dg_states` VALUES ('1493', '99', 'Maharashtra', 'MA', '1');
INSERT INTO `dg_states` VALUES ('1494', '99', 'Manipur', 'MN', '1');
INSERT INTO `dg_states` VALUES ('1495', '99', 'Meghalaya', 'ME', '1');
INSERT INTO `dg_states` VALUES ('1496', '99', 'Mizoram', 'MI', '1');
INSERT INTO `dg_states` VALUES ('1497', '99', 'Nagaland', 'NA', '1');
INSERT INTO `dg_states` VALUES ('1498', '99', 'Orissa', 'OR', '1');
INSERT INTO `dg_states` VALUES ('1499', '99', 'Pondicherry', 'PO', '1');
INSERT INTO `dg_states` VALUES ('1500', '99', 'Punjab', 'PU', '1');
INSERT INTO `dg_states` VALUES ('1501', '99', 'Rajasthan', 'RA', '1');
INSERT INTO `dg_states` VALUES ('1502', '99', 'Sikkim', 'SI', '1');
INSERT INTO `dg_states` VALUES ('1503', '99', 'Tamil Nadu', 'TN', '1');
INSERT INTO `dg_states` VALUES ('1504', '99', 'Tripura', 'TR', '1');
INSERT INTO `dg_states` VALUES ('1505', '99', 'Uttar Pradesh', 'UP', '1');
INSERT INTO `dg_states` VALUES ('1506', '99', 'West Bengal', 'WB', '1');
INSERT INTO `dg_states` VALUES ('1507', '100', 'Aceh', 'AC', '1');
INSERT INTO `dg_states` VALUES ('1508', '100', 'Bali', 'BA', '1');
INSERT INTO `dg_states` VALUES ('1509', '100', 'Banten', 'BT', '1');
INSERT INTO `dg_states` VALUES ('1510', '100', 'Bengkulu', 'BE', '1');
INSERT INTO `dg_states` VALUES ('1511', '100', 'BoDeTaBek', 'BD', '1');
INSERT INTO `dg_states` VALUES ('1512', '100', 'Gorontalo', 'GO', '1');
INSERT INTO `dg_states` VALUES ('1513', '100', 'Jakarta Raya', 'JK', '1');
INSERT INTO `dg_states` VALUES ('1514', '100', 'Jambi', 'JA', '1');
INSERT INTO `dg_states` VALUES ('1515', '100', 'Jawa Barat', 'JB', '1');
INSERT INTO `dg_states` VALUES ('1516', '100', 'Jawa Tengah', 'JT', '1');
INSERT INTO `dg_states` VALUES ('1517', '100', 'Jawa Timur', 'JI', '1');
INSERT INTO `dg_states` VALUES ('1518', '100', 'Kalimantan Barat', 'KB', '1');
INSERT INTO `dg_states` VALUES ('1519', '100', 'Kalimantan Selatan', 'KS', '1');
INSERT INTO `dg_states` VALUES ('1520', '100', 'Kalimantan Tengah', 'KT', '1');
INSERT INTO `dg_states` VALUES ('1521', '100', 'Kalimantan Timur', 'KI', '1');
INSERT INTO `dg_states` VALUES ('1522', '100', 'Kepulauan Bangka Belitung', 'BB', '1');
INSERT INTO `dg_states` VALUES ('1523', '100', 'Lampung', 'LA', '1');
INSERT INTO `dg_states` VALUES ('1524', '100', 'Maluku', 'MA', '1');
INSERT INTO `dg_states` VALUES ('1525', '100', 'Maluku Utara', 'MU', '1');
INSERT INTO `dg_states` VALUES ('1526', '100', 'Nusa Tenggara Barat', 'NB', '1');
INSERT INTO `dg_states` VALUES ('1527', '100', 'Nusa Tenggara Timur', 'NT', '1');
INSERT INTO `dg_states` VALUES ('1528', '100', 'Papua', 'PA', '1');
INSERT INTO `dg_states` VALUES ('1529', '100', 'Riau', 'RI', '1');
INSERT INTO `dg_states` VALUES ('1530', '100', 'Sulawesi Selatan', 'SN', '1');
INSERT INTO `dg_states` VALUES ('1531', '100', 'Sulawesi Tengah', 'ST', '1');
INSERT INTO `dg_states` VALUES ('1532', '100', 'Sulawesi Tenggara', 'SG', '1');
INSERT INTO `dg_states` VALUES ('1533', '100', 'Sulawesi Utara', 'SA', '1');
INSERT INTO `dg_states` VALUES ('1534', '100', 'Sumatera Barat', 'SB', '1');
INSERT INTO `dg_states` VALUES ('1535', '100', 'Sumatera Selatan', 'SS', '1');
INSERT INTO `dg_states` VALUES ('1536', '100', 'Sumatera Utara', 'SU', '1');
INSERT INTO `dg_states` VALUES ('1537', '100', 'Yogyakarta', 'YO', '1');
INSERT INTO `dg_states` VALUES ('1538', '101', 'Tehran', 'TEH', '1');
INSERT INTO `dg_states` VALUES ('1539', '101', 'Qom', 'QOM', '1');
INSERT INTO `dg_states` VALUES ('1540', '101', 'Markazi', 'MKZ', '1');
INSERT INTO `dg_states` VALUES ('1541', '101', 'Qazvin', 'QAZ', '1');
INSERT INTO `dg_states` VALUES ('1542', '101', 'Gilan', 'GIL', '1');
INSERT INTO `dg_states` VALUES ('1543', '101', 'Ardabil', 'ARD', '1');
INSERT INTO `dg_states` VALUES ('1544', '101', 'Zanjan', 'ZAN', '1');
INSERT INTO `dg_states` VALUES ('1545', '101', 'East Azarbaijan', 'EAZ', '1');
INSERT INTO `dg_states` VALUES ('1546', '101', 'West Azarbaijan', 'WEZ', '1');
INSERT INTO `dg_states` VALUES ('1547', '101', 'Kurdistan', 'KRD', '1');
INSERT INTO `dg_states` VALUES ('1548', '101', 'Hamadan', 'HMD', '1');
INSERT INTO `dg_states` VALUES ('1549', '101', 'Kermanshah', 'KRM', '1');
INSERT INTO `dg_states` VALUES ('1550', '101', 'Ilam', 'ILM', '1');
INSERT INTO `dg_states` VALUES ('1551', '101', 'Lorestan', 'LRS', '1');
INSERT INTO `dg_states` VALUES ('1552', '101', 'Khuzestan', 'KZT', '1');
INSERT INTO `dg_states` VALUES ('1553', '101', 'Chahar Mahaal and Bakhtiari', 'CMB', '1');
INSERT INTO `dg_states` VALUES ('1554', '101', 'Kohkiluyeh and Buyer Ahmad', 'KBA', '1');
INSERT INTO `dg_states` VALUES ('1555', '101', 'Bushehr', 'BSH', '1');
INSERT INTO `dg_states` VALUES ('1556', '101', 'Fars', 'FAR', '1');
INSERT INTO `dg_states` VALUES ('1557', '101', 'Hormozgan', 'HRM', '1');
INSERT INTO `dg_states` VALUES ('1558', '101', 'Sistan and Baluchistan', 'SBL', '1');
INSERT INTO `dg_states` VALUES ('1559', '101', 'Kerman', 'KRB', '1');
INSERT INTO `dg_states` VALUES ('1560', '101', 'Yazd', 'YZD', '1');
INSERT INTO `dg_states` VALUES ('1561', '101', 'Esfahan', 'EFH', '1');
INSERT INTO `dg_states` VALUES ('1562', '101', 'Semnan', 'SMN', '1');
INSERT INTO `dg_states` VALUES ('1563', '101', 'Mazandaran', 'MZD', '1');
INSERT INTO `dg_states` VALUES ('1564', '101', 'Golestan', 'GLS', '1');
INSERT INTO `dg_states` VALUES ('1565', '101', 'North Khorasan', 'NKH', '1');
INSERT INTO `dg_states` VALUES ('1566', '101', 'Razavi Khorasan', 'RKH', '1');
INSERT INTO `dg_states` VALUES ('1567', '101', 'South Khorasan', 'SKH', '1');
INSERT INTO `dg_states` VALUES ('1568', '102', 'Baghdad', 'BD', '1');
INSERT INTO `dg_states` VALUES ('1569', '102', 'Salah ad Din', 'SD', '1');
INSERT INTO `dg_states` VALUES ('1570', '102', 'Diyala', 'DY', '1');
INSERT INTO `dg_states` VALUES ('1571', '102', 'Wasit', 'WS', '1');
INSERT INTO `dg_states` VALUES ('1572', '102', 'Maysan', 'MY', '1');
INSERT INTO `dg_states` VALUES ('1573', '102', 'Al Basrah', 'BA', '1');
INSERT INTO `dg_states` VALUES ('1574', '102', 'Dhi Qar', 'DQ', '1');
INSERT INTO `dg_states` VALUES ('1575', '102', 'Al Muthanna', 'MU', '1');
INSERT INTO `dg_states` VALUES ('1576', '102', 'Al Qadisyah', 'QA', '1');
INSERT INTO `dg_states` VALUES ('1577', '102', 'Babil', 'BB', '1');
INSERT INTO `dg_states` VALUES ('1578', '102', 'Al Karbala', 'KB', '1');
INSERT INTO `dg_states` VALUES ('1579', '102', 'An Najaf', 'NJ', '1');
INSERT INTO `dg_states` VALUES ('1580', '102', 'Al Anbar', 'AB', '1');
INSERT INTO `dg_states` VALUES ('1581', '102', 'Ninawa', 'NN', '1');
INSERT INTO `dg_states` VALUES ('1582', '102', 'Dahuk', 'DH', '1');
INSERT INTO `dg_states` VALUES ('1583', '102', 'Arbil', 'AL', '1');
INSERT INTO `dg_states` VALUES ('1584', '102', 'At Ta\'mim', 'TM', '1');
INSERT INTO `dg_states` VALUES ('1585', '102', 'As Sulaymaniyah', 'SL', '1');
INSERT INTO `dg_states` VALUES ('1586', '103', 'Carlow', 'CA', '1');
INSERT INTO `dg_states` VALUES ('1587', '103', 'Cavan', 'CV', '1');
INSERT INTO `dg_states` VALUES ('1588', '103', 'Clare', 'CL', '1');
INSERT INTO `dg_states` VALUES ('1589', '103', 'Cork', 'CO', '1');
INSERT INTO `dg_states` VALUES ('1590', '103', 'Donegal', 'DO', '1');
INSERT INTO `dg_states` VALUES ('1591', '103', 'Dublin', 'DU', '1');
INSERT INTO `dg_states` VALUES ('1592', '103', 'Galway', 'GA', '1');
INSERT INTO `dg_states` VALUES ('1593', '103', 'Kerry', 'KE', '1');
INSERT INTO `dg_states` VALUES ('1594', '103', 'Kildare', 'KI', '1');
INSERT INTO `dg_states` VALUES ('1595', '103', 'Kilkenny', 'KL', '1');
INSERT INTO `dg_states` VALUES ('1596', '103', 'Laois', 'LA', '1');
INSERT INTO `dg_states` VALUES ('1597', '103', 'Leitrim', 'LE', '1');
INSERT INTO `dg_states` VALUES ('1598', '103', 'Limerick', 'LI', '1');
INSERT INTO `dg_states` VALUES ('1599', '103', 'Longford', 'LO', '1');
INSERT INTO `dg_states` VALUES ('1600', '103', 'Louth', 'LU', '1');
INSERT INTO `dg_states` VALUES ('1601', '103', 'Mayo', 'MA', '1');
INSERT INTO `dg_states` VALUES ('1602', '103', 'Meath', 'ME', '1');
INSERT INTO `dg_states` VALUES ('1603', '103', 'Monaghan', 'MO', '1');
INSERT INTO `dg_states` VALUES ('1604', '103', 'Offaly', 'OF', '1');
INSERT INTO `dg_states` VALUES ('1605', '103', 'Roscommon', 'RO', '1');
INSERT INTO `dg_states` VALUES ('1606', '103', 'Sligo', 'SL', '1');
INSERT INTO `dg_states` VALUES ('1607', '103', 'Tipperary', 'TI', '1');
INSERT INTO `dg_states` VALUES ('1608', '103', 'Waterford', 'WA', '1');
INSERT INTO `dg_states` VALUES ('1609', '103', 'Westmeath', 'WE', '1');
INSERT INTO `dg_states` VALUES ('1610', '103', 'Wexford', 'WX', '1');
INSERT INTO `dg_states` VALUES ('1611', '103', 'Wicklow', 'WI', '1');
INSERT INTO `dg_states` VALUES ('1612', '104', 'Be\'er Sheva', 'BS', '1');
INSERT INTO `dg_states` VALUES ('1613', '104', 'Bika\'at Hayarden', 'BH', '1');
INSERT INTO `dg_states` VALUES ('1614', '104', 'Eilat and Arava', 'EA', '1');
INSERT INTO `dg_states` VALUES ('1615', '104', 'Galil', 'GA', '1');
INSERT INTO `dg_states` VALUES ('1616', '104', 'Haifa', 'HA', '1');
INSERT INTO `dg_states` VALUES ('1617', '104', 'Jehuda Mountains', 'JM', '1');
INSERT INTO `dg_states` VALUES ('1618', '104', 'Jerusalem', 'JE', '1');
INSERT INTO `dg_states` VALUES ('1619', '104', 'Negev', 'NE', '1');
INSERT INTO `dg_states` VALUES ('1620', '104', 'Semaria', 'SE', '1');
INSERT INTO `dg_states` VALUES ('1621', '104', 'Sharon', 'SH', '1');
INSERT INTO `dg_states` VALUES ('1622', '104', 'Tel Aviv (Gosh Dan)', 'TA', '1');
INSERT INTO `dg_states` VALUES ('3860', '105', 'Caltanissetta', 'CL', '1');
INSERT INTO `dg_states` VALUES ('3842', '105', 'Agrigento', 'AG', '1');
INSERT INTO `dg_states` VALUES ('3843', '105', 'Alessandria', 'AL', '1');
INSERT INTO `dg_states` VALUES ('3844', '105', 'Ancona', 'AN', '1');
INSERT INTO `dg_states` VALUES ('3845', '105', 'Aosta', 'AO', '1');
INSERT INTO `dg_states` VALUES ('3846', '105', 'Arezzo', 'AR', '1');
INSERT INTO `dg_states` VALUES ('3847', '105', 'Ascoli Piceno', 'AP', '1');
INSERT INTO `dg_states` VALUES ('3848', '105', 'Asti', 'AT', '1');
INSERT INTO `dg_states` VALUES ('3849', '105', 'Avellino', 'AV', '1');
INSERT INTO `dg_states` VALUES ('3850', '105', 'Bari', 'BA', '1');
INSERT INTO `dg_states` VALUES ('3851', '105', 'Belluno', 'BL', '1');
INSERT INTO `dg_states` VALUES ('3852', '105', 'Benevento', 'BN', '1');
INSERT INTO `dg_states` VALUES ('3853', '105', 'Bergamo', 'BG', '1');
INSERT INTO `dg_states` VALUES ('3854', '105', 'Biella', 'BI', '1');
INSERT INTO `dg_states` VALUES ('3855', '105', 'Bologna', 'BO', '1');
INSERT INTO `dg_states` VALUES ('3856', '105', 'Bolzano', 'BZ', '1');
INSERT INTO `dg_states` VALUES ('3857', '105', 'Brescia', 'BS', '1');
INSERT INTO `dg_states` VALUES ('3858', '105', 'Brindisi', 'BR', '1');
INSERT INTO `dg_states` VALUES ('3859', '105', 'Cagliari', 'CA', '1');
INSERT INTO `dg_states` VALUES ('1643', '106', 'Clarendon Parish', 'CLA', '1');
INSERT INTO `dg_states` VALUES ('1644', '106', 'Hanover Parish', 'HAN', '1');
INSERT INTO `dg_states` VALUES ('1645', '106', 'Kingston Parish', 'KIN', '1');
INSERT INTO `dg_states` VALUES ('1646', '106', 'Manchester Parish', 'MAN', '1');
INSERT INTO `dg_states` VALUES ('1647', '106', 'Portland Parish', 'POR', '1');
INSERT INTO `dg_states` VALUES ('1648', '106', 'Saint Andrew Parish', 'AND', '1');
INSERT INTO `dg_states` VALUES ('1649', '106', 'Saint Ann Parish', 'ANN', '1');
INSERT INTO `dg_states` VALUES ('1650', '106', 'Saint Catherine Parish', 'CAT', '1');
INSERT INTO `dg_states` VALUES ('1651', '106', 'Saint Elizabeth Parish', 'ELI', '1');
INSERT INTO `dg_states` VALUES ('1652', '106', 'Saint James Parish', 'JAM', '1');
INSERT INTO `dg_states` VALUES ('1653', '106', 'Saint Mary Parish', 'MAR', '1');
INSERT INTO `dg_states` VALUES ('1654', '106', 'Saint Thomas Parish', 'THO', '1');
INSERT INTO `dg_states` VALUES ('1655', '106', 'Trelawny Parish', 'TRL', '1');
INSERT INTO `dg_states` VALUES ('1656', '106', 'Westmoreland Parish', 'WML', '1');
INSERT INTO `dg_states` VALUES ('1657', '107', 'Aichi', 'AI', '1');
INSERT INTO `dg_states` VALUES ('1658', '107', 'Akita', 'AK', '1');
INSERT INTO `dg_states` VALUES ('1659', '107', 'Aomori', 'AO', '1');
INSERT INTO `dg_states` VALUES ('1660', '107', 'Chiba', 'CH', '1');
INSERT INTO `dg_states` VALUES ('1661', '107', 'Ehime', 'EH', '1');
INSERT INTO `dg_states` VALUES ('1662', '107', 'Fukui', 'FK', '1');
INSERT INTO `dg_states` VALUES ('1663', '107', 'Fukuoka', 'FU', '1');
INSERT INTO `dg_states` VALUES ('1664', '107', 'Fukushima', 'FS', '1');
INSERT INTO `dg_states` VALUES ('1665', '107', 'Gifu', 'GI', '1');
INSERT INTO `dg_states` VALUES ('1666', '107', 'Gumma', 'GU', '1');
INSERT INTO `dg_states` VALUES ('1667', '107', 'Hiroshima', 'HI', '1');
INSERT INTO `dg_states` VALUES ('1668', '107', 'Hokkaido', 'HO', '1');
INSERT INTO `dg_states` VALUES ('1669', '107', 'Hyogo', 'HY', '1');
INSERT INTO `dg_states` VALUES ('1670', '107', 'Ibaraki', 'IB', '1');
INSERT INTO `dg_states` VALUES ('1671', '107', 'Ishikawa', 'IS', '1');
INSERT INTO `dg_states` VALUES ('1672', '107', 'Iwate', 'IW', '1');
INSERT INTO `dg_states` VALUES ('1673', '107', 'Kagawa', 'KA', '1');
INSERT INTO `dg_states` VALUES ('1674', '107', 'Kagoshima', 'KG', '1');
INSERT INTO `dg_states` VALUES ('1675', '107', 'Kanagawa', 'KN', '1');
INSERT INTO `dg_states` VALUES ('1676', '107', 'Kochi', 'KO', '1');
INSERT INTO `dg_states` VALUES ('1677', '107', 'Kumamoto', 'KU', '1');
INSERT INTO `dg_states` VALUES ('1678', '107', 'Kyoto', 'KY', '1');
INSERT INTO `dg_states` VALUES ('1679', '107', 'Mie', 'MI', '1');
INSERT INTO `dg_states` VALUES ('1680', '107', 'Miyagi', 'MY', '1');
INSERT INTO `dg_states` VALUES ('1681', '107', 'Miyazaki', 'MZ', '1');
INSERT INTO `dg_states` VALUES ('1682', '107', 'Nagano', 'NA', '1');
INSERT INTO `dg_states` VALUES ('1683', '107', 'Nagasaki', 'NG', '1');
INSERT INTO `dg_states` VALUES ('1684', '107', 'Nara', 'NR', '1');
INSERT INTO `dg_states` VALUES ('1685', '107', 'Niigata', 'NI', '1');
INSERT INTO `dg_states` VALUES ('1686', '107', 'Oita', 'OI', '1');
INSERT INTO `dg_states` VALUES ('1687', '107', 'Okayama', 'OK', '1');
INSERT INTO `dg_states` VALUES ('1688', '107', 'Okinawa', 'ON', '1');
INSERT INTO `dg_states` VALUES ('1689', '107', 'Osaka', 'OS', '1');
INSERT INTO `dg_states` VALUES ('1690', '107', 'Saga', 'SA', '1');
INSERT INTO `dg_states` VALUES ('1691', '107', 'Saitama', 'SI', '1');
INSERT INTO `dg_states` VALUES ('1692', '107', 'Shiga', 'SH', '1');
INSERT INTO `dg_states` VALUES ('1693', '107', 'Shimane', 'SM', '1');
INSERT INTO `dg_states` VALUES ('1694', '107', 'Shizuoka', 'SZ', '1');
INSERT INTO `dg_states` VALUES ('1695', '107', 'Tochigi', 'TO', '1');
INSERT INTO `dg_states` VALUES ('1696', '107', 'Tokushima', 'TS', '1');
INSERT INTO `dg_states` VALUES ('1697', '107', 'Tokyo', 'TK', '1');
INSERT INTO `dg_states` VALUES ('1698', '107', 'Tottori', 'TT', '1');
INSERT INTO `dg_states` VALUES ('1699', '107', 'Toyama', 'TY', '1');
INSERT INTO `dg_states` VALUES ('1700', '107', 'Wakayama', 'WA', '1');
INSERT INTO `dg_states` VALUES ('1701', '107', 'Yamagata', 'YA', '1');
INSERT INTO `dg_states` VALUES ('1702', '107', 'Yamaguchi', 'YM', '1');
INSERT INTO `dg_states` VALUES ('1703', '107', 'Yamanashi', 'YN', '1');
INSERT INTO `dg_states` VALUES ('1704', '108', '\'Amman', 'AM', '1');
INSERT INTO `dg_states` VALUES ('1705', '108', 'Ajlun', 'AJ', '1');
INSERT INTO `dg_states` VALUES ('1706', '108', 'Al \'Aqabah', 'AA', '1');
INSERT INTO `dg_states` VALUES ('1707', '108', 'Al Balqa\'', 'AB', '1');
INSERT INTO `dg_states` VALUES ('1708', '108', 'Al Karak', 'AK', '1');
INSERT INTO `dg_states` VALUES ('1709', '108', 'Al Mafraq', 'AL', '1');
INSERT INTO `dg_states` VALUES ('1710', '108', 'At Tafilah', 'AT', '1');
INSERT INTO `dg_states` VALUES ('1711', '108', 'Az Zarqa\'', 'AZ', '1');
INSERT INTO `dg_states` VALUES ('1712', '108', 'Irbid', 'IR', '1');
INSERT INTO `dg_states` VALUES ('1713', '108', 'Jarash', 'JA', '1');
INSERT INTO `dg_states` VALUES ('1714', '108', 'Ma\'an', 'MA', '1');
INSERT INTO `dg_states` VALUES ('1715', '108', 'Madaba', 'MD', '1');
INSERT INTO `dg_states` VALUES ('1716', '109', 'Almaty', 'AL', '1');
INSERT INTO `dg_states` VALUES ('1717', '109', 'Almaty City', 'AC', '1');
INSERT INTO `dg_states` VALUES ('1718', '109', 'Aqmola', 'AM', '1');
INSERT INTO `dg_states` VALUES ('1719', '109', 'Aqtobe', 'AQ', '1');
INSERT INTO `dg_states` VALUES ('1720', '109', 'Astana City', 'AS', '1');
INSERT INTO `dg_states` VALUES ('1721', '109', 'Atyrau', 'AT', '1');
INSERT INTO `dg_states` VALUES ('1722', '109', 'Batys Qazaqstan', 'BA', '1');
INSERT INTO `dg_states` VALUES ('1723', '109', 'Bayqongyr City', 'BY', '1');
INSERT INTO `dg_states` VALUES ('1724', '109', 'Mangghystau', 'MA', '1');
INSERT INTO `dg_states` VALUES ('1725', '109', 'Ongtustik Qazaqstan', 'ON', '1');
INSERT INTO `dg_states` VALUES ('1726', '109', 'Pavlodar', 'PA', '1');
INSERT INTO `dg_states` VALUES ('1727', '109', 'Qaraghandy', 'QA', '1');
INSERT INTO `dg_states` VALUES ('1728', '109', 'Qostanay', 'QO', '1');
INSERT INTO `dg_states` VALUES ('1729', '109', 'Qyzylorda', 'QY', '1');
INSERT INTO `dg_states` VALUES ('1730', '109', 'Shyghys Qazaqstan', 'SH', '1');
INSERT INTO `dg_states` VALUES ('1731', '109', 'Soltustik Qazaqstan', 'SO', '1');
INSERT INTO `dg_states` VALUES ('1732', '109', 'Zhambyl', 'ZH', '1');
INSERT INTO `dg_states` VALUES ('1733', '110', 'Central', 'CE', '1');
INSERT INTO `dg_states` VALUES ('1734', '110', 'Coast', 'CO', '1');
INSERT INTO `dg_states` VALUES ('1735', '110', 'Eastern', 'EA', '1');
INSERT INTO `dg_states` VALUES ('1736', '110', 'Nairobi Area', 'NA', '1');
INSERT INTO `dg_states` VALUES ('1737', '110', 'North Eastern', 'NE', '1');
INSERT INTO `dg_states` VALUES ('1738', '110', 'Nyanza', 'NY', '1');
INSERT INTO `dg_states` VALUES ('1739', '110', 'Rift Valley', 'RV', '1');
INSERT INTO `dg_states` VALUES ('1740', '110', 'Western', 'WE', '1');
INSERT INTO `dg_states` VALUES ('1741', '111', 'Abaiang', 'AG', '1');
INSERT INTO `dg_states` VALUES ('1742', '111', 'Abemama', 'AM', '1');
INSERT INTO `dg_states` VALUES ('1743', '111', 'Aranuka', 'AK', '1');
INSERT INTO `dg_states` VALUES ('1744', '111', 'Arorae', 'AO', '1');
INSERT INTO `dg_states` VALUES ('1745', '111', 'Banaba', 'BA', '1');
INSERT INTO `dg_states` VALUES ('1746', '111', 'Beru', 'BE', '1');
INSERT INTO `dg_states` VALUES ('1747', '111', 'Butaritari', 'bT', '1');
INSERT INTO `dg_states` VALUES ('1748', '111', 'Kanton', 'KA', '1');
INSERT INTO `dg_states` VALUES ('1749', '111', 'Kiritimati', 'KR', '1');
INSERT INTO `dg_states` VALUES ('1750', '111', 'Kuria', 'KU', '1');
INSERT INTO `dg_states` VALUES ('1751', '111', 'Maiana', 'MI', '1');
INSERT INTO `dg_states` VALUES ('1752', '111', 'Makin', 'MN', '1');
INSERT INTO `dg_states` VALUES ('1753', '111', 'Marakei', 'ME', '1');
INSERT INTO `dg_states` VALUES ('1754', '111', 'Nikunau', 'NI', '1');
INSERT INTO `dg_states` VALUES ('1755', '111', 'Nonouti', 'NO', '1');
INSERT INTO `dg_states` VALUES ('1756', '111', 'Onotoa', 'ON', '1');
INSERT INTO `dg_states` VALUES ('1757', '111', 'Tabiteuea', 'TT', '1');
INSERT INTO `dg_states` VALUES ('1758', '111', 'Tabuaeran', 'TR', '1');
INSERT INTO `dg_states` VALUES ('1759', '111', 'Tamana', 'TM', '1');
INSERT INTO `dg_states` VALUES ('1760', '111', 'Tarawa', 'TW', '1');
INSERT INTO `dg_states` VALUES ('1761', '111', 'Teraina', 'TE', '1');
INSERT INTO `dg_states` VALUES ('1762', '112', 'Chagang-do', 'CHA', '1');
INSERT INTO `dg_states` VALUES ('1763', '112', 'Hamgyong-bukto', 'HAB', '1');
INSERT INTO `dg_states` VALUES ('1764', '112', 'Hamgyong-namdo', 'HAN', '1');
INSERT INTO `dg_states` VALUES ('1765', '112', 'Hwanghae-bukto', 'HWB', '1');
INSERT INTO `dg_states` VALUES ('1766', '112', 'Hwanghae-namdo', 'HWN', '1');
INSERT INTO `dg_states` VALUES ('1767', '112', 'Kangwon-do', 'KAN', '1');
INSERT INTO `dg_states` VALUES ('1768', '112', 'P\'yongan-bukto', 'PYB', '1');
INSERT INTO `dg_states` VALUES ('1769', '112', 'P\'yongan-namdo', 'PYN', '1');
INSERT INTO `dg_states` VALUES ('1770', '112', 'Ryanggang-do (Yanggang-do)', 'YAN', '1');
INSERT INTO `dg_states` VALUES ('1771', '112', 'Rason Directly Governed City', 'NAJ', '1');
INSERT INTO `dg_states` VALUES ('1772', '112', 'P\'yongyang Special City', 'PYO', '1');
INSERT INTO `dg_states` VALUES ('1773', '113', 'Ch\'ungch\'ong-bukto', 'CO', '1');
INSERT INTO `dg_states` VALUES ('1774', '113', 'Ch\'ungch\'ong-namdo', 'CH', '1');
INSERT INTO `dg_states` VALUES ('1775', '113', 'Cheju-do', 'CD', '1');
INSERT INTO `dg_states` VALUES ('1776', '113', 'Cholla-bukto', 'CB', '1');
INSERT INTO `dg_states` VALUES ('1777', '113', 'Cholla-namdo', 'CN', '1');
INSERT INTO `dg_states` VALUES ('1778', '113', 'Inch\'on-gwangyoksi', 'IG', '1');
INSERT INTO `dg_states` VALUES ('1779', '113', 'Kangwon-do', 'KA', '1');
INSERT INTO `dg_states` VALUES ('1780', '113', 'Kwangju-gwangyoksi', 'KG', '1');
INSERT INTO `dg_states` VALUES ('1781', '113', 'Kyonggi-do', 'KD', '1');
INSERT INTO `dg_states` VALUES ('1782', '113', 'Kyongsang-bukto', 'KB', '1');
INSERT INTO `dg_states` VALUES ('1783', '113', 'Kyongsang-namdo', 'KN', '1');
INSERT INTO `dg_states` VALUES ('1784', '113', 'Pusan-gwangyoksi', 'PG', '1');
INSERT INTO `dg_states` VALUES ('1785', '113', 'Soul-t\'ukpyolsi', 'SO', '1');
INSERT INTO `dg_states` VALUES ('1786', '113', 'Taegu-gwangyoksi', 'TA', '1');
INSERT INTO `dg_states` VALUES ('1787', '113', 'Taejon-gwangyoksi', 'TG', '1');
INSERT INTO `dg_states` VALUES ('1788', '114', 'Al \'Asimah', 'AL', '1');
INSERT INTO `dg_states` VALUES ('1789', '114', 'Al Ahmadi', 'AA', '1');
INSERT INTO `dg_states` VALUES ('1790', '114', 'Al Farwaniyah', 'AF', '1');
INSERT INTO `dg_states` VALUES ('1791', '114', 'Al Jahra\'', 'AJ', '1');
INSERT INTO `dg_states` VALUES ('1792', '114', 'Hawalli', 'HA', '1');
INSERT INTO `dg_states` VALUES ('1793', '115', 'Bishkek', 'GB', '1');
INSERT INTO `dg_states` VALUES ('1794', '115', 'Batken', 'B', '1');
INSERT INTO `dg_states` VALUES ('1795', '115', 'Chu', 'C', '1');
INSERT INTO `dg_states` VALUES ('1796', '115', 'Jalal-Abad', 'J', '1');
INSERT INTO `dg_states` VALUES ('1797', '115', 'Naryn', 'N', '1');
INSERT INTO `dg_states` VALUES ('1798', '115', 'Osh', 'O', '1');
INSERT INTO `dg_states` VALUES ('1799', '115', 'Talas', 'T', '1');
INSERT INTO `dg_states` VALUES ('1800', '115', 'Ysyk-Kol', 'Y', '1');
INSERT INTO `dg_states` VALUES ('1801', '116', 'Vientiane', 'VT', '1');
INSERT INTO `dg_states` VALUES ('1802', '116', 'Attapu', 'AT', '1');
INSERT INTO `dg_states` VALUES ('1803', '116', 'Bokeo', 'BK', '1');
INSERT INTO `dg_states` VALUES ('1804', '116', 'Bolikhamxai', 'BL', '1');
INSERT INTO `dg_states` VALUES ('1805', '116', 'Champasak', 'CH', '1');
INSERT INTO `dg_states` VALUES ('1806', '116', 'Houaphan', 'HO', '1');
INSERT INTO `dg_states` VALUES ('1807', '116', 'Khammouan', 'KH', '1');
INSERT INTO `dg_states` VALUES ('1808', '116', 'Louang Namtha', 'LM', '1');
INSERT INTO `dg_states` VALUES ('1809', '116', 'Louangphabang', 'LP', '1');
INSERT INTO `dg_states` VALUES ('1810', '116', 'Oudomxai', 'OU', '1');
INSERT INTO `dg_states` VALUES ('1811', '116', 'Phongsali', 'PH', '1');
INSERT INTO `dg_states` VALUES ('1812', '116', 'Salavan', 'SL', '1');
INSERT INTO `dg_states` VALUES ('1813', '116', 'Savannakhet', 'SV', '1');
INSERT INTO `dg_states` VALUES ('1814', '116', 'Vientiane', 'VI', '1');
INSERT INTO `dg_states` VALUES ('1815', '116', 'Xaignabouli', 'XA', '1');
INSERT INTO `dg_states` VALUES ('1816', '116', 'Xekong', 'XE', '1');
INSERT INTO `dg_states` VALUES ('1817', '116', 'Xiangkhoang', 'XI', '1');
INSERT INTO `dg_states` VALUES ('1818', '116', 'Xaisomboun', 'XN', '1');
INSERT INTO `dg_states` VALUES ('1819', '117', 'Aizkraukles Rajons', 'AIZ', '1');
INSERT INTO `dg_states` VALUES ('1820', '117', 'Aluksnes Rajons', 'ALU', '1');
INSERT INTO `dg_states` VALUES ('1821', '117', 'Balvu Rajons', 'BAL', '1');
INSERT INTO `dg_states` VALUES ('1822', '117', 'Bauskas Rajons', 'BAU', '1');
INSERT INTO `dg_states` VALUES ('1823', '117', 'Cesu Rajons', 'CES', '1');
INSERT INTO `dg_states` VALUES ('1824', '117', 'Daugavpils Rajons', 'DGR', '1');
INSERT INTO `dg_states` VALUES ('1825', '117', 'Dobeles Rajons', 'DOB', '1');
INSERT INTO `dg_states` VALUES ('1826', '117', 'Gulbenes Rajons', 'GUL', '1');
INSERT INTO `dg_states` VALUES ('1827', '117', 'Jekabpils Rajons', 'JEK', '1');
INSERT INTO `dg_states` VALUES ('1828', '117', 'Jelgavas Rajons', 'JGR', '1');
INSERT INTO `dg_states` VALUES ('1829', '117', 'Kraslavas Rajons', 'KRA', '1');
INSERT INTO `dg_states` VALUES ('1830', '117', 'Kuldigas Rajons', 'KUL', '1');
INSERT INTO `dg_states` VALUES ('1831', '117', 'Liepajas Rajons', 'LPR', '1');
INSERT INTO `dg_states` VALUES ('1832', '117', 'Limbazu Rajons', 'LIM', '1');
INSERT INTO `dg_states` VALUES ('1833', '117', 'Ludzas Rajons', 'LUD', '1');
INSERT INTO `dg_states` VALUES ('1834', '117', 'Madonas Rajons', 'MAD', '1');
INSERT INTO `dg_states` VALUES ('1835', '117', 'Ogres Rajons', 'OGR', '1');
INSERT INTO `dg_states` VALUES ('1836', '117', 'Preilu Rajons', 'PRE', '1');
INSERT INTO `dg_states` VALUES ('1837', '117', 'Rezeknes Rajons', 'RZR', '1');
INSERT INTO `dg_states` VALUES ('1838', '117', 'Rigas Rajons', 'RGR', '1');
INSERT INTO `dg_states` VALUES ('1839', '117', 'Saldus Rajons', 'SAL', '1');
INSERT INTO `dg_states` VALUES ('1840', '117', 'Talsu Rajons', 'TAL', '1');
INSERT INTO `dg_states` VALUES ('1841', '117', 'Tukuma Rajons', 'TUK', '1');
INSERT INTO `dg_states` VALUES ('1842', '117', 'Valkas Rajons', 'VLK', '1');
INSERT INTO `dg_states` VALUES ('1843', '117', 'Valmieras Rajons', 'VLM', '1');
INSERT INTO `dg_states` VALUES ('1844', '117', 'Ventspils Rajons', 'VSR', '1');
INSERT INTO `dg_states` VALUES ('1845', '117', 'Daugavpils', 'DGV', '1');
INSERT INTO `dg_states` VALUES ('1846', '117', 'Jelgava', 'JGV', '1');
INSERT INTO `dg_states` VALUES ('1847', '117', 'Jurmala', 'JUR', '1');
INSERT INTO `dg_states` VALUES ('1848', '117', 'Liepaja', 'LPK', '1');
INSERT INTO `dg_states` VALUES ('1849', '117', 'Rezekne', 'RZK', '1');
INSERT INTO `dg_states` VALUES ('1850', '117', 'Riga', 'RGA', '1');
INSERT INTO `dg_states` VALUES ('1851', '117', 'Ventspils', 'VSL', '1');
INSERT INTO `dg_states` VALUES ('1852', '119', 'Berea', 'BE', '1');
INSERT INTO `dg_states` VALUES ('1853', '119', 'Butha-Buthe', 'BB', '1');
INSERT INTO `dg_states` VALUES ('1854', '119', 'Leribe', 'LE', '1');
INSERT INTO `dg_states` VALUES ('1855', '119', 'Mafeteng', 'MF', '1');
INSERT INTO `dg_states` VALUES ('1856', '119', 'Maseru', 'MS', '1');
INSERT INTO `dg_states` VALUES ('1857', '119', 'Mohale\'s Hoek', 'MH', '1');
INSERT INTO `dg_states` VALUES ('1858', '119', 'Mokhotlong', 'MK', '1');
INSERT INTO `dg_states` VALUES ('1859', '119', 'Qacha\'s Nek', 'QN', '1');
INSERT INTO `dg_states` VALUES ('1860', '119', 'Quthing', 'QT', '1');
INSERT INTO `dg_states` VALUES ('1861', '119', 'Thaba-Tseka', 'TT', '1');
INSERT INTO `dg_states` VALUES ('1862', '120', 'Bomi', 'BI', '1');
INSERT INTO `dg_states` VALUES ('1863', '120', 'Bong', 'BG', '1');
INSERT INTO `dg_states` VALUES ('1864', '120', 'Grand Bassa', 'GB', '1');
INSERT INTO `dg_states` VALUES ('1865', '120', 'Grand Cape Mount', 'CM', '1');
INSERT INTO `dg_states` VALUES ('1866', '120', 'Grand Gedeh', 'GG', '1');
INSERT INTO `dg_states` VALUES ('1867', '120', 'Grand Kru', 'GK', '1');
INSERT INTO `dg_states` VALUES ('1868', '120', 'Lofa', 'LO', '1');
INSERT INTO `dg_states` VALUES ('1869', '120', 'Margibi', 'MG', '1');
INSERT INTO `dg_states` VALUES ('1870', '120', 'Maryland', 'ML', '1');
INSERT INTO `dg_states` VALUES ('1871', '120', 'Montserrado', 'MS', '1');
INSERT INTO `dg_states` VALUES ('1872', '120', 'Nimba', 'NB', '1');
INSERT INTO `dg_states` VALUES ('1873', '120', 'River Cess', 'RC', '1');
INSERT INTO `dg_states` VALUES ('1874', '120', 'Sinoe', 'SN', '1');
INSERT INTO `dg_states` VALUES ('1875', '121', 'Ajdabiya', 'AJ', '1');
INSERT INTO `dg_states` VALUES ('1876', '121', 'Al \'Aziziyah', 'AZ', '1');
INSERT INTO `dg_states` VALUES ('1877', '121', 'Al Fatih', 'FA', '1');
INSERT INTO `dg_states` VALUES ('1878', '121', 'Al Jabal al Akhdar', 'JA', '1');
INSERT INTO `dg_states` VALUES ('1879', '121', 'Al Jufrah', 'JU', '1');
INSERT INTO `dg_states` VALUES ('1880', '121', 'Al Khums', 'KH', '1');
INSERT INTO `dg_states` VALUES ('1881', '121', 'Al Kufrah', 'KU', '1');
INSERT INTO `dg_states` VALUES ('1882', '121', 'An Nuqat al Khams', 'NK', '1');
INSERT INTO `dg_states` VALUES ('1883', '121', 'Ash Shati\'', 'AS', '1');
INSERT INTO `dg_states` VALUES ('1884', '121', 'Awbari', 'AW', '1');
INSERT INTO `dg_states` VALUES ('1885', '121', 'Az Zawiyah', 'ZA', '1');
INSERT INTO `dg_states` VALUES ('1886', '121', 'Banghazi', 'BA', '1');
INSERT INTO `dg_states` VALUES ('1887', '121', 'Darnah', 'DA', '1');
INSERT INTO `dg_states` VALUES ('1888', '121', 'Ghadamis', 'GD', '1');
INSERT INTO `dg_states` VALUES ('1889', '121', 'Gharyan', 'GY', '1');
INSERT INTO `dg_states` VALUES ('1890', '121', 'Misratah', 'MI', '1');
INSERT INTO `dg_states` VALUES ('1891', '121', 'Murzuq', 'MZ', '1');
INSERT INTO `dg_states` VALUES ('1892', '121', 'Sabha', 'SB', '1');
INSERT INTO `dg_states` VALUES ('1893', '121', 'Sawfajjin', 'SW', '1');
INSERT INTO `dg_states` VALUES ('1894', '121', 'Surt', 'SU', '1');
INSERT INTO `dg_states` VALUES ('1895', '121', 'Tarabulus (Tripoli)', 'TL', '1');
INSERT INTO `dg_states` VALUES ('1896', '121', 'Tarhunah', 'TH', '1');
INSERT INTO `dg_states` VALUES ('1897', '121', 'Tubruq', 'TU', '1');
INSERT INTO `dg_states` VALUES ('1898', '121', 'Yafran', 'YA', '1');
INSERT INTO `dg_states` VALUES ('1899', '121', 'Zlitan', 'ZL', '1');
INSERT INTO `dg_states` VALUES ('1900', '122', 'Vaduz', 'V', '1');
INSERT INTO `dg_states` VALUES ('1901', '122', 'Schaan', 'A', '1');
INSERT INTO `dg_states` VALUES ('1902', '122', 'Balzers', 'B', '1');
INSERT INTO `dg_states` VALUES ('1903', '122', 'Triesen', 'N', '1');
INSERT INTO `dg_states` VALUES ('1904', '122', 'Eschen', 'E', '1');
INSERT INTO `dg_states` VALUES ('1905', '122', 'Mauren', 'M', '1');
INSERT INTO `dg_states` VALUES ('1906', '122', 'Triesenberg', 'T', '1');
INSERT INTO `dg_states` VALUES ('1907', '122', 'Ruggell', 'R', '1');
INSERT INTO `dg_states` VALUES ('1908', '122', 'Gamprin', 'G', '1');
INSERT INTO `dg_states` VALUES ('1909', '122', 'Schellenberg', 'L', '1');
INSERT INTO `dg_states` VALUES ('1910', '122', 'Planken', 'P', '1');
INSERT INTO `dg_states` VALUES ('1911', '123', 'Alytus', 'AL', '1');
INSERT INTO `dg_states` VALUES ('1912', '123', 'Kaunas', 'KA', '1');
INSERT INTO `dg_states` VALUES ('1913', '123', 'Klaipeda', 'KL', '1');
INSERT INTO `dg_states` VALUES ('1914', '123', 'Marijampole', 'MA', '1');
INSERT INTO `dg_states` VALUES ('1915', '123', 'Panevezys', 'PA', '1');
INSERT INTO `dg_states` VALUES ('1916', '123', 'Siauliai', 'SI', '1');
INSERT INTO `dg_states` VALUES ('1917', '123', 'Taurage', 'TA', '1');
INSERT INTO `dg_states` VALUES ('1918', '123', 'Telsiai', 'TE', '1');
INSERT INTO `dg_states` VALUES ('1919', '123', 'Utena', 'UT', '1');
INSERT INTO `dg_states` VALUES ('1920', '123', 'Vilnius', 'VI', '1');
INSERT INTO `dg_states` VALUES ('1921', '124', 'Diekirch', 'DD', '1');
INSERT INTO `dg_states` VALUES ('1922', '124', 'Clervaux', 'DC', '1');
INSERT INTO `dg_states` VALUES ('1923', '124', 'Redange', 'DR', '1');
INSERT INTO `dg_states` VALUES ('1924', '124', 'Vianden', 'DV', '1');
INSERT INTO `dg_states` VALUES ('1925', '124', 'Wiltz', 'DW', '1');
INSERT INTO `dg_states` VALUES ('1926', '124', 'Grevenmacher', 'GG', '1');
INSERT INTO `dg_states` VALUES ('1927', '124', 'Echternach', 'GE', '1');
INSERT INTO `dg_states` VALUES ('1928', '124', 'Remich', 'GR', '1');
INSERT INTO `dg_states` VALUES ('1929', '124', 'Luxembourg', 'LL', '1');
INSERT INTO `dg_states` VALUES ('1930', '124', 'Capellen', 'LC', '1');
INSERT INTO `dg_states` VALUES ('1931', '124', 'Esch-sur-Alzette', 'LE', '1');
INSERT INTO `dg_states` VALUES ('1932', '124', 'Mersch', 'LM', '1');
INSERT INTO `dg_states` VALUES ('1933', '125', 'Our Lady Fatima Parish', 'OLF', '1');
INSERT INTO `dg_states` VALUES ('1934', '125', 'St. Anthony Parish', 'ANT', '1');
INSERT INTO `dg_states` VALUES ('1935', '125', 'St. Lazarus Parish', 'LAZ', '1');
INSERT INTO `dg_states` VALUES ('1936', '125', 'Cathedral Parish', 'CAT', '1');
INSERT INTO `dg_states` VALUES ('1937', '125', 'St. Lawrence Parish', 'LAW', '1');
INSERT INTO `dg_states` VALUES ('1938', '127', 'Antananarivo', 'AN', '1');
INSERT INTO `dg_states` VALUES ('1939', '127', 'Antsiranana', 'AS', '1');
INSERT INTO `dg_states` VALUES ('1940', '127', 'Fianarantsoa', 'FN', '1');
INSERT INTO `dg_states` VALUES ('1941', '127', 'Mahajanga', 'MJ', '1');
INSERT INTO `dg_states` VALUES ('1942', '127', 'Toamasina', 'TM', '1');
INSERT INTO `dg_states` VALUES ('1943', '127', 'Toliara', 'TL', '1');
INSERT INTO `dg_states` VALUES ('1944', '128', 'Balaka', 'BLK', '1');
INSERT INTO `dg_states` VALUES ('1945', '128', 'Blantyre', 'BLT', '1');
INSERT INTO `dg_states` VALUES ('1946', '128', 'Chikwawa', 'CKW', '1');
INSERT INTO `dg_states` VALUES ('1947', '128', 'Chiradzulu', 'CRD', '1');
INSERT INTO `dg_states` VALUES ('1948', '128', 'Chitipa', 'CTP', '1');
INSERT INTO `dg_states` VALUES ('1949', '128', 'Dedza', 'DDZ', '1');
INSERT INTO `dg_states` VALUES ('1950', '128', 'Dowa', 'DWA', '1');
INSERT INTO `dg_states` VALUES ('1951', '128', 'Karonga', 'KRG', '1');
INSERT INTO `dg_states` VALUES ('1952', '128', 'Kasungu', 'KSG', '1');
INSERT INTO `dg_states` VALUES ('1953', '128', 'Likoma', 'LKM', '1');
INSERT INTO `dg_states` VALUES ('1954', '128', 'Lilongwe', 'LLG', '1');
INSERT INTO `dg_states` VALUES ('1955', '128', 'Machinga', 'MCG', '1');
INSERT INTO `dg_states` VALUES ('1956', '128', 'Mangochi', 'MGC', '1');
INSERT INTO `dg_states` VALUES ('1957', '128', 'Mchinji', 'MCH', '1');
INSERT INTO `dg_states` VALUES ('1958', '128', 'Mulanje', 'MLJ', '1');
INSERT INTO `dg_states` VALUES ('1959', '128', 'Mwanza', 'MWZ', '1');
INSERT INTO `dg_states` VALUES ('1960', '128', 'Mzimba', 'MZM', '1');
INSERT INTO `dg_states` VALUES ('1961', '128', 'Ntcheu', 'NTU', '1');
INSERT INTO `dg_states` VALUES ('1962', '128', 'Nkhata Bay', 'NKB', '1');
INSERT INTO `dg_states` VALUES ('1963', '128', 'Nkhotakota', 'NKH', '1');
INSERT INTO `dg_states` VALUES ('1964', '128', 'Nsanje', 'NSJ', '1');
INSERT INTO `dg_states` VALUES ('1965', '128', 'Ntchisi', 'NTI', '1');
INSERT INTO `dg_states` VALUES ('1966', '128', 'Phalombe', 'PHL', '1');
INSERT INTO `dg_states` VALUES ('1967', '128', 'Rumphi', 'RMP', '1');
INSERT INTO `dg_states` VALUES ('1968', '128', 'Salima', 'SLM', '1');
INSERT INTO `dg_states` VALUES ('1969', '128', 'Thyolo', 'THY', '1');
INSERT INTO `dg_states` VALUES ('1970', '128', 'Zomba', 'ZBA', '1');
INSERT INTO `dg_states` VALUES ('1971', '129', 'Johor', 'JO', '1');
INSERT INTO `dg_states` VALUES ('1972', '129', 'Kedah', 'KE', '1');
INSERT INTO `dg_states` VALUES ('1973', '129', 'Kelantan', 'KL', '1');
INSERT INTO `dg_states` VALUES ('1974', '129', 'Labuan', 'LA', '1');
INSERT INTO `dg_states` VALUES ('1975', '129', 'Melaka', 'ME', '1');
INSERT INTO `dg_states` VALUES ('1976', '129', 'Negeri Sembilan', 'NS', '1');
INSERT INTO `dg_states` VALUES ('1977', '129', 'Pahang', 'PA', '1');
INSERT INTO `dg_states` VALUES ('1978', '129', 'Perak', 'PE', '1');
INSERT INTO `dg_states` VALUES ('1979', '129', 'Perlis', 'PR', '1');
INSERT INTO `dg_states` VALUES ('1980', '129', 'Pulau Pinang', 'PP', '1');
INSERT INTO `dg_states` VALUES ('1981', '129', 'Sabah', 'SA', '1');
INSERT INTO `dg_states` VALUES ('1982', '129', 'Sarawak', 'SR', '1');
INSERT INTO `dg_states` VALUES ('1983', '129', 'Selangor', 'SE', '1');
INSERT INTO `dg_states` VALUES ('1984', '129', 'Terengganu', 'TE', '1');
INSERT INTO `dg_states` VALUES ('1985', '129', 'Wilayah Persekutuan', 'WP', '1');
INSERT INTO `dg_states` VALUES ('1986', '130', 'Thiladhunmathi Uthuru', 'THU', '1');
INSERT INTO `dg_states` VALUES ('1987', '130', 'Thiladhunmathi Dhekunu', 'THD', '1');
INSERT INTO `dg_states` VALUES ('1988', '130', 'Miladhunmadulu Uthuru', 'MLU', '1');
INSERT INTO `dg_states` VALUES ('1989', '130', 'Miladhunmadulu Dhekunu', 'MLD', '1');
INSERT INTO `dg_states` VALUES ('1990', '130', 'Maalhosmadulu Uthuru', 'MAU', '1');
INSERT INTO `dg_states` VALUES ('1991', '130', 'Maalhosmadulu Dhekunu', 'MAD', '1');
INSERT INTO `dg_states` VALUES ('1992', '130', 'Faadhippolhu', 'FAA', '1');
INSERT INTO `dg_states` VALUES ('1993', '130', 'Male Atoll', 'MAA', '1');
INSERT INTO `dg_states` VALUES ('1994', '130', 'Ari Atoll Uthuru', 'AAU', '1');
INSERT INTO `dg_states` VALUES ('1995', '130', 'Ari Atoll Dheknu', 'AAD', '1');
INSERT INTO `dg_states` VALUES ('1996', '130', 'Felidhe Atoll', 'FEA', '1');
INSERT INTO `dg_states` VALUES ('1997', '130', 'Mulaku Atoll', 'MUA', '1');
INSERT INTO `dg_states` VALUES ('1998', '130', 'Nilandhe Atoll Uthuru', 'NAU', '1');
INSERT INTO `dg_states` VALUES ('1999', '130', 'Nilandhe Atoll Dhekunu', 'NAD', '1');
INSERT INTO `dg_states` VALUES ('2000', '130', 'Kolhumadulu', 'KLH', '1');
INSERT INTO `dg_states` VALUES ('2001', '130', 'Hadhdhunmathi', 'HDH', '1');
INSERT INTO `dg_states` VALUES ('2002', '130', 'Huvadhu Atoll Uthuru', 'HAU', '1');
INSERT INTO `dg_states` VALUES ('2003', '130', 'Huvadhu Atoll Dhekunu', 'HAD', '1');
INSERT INTO `dg_states` VALUES ('2004', '130', 'Fua Mulaku', 'FMU', '1');
INSERT INTO `dg_states` VALUES ('2005', '130', 'Addu', 'ADD', '1');
INSERT INTO `dg_states` VALUES ('2006', '131', 'Gao', 'GA', '1');
INSERT INTO `dg_states` VALUES ('2007', '131', 'Kayes', 'KY', '1');
INSERT INTO `dg_states` VALUES ('2008', '131', 'Kidal', 'KD', '1');
INSERT INTO `dg_states` VALUES ('2009', '131', 'Koulikoro', 'KL', '1');
INSERT INTO `dg_states` VALUES ('2010', '131', 'Mopti', 'MP', '1');
INSERT INTO `dg_states` VALUES ('2011', '131', 'Segou', 'SG', '1');
INSERT INTO `dg_states` VALUES ('2012', '131', 'Sikasso', 'SK', '1');
INSERT INTO `dg_states` VALUES ('2013', '131', 'Tombouctou', 'TB', '1');
INSERT INTO `dg_states` VALUES ('2014', '131', 'Bamako Capital District', 'CD', '1');
INSERT INTO `dg_states` VALUES ('2015', '132', 'Attard', 'ATT', '1');
INSERT INTO `dg_states` VALUES ('2016', '132', 'Balzan', 'BAL', '1');
INSERT INTO `dg_states` VALUES ('2017', '132', 'Birgu', 'BGU', '1');
INSERT INTO `dg_states` VALUES ('2018', '132', 'Birkirkara', 'BKK', '1');
INSERT INTO `dg_states` VALUES ('2019', '132', 'Birzebbuga', 'BRZ', '1');
INSERT INTO `dg_states` VALUES ('2020', '132', 'Bormla', 'BOR', '1');
INSERT INTO `dg_states` VALUES ('2021', '132', 'Dingli', 'DIN', '1');
INSERT INTO `dg_states` VALUES ('2022', '132', 'Fgura', 'FGU', '1');
INSERT INTO `dg_states` VALUES ('2023', '132', 'Floriana', 'FLO', '1');
INSERT INTO `dg_states` VALUES ('2024', '132', 'Gudja', 'GDJ', '1');
INSERT INTO `dg_states` VALUES ('2025', '132', 'Gzira', 'GZR', '1');
INSERT INTO `dg_states` VALUES ('2026', '132', 'Gargur', 'GRG', '1');
INSERT INTO `dg_states` VALUES ('2027', '132', 'Gaxaq', 'GXQ', '1');
INSERT INTO `dg_states` VALUES ('2028', '132', 'Hamrun', 'HMR', '1');
INSERT INTO `dg_states` VALUES ('2029', '132', 'Iklin', 'IKL', '1');
INSERT INTO `dg_states` VALUES ('2030', '132', 'Isla', 'ISL', '1');
INSERT INTO `dg_states` VALUES ('2031', '132', 'Kalkara', 'KLK', '1');
INSERT INTO `dg_states` VALUES ('2032', '132', 'Kirkop', 'KRK', '1');
INSERT INTO `dg_states` VALUES ('2033', '132', 'Lija', 'LIJ', '1');
INSERT INTO `dg_states` VALUES ('2034', '132', 'Luqa', 'LUQ', '1');
INSERT INTO `dg_states` VALUES ('2035', '132', 'Marsa', 'MRS', '1');
INSERT INTO `dg_states` VALUES ('2036', '132', 'Marsaskala', 'MKL', '1');
INSERT INTO `dg_states` VALUES ('2037', '132', 'Marsaxlokk', 'MXL', '1');
INSERT INTO `dg_states` VALUES ('2038', '132', 'Mdina', 'MDN', '1');
INSERT INTO `dg_states` VALUES ('2039', '132', 'Melliea', 'MEL', '1');
INSERT INTO `dg_states` VALUES ('2040', '132', 'Mgarr', 'MGR', '1');
INSERT INTO `dg_states` VALUES ('2041', '132', 'Mosta', 'MST', '1');
INSERT INTO `dg_states` VALUES ('2042', '132', 'Mqabba', 'MQA', '1');
INSERT INTO `dg_states` VALUES ('2043', '132', 'Msida', 'MSI', '1');
INSERT INTO `dg_states` VALUES ('2044', '132', 'Mtarfa', 'MTF', '1');
INSERT INTO `dg_states` VALUES ('2045', '132', 'Naxxar', 'NAX', '1');
INSERT INTO `dg_states` VALUES ('2046', '132', 'Paola', 'PAO', '1');
INSERT INTO `dg_states` VALUES ('2047', '132', 'Pembroke', 'PEM', '1');
INSERT INTO `dg_states` VALUES ('2048', '132', 'Pieta', 'PIE', '1');
INSERT INTO `dg_states` VALUES ('2049', '132', 'Qormi', 'QOR', '1');
INSERT INTO `dg_states` VALUES ('2050', '132', 'Qrendi', 'QRE', '1');
INSERT INTO `dg_states` VALUES ('2051', '132', 'Rabat', 'RAB', '1');
INSERT INTO `dg_states` VALUES ('2052', '132', 'Safi', 'SAF', '1');
INSERT INTO `dg_states` VALUES ('2053', '132', 'San Giljan', 'SGI', '1');
INSERT INTO `dg_states` VALUES ('2054', '132', 'Santa Lucija', 'SLU', '1');
INSERT INTO `dg_states` VALUES ('2055', '132', 'San Pawl il-Bahar', 'SPB', '1');
INSERT INTO `dg_states` VALUES ('2056', '132', 'San Gwann', 'SGW', '1');
INSERT INTO `dg_states` VALUES ('2057', '132', 'Santa Venera', 'SVE', '1');
INSERT INTO `dg_states` VALUES ('2058', '132', 'Siggiewi', 'SIG', '1');
INSERT INTO `dg_states` VALUES ('2059', '132', 'Sliema', 'SLM', '1');
INSERT INTO `dg_states` VALUES ('2060', '132', 'Swieqi', 'SWQ', '1');
INSERT INTO `dg_states` VALUES ('2061', '132', 'Ta Xbiex', 'TXB', '1');
INSERT INTO `dg_states` VALUES ('2062', '132', 'Tarxien', 'TRX', '1');
INSERT INTO `dg_states` VALUES ('2063', '132', 'Valletta', 'VLT', '1');
INSERT INTO `dg_states` VALUES ('2064', '132', 'Xgajra', 'XGJ', '1');
INSERT INTO `dg_states` VALUES ('2065', '132', 'Zabbar', 'ZBR', '1');
INSERT INTO `dg_states` VALUES ('2066', '132', 'Zebbug', 'ZBG', '1');
INSERT INTO `dg_states` VALUES ('2067', '132', 'Zejtun', 'ZJT', '1');
INSERT INTO `dg_states` VALUES ('2068', '132', 'Zurrieq', 'ZRQ', '1');
INSERT INTO `dg_states` VALUES ('2069', '132', 'Fontana', 'FNT', '1');
INSERT INTO `dg_states` VALUES ('2070', '132', 'Ghajnsielem', 'GHJ', '1');
INSERT INTO `dg_states` VALUES ('2071', '132', 'Gharb', 'GHR', '1');
INSERT INTO `dg_states` VALUES ('2072', '132', 'Ghasri', 'GHS', '1');
INSERT INTO `dg_states` VALUES ('2073', '132', 'Kercem', 'KRC', '1');
INSERT INTO `dg_states` VALUES ('2074', '132', 'Munxar', 'MUN', '1');
INSERT INTO `dg_states` VALUES ('2075', '132', 'Nadur', 'NAD', '1');
INSERT INTO `dg_states` VALUES ('2076', '132', 'Qala', 'QAL', '1');
INSERT INTO `dg_states` VALUES ('2077', '132', 'Victoria', 'VIC', '1');
INSERT INTO `dg_states` VALUES ('2078', '132', 'San Lawrenz', 'SLA', '1');
INSERT INTO `dg_states` VALUES ('2079', '132', 'Sannat', 'SNT', '1');
INSERT INTO `dg_states` VALUES ('2080', '132', 'Xagra', 'ZAG', '1');
INSERT INTO `dg_states` VALUES ('2081', '132', 'Xewkija', 'XEW', '1');
INSERT INTO `dg_states` VALUES ('2082', '132', 'Zebbug', 'ZEB', '1');
INSERT INTO `dg_states` VALUES ('2083', '133', 'Ailinginae', 'ALG', '1');
INSERT INTO `dg_states` VALUES ('2084', '133', 'Ailinglaplap', 'ALL', '1');
INSERT INTO `dg_states` VALUES ('2085', '133', 'Ailuk', 'ALK', '1');
INSERT INTO `dg_states` VALUES ('2086', '133', 'Arno', 'ARN', '1');
INSERT INTO `dg_states` VALUES ('2087', '133', 'Aur', 'AUR', '1');
INSERT INTO `dg_states` VALUES ('2088', '133', 'Bikar', 'BKR', '1');
INSERT INTO `dg_states` VALUES ('2089', '133', 'Bikini', 'BKN', '1');
INSERT INTO `dg_states` VALUES ('2090', '133', 'Bokak', 'BKK', '1');
INSERT INTO `dg_states` VALUES ('2091', '133', 'Ebon', 'EBN', '1');
INSERT INTO `dg_states` VALUES ('2092', '133', 'Enewetak', 'ENT', '1');
INSERT INTO `dg_states` VALUES ('2093', '133', 'Erikub', 'EKB', '1');
INSERT INTO `dg_states` VALUES ('2094', '133', 'Jabat', 'JBT', '1');
INSERT INTO `dg_states` VALUES ('2095', '133', 'Jaluit', 'JLT', '1');
INSERT INTO `dg_states` VALUES ('2096', '133', 'Jemo', 'JEM', '1');
INSERT INTO `dg_states` VALUES ('2097', '133', 'Kili', 'KIL', '1');
INSERT INTO `dg_states` VALUES ('2098', '133', 'Kwajalein', 'KWJ', '1');
INSERT INTO `dg_states` VALUES ('2099', '133', 'Lae', 'LAE', '1');
INSERT INTO `dg_states` VALUES ('2100', '133', 'Lib', 'LIB', '1');
INSERT INTO `dg_states` VALUES ('2101', '133', 'Likiep', 'LKP', '1');
INSERT INTO `dg_states` VALUES ('2102', '133', 'Majuro', 'MJR', '1');
INSERT INTO `dg_states` VALUES ('2103', '133', 'Maloelap', 'MLP', '1');
INSERT INTO `dg_states` VALUES ('2104', '133', 'Mejit', 'MJT', '1');
INSERT INTO `dg_states` VALUES ('2105', '133', 'Mili', 'MIL', '1');
INSERT INTO `dg_states` VALUES ('2106', '133', 'Namorik', 'NMK', '1');
INSERT INTO `dg_states` VALUES ('2107', '133', 'Namu', 'NAM', '1');
INSERT INTO `dg_states` VALUES ('2108', '133', 'Rongelap', 'RGL', '1');
INSERT INTO `dg_states` VALUES ('2109', '133', 'Rongrik', 'RGK', '1');
INSERT INTO `dg_states` VALUES ('2110', '133', 'Toke', 'TOK', '1');
INSERT INTO `dg_states` VALUES ('2111', '133', 'Ujae', 'UJA', '1');
INSERT INTO `dg_states` VALUES ('2112', '133', 'Ujelang', 'UJL', '1');
INSERT INTO `dg_states` VALUES ('2113', '133', 'Utirik', 'UTK', '1');
INSERT INTO `dg_states` VALUES ('2114', '133', 'Wotho', 'WTH', '1');
INSERT INTO `dg_states` VALUES ('2115', '133', 'Wotje', 'WTJ', '1');
INSERT INTO `dg_states` VALUES ('2116', '135', 'Adrar', 'AD', '1');
INSERT INTO `dg_states` VALUES ('2117', '135', 'Assaba', 'AS', '1');
INSERT INTO `dg_states` VALUES ('2118', '135', 'Brakna', 'BR', '1');
INSERT INTO `dg_states` VALUES ('2119', '135', 'Dakhlet Nouadhibou', 'DN', '1');
INSERT INTO `dg_states` VALUES ('2120', '135', 'Gorgol', 'GO', '1');
INSERT INTO `dg_states` VALUES ('2121', '135', 'Guidimaka', 'GM', '1');
INSERT INTO `dg_states` VALUES ('2122', '135', 'Hodh Ech Chargui', 'HC', '1');
INSERT INTO `dg_states` VALUES ('2123', '135', 'Hodh El Gharbi', 'HG', '1');
INSERT INTO `dg_states` VALUES ('2124', '135', 'Inchiri', 'IN', '1');
INSERT INTO `dg_states` VALUES ('2125', '135', 'Tagant', 'TA', '1');
INSERT INTO `dg_states` VALUES ('2126', '135', 'Tiris Zemmour', 'TZ', '1');
INSERT INTO `dg_states` VALUES ('2127', '135', 'Trarza', 'TR', '1');
INSERT INTO `dg_states` VALUES ('2128', '135', 'Nouakchott', 'NO', '1');
INSERT INTO `dg_states` VALUES ('2129', '136', 'Beau Bassin-Rose Hill', 'BR', '1');
INSERT INTO `dg_states` VALUES ('2130', '136', 'Curepipe', 'CU', '1');
INSERT INTO `dg_states` VALUES ('2131', '136', 'Port Louis', 'PU', '1');
INSERT INTO `dg_states` VALUES ('2132', '136', 'Quatre Bornes', 'QB', '1');
INSERT INTO `dg_states` VALUES ('2133', '136', 'Vacoas-Phoenix', 'VP', '1');
INSERT INTO `dg_states` VALUES ('2134', '136', 'Agalega Islands', 'AG', '1');
INSERT INTO `dg_states` VALUES ('2135', '136', 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', '1');
INSERT INTO `dg_states` VALUES ('2136', '136', 'Rodrigues', 'RO', '1');
INSERT INTO `dg_states` VALUES ('2137', '136', 'Black River', 'BL', '1');
INSERT INTO `dg_states` VALUES ('2138', '136', 'Flacq', 'FL', '1');
INSERT INTO `dg_states` VALUES ('2139', '136', 'Grand Port', 'GP', '1');
INSERT INTO `dg_states` VALUES ('2140', '136', 'Moka', 'MO', '1');
INSERT INTO `dg_states` VALUES ('2141', '136', 'Pamplemousses', 'PA', '1');
INSERT INTO `dg_states` VALUES ('2142', '136', 'Plaines Wilhems', 'PW', '1');
INSERT INTO `dg_states` VALUES ('2143', '136', 'Port Louis', 'PL', '1');
INSERT INTO `dg_states` VALUES ('2144', '136', 'Riviere du Rempart', 'RR', '1');
INSERT INTO `dg_states` VALUES ('2145', '136', 'Savanne', 'SA', '1');
INSERT INTO `dg_states` VALUES ('2146', '138', 'Baja California Norte', 'BN', '1');
INSERT INTO `dg_states` VALUES ('2147', '138', 'Baja California Sur', 'BS', '1');
INSERT INTO `dg_states` VALUES ('2148', '138', 'Campeche', 'CA', '1');
INSERT INTO `dg_states` VALUES ('2149', '138', 'Chiapas', 'CI', '1');
INSERT INTO `dg_states` VALUES ('2150', '138', 'Chihuahua', 'CH', '1');
INSERT INTO `dg_states` VALUES ('2151', '138', 'Coahuila de Zaragoza', 'CZ', '1');
INSERT INTO `dg_states` VALUES ('2152', '138', 'Colima', 'CL', '1');
INSERT INTO `dg_states` VALUES ('2153', '138', 'Distrito Federal', 'DF', '1');
INSERT INTO `dg_states` VALUES ('2154', '138', 'Durango', 'DU', '1');
INSERT INTO `dg_states` VALUES ('2155', '138', 'Guanajuato', 'GA', '1');
INSERT INTO `dg_states` VALUES ('2156', '138', 'Guerrero', 'GE', '1');
INSERT INTO `dg_states` VALUES ('2157', '138', 'Hidalgo', 'HI', '1');
INSERT INTO `dg_states` VALUES ('2158', '138', 'Jalisco', 'JA', '1');
INSERT INTO `dg_states` VALUES ('2159', '138', 'Mexico', 'ME', '1');
INSERT INTO `dg_states` VALUES ('2160', '138', 'Michoacan de Ocampo', 'MI', '1');
INSERT INTO `dg_states` VALUES ('2161', '138', 'Morelos', 'MO', '1');
INSERT INTO `dg_states` VALUES ('2162', '138', 'Nayarit', 'NA', '1');
INSERT INTO `dg_states` VALUES ('2163', '138', 'Nuevo Leon', 'NL', '1');
INSERT INTO `dg_states` VALUES ('2164', '138', 'Oaxaca', 'OA', '1');
INSERT INTO `dg_states` VALUES ('2165', '138', 'Puebla', 'PU', '1');
INSERT INTO `dg_states` VALUES ('2166', '138', 'Queretaro de Arteaga', 'QA', '1');
INSERT INTO `dg_states` VALUES ('2167', '138', 'Quintana Roo', 'QR', '1');
INSERT INTO `dg_states` VALUES ('2168', '138', 'San Luis Potosi', 'SA', '1');
INSERT INTO `dg_states` VALUES ('2169', '138', 'Sinaloa', 'SI', '1');
INSERT INTO `dg_states` VALUES ('2170', '138', 'Sonora', 'SO', '1');
INSERT INTO `dg_states` VALUES ('2171', '138', 'Tabasco', 'TB', '1');
INSERT INTO `dg_states` VALUES ('2172', '138', 'Tamaulipas', 'TM', '1');
INSERT INTO `dg_states` VALUES ('2173', '138', 'Tlaxcala', 'TL', '1');
INSERT INTO `dg_states` VALUES ('2174', '138', 'Veracruz-Llave', 'VE', '1');
INSERT INTO `dg_states` VALUES ('2175', '138', 'Yucatan', 'YU', '1');
INSERT INTO `dg_states` VALUES ('2176', '138', 'Zacatecas', 'ZA', '1');
INSERT INTO `dg_states` VALUES ('2177', '139', 'Chuuk', 'C', '1');
INSERT INTO `dg_states` VALUES ('2178', '139', 'Kosrae', 'K', '1');
INSERT INTO `dg_states` VALUES ('2179', '139', 'Pohnpei', 'P', '1');
INSERT INTO `dg_states` VALUES ('2180', '139', 'Yap', 'Y', '1');
INSERT INTO `dg_states` VALUES ('2181', '140', 'Gagauzia', 'GA', '1');
INSERT INTO `dg_states` VALUES ('2182', '140', 'Chisinau', 'CU', '1');
INSERT INTO `dg_states` VALUES ('2183', '140', 'Balti', 'BA', '1');
INSERT INTO `dg_states` VALUES ('2184', '140', 'Cahul', 'CA', '1');
INSERT INTO `dg_states` VALUES ('2185', '140', 'Edinet', 'ED', '1');
INSERT INTO `dg_states` VALUES ('2186', '140', 'Lapusna', 'LA', '1');
INSERT INTO `dg_states` VALUES ('2187', '140', 'Orhei', 'OR', '1');
INSERT INTO `dg_states` VALUES ('2188', '140', 'Soroca', 'SO', '1');
INSERT INTO `dg_states` VALUES ('2189', '140', 'Tighina', 'TI', '1');
INSERT INTO `dg_states` VALUES ('2190', '140', 'Ungheni', 'UN', '1');
INSERT INTO `dg_states` VALUES ('2191', '140', 'StÃ¢â‚¬Å¡nga Nistrului', 'SN', '1');
INSERT INTO `dg_states` VALUES ('2192', '141', 'Fontvieille', 'FV', '1');
INSERT INTO `dg_states` VALUES ('2193', '141', 'La Condamine', 'LC', '1');
INSERT INTO `dg_states` VALUES ('2194', '141', 'Monaco-Ville', 'MV', '1');
INSERT INTO `dg_states` VALUES ('2195', '141', 'Monte-Carlo', 'MC', '1');
INSERT INTO `dg_states` VALUES ('2196', '142', 'Ulanbaatar', '1', '1');
INSERT INTO `dg_states` VALUES ('2197', '142', 'Orhon', '035', '1');
INSERT INTO `dg_states` VALUES ('2198', '142', 'Darhan uul', '037', '1');
INSERT INTO `dg_states` VALUES ('2199', '142', 'Hentiy', '039', '1');
INSERT INTO `dg_states` VALUES ('2200', '142', 'Hovsgol', '041', '1');
INSERT INTO `dg_states` VALUES ('2201', '142', 'Hovd', '043', '1');
INSERT INTO `dg_states` VALUES ('2202', '142', 'Uvs', '046', '1');
INSERT INTO `dg_states` VALUES ('2203', '142', 'Tov', '047', '1');
INSERT INTO `dg_states` VALUES ('2204', '142', 'Selenge', '049', '1');
INSERT INTO `dg_states` VALUES ('2205', '142', 'Suhbaatar', '051', '1');
INSERT INTO `dg_states` VALUES ('2206', '142', 'Omnogovi', '053', '1');
INSERT INTO `dg_states` VALUES ('2207', '142', 'Ovorhangay', '055', '1');
INSERT INTO `dg_states` VALUES ('2208', '142', 'Dzavhan', '057', '1');
INSERT INTO `dg_states` VALUES ('2209', '142', 'DundgovL', '059', '1');
INSERT INTO `dg_states` VALUES ('2210', '142', 'Dornod', '061', '1');
INSERT INTO `dg_states` VALUES ('2211', '142', 'Dornogov', '063', '1');
INSERT INTO `dg_states` VALUES ('2212', '142', 'Govi-Sumber', '064', '1');
INSERT INTO `dg_states` VALUES ('2213', '142', 'Govi-Altay', '065', '1');
INSERT INTO `dg_states` VALUES ('2214', '142', 'Bulgan', '067', '1');
INSERT INTO `dg_states` VALUES ('2215', '142', 'Bayanhongor', '069', '1');
INSERT INTO `dg_states` VALUES ('2216', '142', 'Bayan-Olgiy', '071', '1');
INSERT INTO `dg_states` VALUES ('2217', '142', 'Arhangay', '073', '1');
INSERT INTO `dg_states` VALUES ('2218', '143', 'Saint Anthony', 'A', '1');
INSERT INTO `dg_states` VALUES ('2219', '143', 'Saint Georges', 'G', '1');
INSERT INTO `dg_states` VALUES ('2220', '143', 'Saint Peter', 'P', '1');
INSERT INTO `dg_states` VALUES ('2221', '144', 'Agadir', 'AGD', '1');
INSERT INTO `dg_states` VALUES ('2222', '144', 'Al Hoceima', 'HOC', '1');
INSERT INTO `dg_states` VALUES ('2223', '144', 'Azilal', 'AZI', '1');
INSERT INTO `dg_states` VALUES ('2224', '144', 'Beni Mellal', 'BME', '1');
INSERT INTO `dg_states` VALUES ('2225', '144', 'Ben Slimane', 'BSL', '1');
INSERT INTO `dg_states` VALUES ('2226', '144', 'Boulemane', 'BLM', '1');
INSERT INTO `dg_states` VALUES ('2227', '144', 'Casablanca', 'CBL', '1');
INSERT INTO `dg_states` VALUES ('2228', '144', 'Chaouen', 'CHA', '1');
INSERT INTO `dg_states` VALUES ('2229', '144', 'El Jadida', 'EJA', '1');
INSERT INTO `dg_states` VALUES ('2230', '144', 'El Kelaa des Sraghna', 'EKS', '1');
INSERT INTO `dg_states` VALUES ('2231', '144', 'Er Rachidia', 'ERA', '1');
INSERT INTO `dg_states` VALUES ('2232', '144', 'Essaouira', 'ESS', '1');
INSERT INTO `dg_states` VALUES ('2233', '144', 'Fes', 'FES', '1');
INSERT INTO `dg_states` VALUES ('2234', '144', 'Figuig', 'FIG', '1');
INSERT INTO `dg_states` VALUES ('2235', '144', 'Guelmim', 'GLM', '1');
INSERT INTO `dg_states` VALUES ('2236', '144', 'Ifrane', 'IFR', '1');
INSERT INTO `dg_states` VALUES ('2237', '144', 'Kenitra', 'KEN', '1');
INSERT INTO `dg_states` VALUES ('2238', '144', 'Khemisset', 'KHM', '1');
INSERT INTO `dg_states` VALUES ('2239', '144', 'Khenifra', 'KHN', '1');
INSERT INTO `dg_states` VALUES ('2240', '144', 'Khouribga', 'KHO', '1');
INSERT INTO `dg_states` VALUES ('2241', '144', 'Laayoune', 'LYN', '1');
INSERT INTO `dg_states` VALUES ('2242', '144', 'Larache', 'LAR', '1');
INSERT INTO `dg_states` VALUES ('2243', '144', 'Marrakech', 'MRK', '1');
INSERT INTO `dg_states` VALUES ('2244', '144', 'Meknes', 'MKN', '1');
INSERT INTO `dg_states` VALUES ('2245', '144', 'Nador', 'NAD', '1');
INSERT INTO `dg_states` VALUES ('2246', '144', 'Ouarzazate', 'ORZ', '1');
INSERT INTO `dg_states` VALUES ('2247', '144', 'Oujda', 'OUJ', '1');
INSERT INTO `dg_states` VALUES ('2248', '144', 'Rabat-Sale', 'RSA', '1');
INSERT INTO `dg_states` VALUES ('2249', '144', 'Safi', 'SAF', '1');
INSERT INTO `dg_states` VALUES ('2250', '144', 'Settat', 'SET', '1');
INSERT INTO `dg_states` VALUES ('2251', '144', 'Sidi Kacem', 'SKA', '1');
INSERT INTO `dg_states` VALUES ('2252', '144', 'Tangier', 'TGR', '1');
INSERT INTO `dg_states` VALUES ('2253', '144', 'Tan-Tan', 'TAN', '1');
INSERT INTO `dg_states` VALUES ('2254', '144', 'Taounate', 'TAO', '1');
INSERT INTO `dg_states` VALUES ('2255', '144', 'Taroudannt', 'TRD', '1');
INSERT INTO `dg_states` VALUES ('2256', '144', 'Tata', 'TAT', '1');
INSERT INTO `dg_states` VALUES ('2257', '144', 'Taza', 'TAZ', '1');
INSERT INTO `dg_states` VALUES ('2258', '144', 'Tetouan', 'TET', '1');
INSERT INTO `dg_states` VALUES ('2259', '144', 'Tiznit', 'TIZ', '1');
INSERT INTO `dg_states` VALUES ('2260', '144', 'Ad Dakhla', 'ADK', '1');
INSERT INTO `dg_states` VALUES ('2261', '144', 'Boujdour', 'BJD', '1');
INSERT INTO `dg_states` VALUES ('2262', '144', 'Es Smara', 'ESM', '1');
INSERT INTO `dg_states` VALUES ('2263', '145', 'Cabo Delgado', 'CD', '1');
INSERT INTO `dg_states` VALUES ('2264', '145', 'Gaza', 'GZ', '1');
INSERT INTO `dg_states` VALUES ('2265', '145', 'Inhambane', 'IN', '1');
INSERT INTO `dg_states` VALUES ('2266', '145', 'Manica', 'MN', '1');
INSERT INTO `dg_states` VALUES ('2267', '145', 'Maputo (city)', 'MC', '1');
INSERT INTO `dg_states` VALUES ('2268', '145', 'Maputo', 'MP', '1');
INSERT INTO `dg_states` VALUES ('2269', '145', 'Nampula', 'NA', '1');
INSERT INTO `dg_states` VALUES ('2270', '145', 'Niassa', 'NI', '1');
INSERT INTO `dg_states` VALUES ('2271', '145', 'Sofala', 'SO', '1');
INSERT INTO `dg_states` VALUES ('2272', '145', 'Tete', 'TE', '1');
INSERT INTO `dg_states` VALUES ('2273', '145', 'Zambezia', 'ZA', '1');
INSERT INTO `dg_states` VALUES ('2274', '146', 'Ayeyarwady', 'AY', '1');
INSERT INTO `dg_states` VALUES ('2275', '146', 'Bago', 'BG', '1');
INSERT INTO `dg_states` VALUES ('2276', '146', 'Magway', 'MG', '1');
INSERT INTO `dg_states` VALUES ('2277', '146', 'Mandalay', 'MD', '1');
INSERT INTO `dg_states` VALUES ('2278', '146', 'Sagaing', 'SG', '1');
INSERT INTO `dg_states` VALUES ('2279', '146', 'Tanintharyi', 'TN', '1');
INSERT INTO `dg_states` VALUES ('2280', '146', 'Yangon', 'YG', '1');
INSERT INTO `dg_states` VALUES ('2281', '146', 'Chin State', 'CH', '1');
INSERT INTO `dg_states` VALUES ('2282', '146', 'Kachin State', 'KC', '1');
INSERT INTO `dg_states` VALUES ('2283', '146', 'Kayah State', 'KH', '1');
INSERT INTO `dg_states` VALUES ('2284', '146', 'Kayin State', 'KN', '1');
INSERT INTO `dg_states` VALUES ('2285', '146', 'Mon State', 'MN', '1');
INSERT INTO `dg_states` VALUES ('2286', '146', 'Rakhine State', 'RK', '1');
INSERT INTO `dg_states` VALUES ('2287', '146', 'Shan State', 'SH', '1');
INSERT INTO `dg_states` VALUES ('2288', '147', 'Caprivi', 'CA', '1');
INSERT INTO `dg_states` VALUES ('2289', '147', 'Erongo', 'ER', '1');
INSERT INTO `dg_states` VALUES ('2290', '147', 'Hardap', 'HA', '1');
INSERT INTO `dg_states` VALUES ('2291', '147', 'Karas', 'KR', '1');
INSERT INTO `dg_states` VALUES ('2292', '147', 'Kavango', 'KV', '1');
INSERT INTO `dg_states` VALUES ('2293', '147', 'Khomas', 'KH', '1');
INSERT INTO `dg_states` VALUES ('2294', '147', 'Kunene', 'KU', '1');
INSERT INTO `dg_states` VALUES ('2295', '147', 'Ohangwena', 'OW', '1');
INSERT INTO `dg_states` VALUES ('2296', '147', 'Omaheke', 'OK', '1');
INSERT INTO `dg_states` VALUES ('2297', '147', 'Omusati', 'OT', '1');
INSERT INTO `dg_states` VALUES ('2298', '147', 'Oshana', 'ON', '1');
INSERT INTO `dg_states` VALUES ('2299', '147', 'Oshikoto', 'OO', '1');
INSERT INTO `dg_states` VALUES ('2300', '147', 'Otjozondjupa', 'OJ', '1');
INSERT INTO `dg_states` VALUES ('2301', '148', 'Aiwo', 'AO', '1');
INSERT INTO `dg_states` VALUES ('2302', '148', 'Anabar', 'AA', '1');
INSERT INTO `dg_states` VALUES ('2303', '148', 'Anetan', 'AT', '1');
INSERT INTO `dg_states` VALUES ('2304', '148', 'Anibare', 'AI', '1');
INSERT INTO `dg_states` VALUES ('2305', '148', 'Baiti', 'BA', '1');
INSERT INTO `dg_states` VALUES ('2306', '148', 'Boe', 'BO', '1');
INSERT INTO `dg_states` VALUES ('2307', '148', 'Buada', 'BU', '1');
INSERT INTO `dg_states` VALUES ('2308', '148', 'Denigomodu', 'DE', '1');
INSERT INTO `dg_states` VALUES ('2309', '148', 'Ewa', 'EW', '1');
INSERT INTO `dg_states` VALUES ('2310', '148', 'Ijuw', 'IJ', '1');
INSERT INTO `dg_states` VALUES ('2311', '148', 'Meneng', 'ME', '1');
INSERT INTO `dg_states` VALUES ('2312', '148', 'Nibok', 'NI', '1');
INSERT INTO `dg_states` VALUES ('2313', '148', 'Uaboe', 'UA', '1');
INSERT INTO `dg_states` VALUES ('2314', '148', 'Yaren', 'YA', '1');
INSERT INTO `dg_states` VALUES ('2315', '149', 'Bagmati', 'BA', '1');
INSERT INTO `dg_states` VALUES ('2316', '149', 'Bheri', 'BH', '1');
INSERT INTO `dg_states` VALUES ('2317', '149', 'Dhawalagiri', 'DH', '1');
INSERT INTO `dg_states` VALUES ('2318', '149', 'Gandaki', 'GA', '1');
INSERT INTO `dg_states` VALUES ('2319', '149', 'Janakpur', 'JA', '1');
INSERT INTO `dg_states` VALUES ('2320', '149', 'Karnali', 'KA', '1');
INSERT INTO `dg_states` VALUES ('2321', '149', 'Kosi', 'KO', '1');
INSERT INTO `dg_states` VALUES ('2322', '149', 'Lumbini', 'LU', '1');
INSERT INTO `dg_states` VALUES ('2323', '149', 'Mahakali', 'MA', '1');
INSERT INTO `dg_states` VALUES ('2324', '149', 'Mechi', 'ME', '1');
INSERT INTO `dg_states` VALUES ('2325', '149', 'Narayani', 'NA', '1');
INSERT INTO `dg_states` VALUES ('2326', '149', 'Rapti', 'RA', '1');
INSERT INTO `dg_states` VALUES ('2327', '149', 'Sagarmatha', 'SA', '1');
INSERT INTO `dg_states` VALUES ('2328', '149', 'Seti', 'SE', '1');
INSERT INTO `dg_states` VALUES ('2329', '150', 'Drenthe', 'DR', '1');
INSERT INTO `dg_states` VALUES ('2330', '150', 'Flevoland', 'FL', '1');
INSERT INTO `dg_states` VALUES ('2331', '150', 'Friesland', 'FR', '1');
INSERT INTO `dg_states` VALUES ('2332', '150', 'Gelderland', 'GE', '1');
INSERT INTO `dg_states` VALUES ('2333', '150', 'Groningen', 'GR', '1');
INSERT INTO `dg_states` VALUES ('2334', '150', 'Limburg', 'LI', '1');
INSERT INTO `dg_states` VALUES ('2335', '150', 'Noord Brabant', 'NB', '1');
INSERT INTO `dg_states` VALUES ('2336', '150', 'Noord Holland', 'NH', '1');
INSERT INTO `dg_states` VALUES ('2337', '150', 'Overijssel', 'OV', '1');
INSERT INTO `dg_states` VALUES ('2338', '150', 'Utrecht', 'UT', '1');
INSERT INTO `dg_states` VALUES ('2339', '150', 'Zeeland', 'ZE', '1');
INSERT INTO `dg_states` VALUES ('2340', '150', 'Zuid Holland', 'ZH', '1');
INSERT INTO `dg_states` VALUES ('2341', '152', 'Iles Loyaute', 'L', '1');
INSERT INTO `dg_states` VALUES ('2342', '152', 'Nord', 'N', '1');
INSERT INTO `dg_states` VALUES ('2343', '152', 'Sud', 'S', '1');
INSERT INTO `dg_states` VALUES ('2344', '153', 'Auckland', 'AUK', '1');
INSERT INTO `dg_states` VALUES ('2345', '153', 'Bay of Plenty', 'BOP', '1');
INSERT INTO `dg_states` VALUES ('2346', '153', 'Canterbury', 'CAN', '1');
INSERT INTO `dg_states` VALUES ('2347', '153', 'Coromandel', 'COR', '1');
INSERT INTO `dg_states` VALUES ('2348', '153', 'Gisborne', 'GIS', '1');
INSERT INTO `dg_states` VALUES ('2349', '153', 'Fiordland', 'FIO', '1');
INSERT INTO `dg_states` VALUES ('2350', '153', 'Hawke\'s Bay', 'HKB', '1');
INSERT INTO `dg_states` VALUES ('2351', '153', 'Marlborough', 'MBH', '1');
INSERT INTO `dg_states` VALUES ('2352', '153', 'Manawatu-Wanganui', 'MWT', '1');
INSERT INTO `dg_states` VALUES ('2353', '153', 'Mt Cook-Mackenzie', 'MCM', '1');
INSERT INTO `dg_states` VALUES ('2354', '153', 'Nelson', 'NSN', '1');
INSERT INTO `dg_states` VALUES ('2355', '153', 'Northland', 'NTL', '1');
INSERT INTO `dg_states` VALUES ('2356', '153', 'Otago', 'OTA', '1');
INSERT INTO `dg_states` VALUES ('2357', '153', 'Southland', 'STL', '1');
INSERT INTO `dg_states` VALUES ('2358', '153', 'Taranaki', 'TKI', '1');
INSERT INTO `dg_states` VALUES ('2359', '153', 'Wellington', 'WGN', '1');
INSERT INTO `dg_states` VALUES ('2360', '153', 'Waikato', 'WKO', '1');
INSERT INTO `dg_states` VALUES ('2361', '153', 'Wairarapa', 'WAI', '1');
INSERT INTO `dg_states` VALUES ('2362', '153', 'West Coast', 'WTC', '1');
INSERT INTO `dg_states` VALUES ('2363', '154', 'Atlantico Norte', 'AN', '1');
INSERT INTO `dg_states` VALUES ('2364', '154', 'Atlantico Sur', 'AS', '1');
INSERT INTO `dg_states` VALUES ('2365', '154', 'Boaco', 'BO', '1');
INSERT INTO `dg_states` VALUES ('2366', '154', 'Carazo', 'CA', '1');
INSERT INTO `dg_states` VALUES ('2367', '154', 'Chinandega', 'CI', '1');
INSERT INTO `dg_states` VALUES ('2368', '154', 'Chontales', 'CO', '1');
INSERT INTO `dg_states` VALUES ('2369', '154', 'Esteli', 'ES', '1');
INSERT INTO `dg_states` VALUES ('2370', '154', 'Granada', 'GR', '1');
INSERT INTO `dg_states` VALUES ('2371', '154', 'Jinotega', 'JI', '1');
INSERT INTO `dg_states` VALUES ('2372', '154', 'Leon', 'LE', '1');
INSERT INTO `dg_states` VALUES ('2373', '154', 'Madriz', 'MD', '1');
INSERT INTO `dg_states` VALUES ('2374', '154', 'Managua', 'MN', '1');
INSERT INTO `dg_states` VALUES ('2375', '154', 'Masaya', 'MS', '1');
INSERT INTO `dg_states` VALUES ('2376', '154', 'Matagalpa', 'MT', '1');
INSERT INTO `dg_states` VALUES ('2377', '154', 'Nuevo Segovia', 'NS', '1');
INSERT INTO `dg_states` VALUES ('2378', '154', 'Rio San Juan', 'RS', '1');
INSERT INTO `dg_states` VALUES ('2379', '154', 'Rivas', 'RI', '1');
INSERT INTO `dg_states` VALUES ('2380', '155', 'Agadez', 'AG', '1');
INSERT INTO `dg_states` VALUES ('2381', '155', 'Diffa', 'DF', '1');
INSERT INTO `dg_states` VALUES ('2382', '155', 'Dosso', 'DS', '1');
INSERT INTO `dg_states` VALUES ('2383', '155', 'Maradi', 'MA', '1');
INSERT INTO `dg_states` VALUES ('2384', '155', 'Niamey', 'NM', '1');
INSERT INTO `dg_states` VALUES ('2385', '155', 'Tahoua', 'TH', '1');
INSERT INTO `dg_states` VALUES ('2386', '155', 'Tillaberi', 'TL', '1');
INSERT INTO `dg_states` VALUES ('2387', '155', 'Zinder', 'ZD', '1');
INSERT INTO `dg_states` VALUES ('2388', '156', 'Abia', 'AB', '1');
INSERT INTO `dg_states` VALUES ('2389', '156', 'Abuja Federal Capital Territory', 'CT', '1');
INSERT INTO `dg_states` VALUES ('2390', '156', 'Adamawa', 'AD', '1');
INSERT INTO `dg_states` VALUES ('2391', '156', 'Akwa Ibom', 'AK', '1');
INSERT INTO `dg_states` VALUES ('2392', '156', 'Anambra', 'AN', '1');
INSERT INTO `dg_states` VALUES ('2393', '156', 'Bauchi', 'BC', '1');
INSERT INTO `dg_states` VALUES ('2394', '156', 'Bayelsa', 'BY', '1');
INSERT INTO `dg_states` VALUES ('2395', '156', 'Benue', 'BN', '1');
INSERT INTO `dg_states` VALUES ('2396', '156', 'Borno', 'BO', '1');
INSERT INTO `dg_states` VALUES ('2397', '156', 'Cross River', 'CR', '1');
INSERT INTO `dg_states` VALUES ('2398', '156', 'Delta', 'DE', '1');
INSERT INTO `dg_states` VALUES ('2399', '156', 'Ebonyi', 'EB', '1');
INSERT INTO `dg_states` VALUES ('2400', '156', 'Edo', 'ED', '1');
INSERT INTO `dg_states` VALUES ('2401', '156', 'Ekiti', 'EK', '1');
INSERT INTO `dg_states` VALUES ('2402', '156', 'Enugu', 'EN', '1');
INSERT INTO `dg_states` VALUES ('2403', '156', 'Gombe', 'GO', '1');
INSERT INTO `dg_states` VALUES ('2404', '156', 'Imo', 'IM', '1');
INSERT INTO `dg_states` VALUES ('2405', '156', 'Jigawa', 'JI', '1');
INSERT INTO `dg_states` VALUES ('2406', '156', 'Kaduna', 'KD', '1');
INSERT INTO `dg_states` VALUES ('2407', '156', 'Kano', 'KN', '1');
INSERT INTO `dg_states` VALUES ('2408', '156', 'Katsina', 'KT', '1');
INSERT INTO `dg_states` VALUES ('2409', '156', 'Kebbi', 'KE', '1');
INSERT INTO `dg_states` VALUES ('2410', '156', 'Kogi', 'KO', '1');
INSERT INTO `dg_states` VALUES ('2411', '156', 'Kwara', 'KW', '1');
INSERT INTO `dg_states` VALUES ('2412', '156', 'Lagos', 'LA', '1');
INSERT INTO `dg_states` VALUES ('2413', '156', 'Nassarawa', 'NA', '1');
INSERT INTO `dg_states` VALUES ('2414', '156', 'Niger', 'NI', '1');
INSERT INTO `dg_states` VALUES ('2415', '156', 'Ogun', 'OG', '1');
INSERT INTO `dg_states` VALUES ('2416', '156', 'Ondo', 'ONG', '1');
INSERT INTO `dg_states` VALUES ('2417', '156', 'Osun', 'OS', '1');
INSERT INTO `dg_states` VALUES ('2418', '156', 'Oyo', 'OY', '1');
INSERT INTO `dg_states` VALUES ('2419', '156', 'Plateau', 'PL', '1');
INSERT INTO `dg_states` VALUES ('2420', '156', 'Rivers', 'RI', '1');
INSERT INTO `dg_states` VALUES ('2421', '156', 'Sokoto', 'SO', '1');
INSERT INTO `dg_states` VALUES ('2422', '156', 'Taraba', 'TA', '1');
INSERT INTO `dg_states` VALUES ('2423', '156', 'Yobe', 'YO', '1');
INSERT INTO `dg_states` VALUES ('2424', '156', 'Zamfara', 'ZA', '1');
INSERT INTO `dg_states` VALUES ('2425', '159', 'Northern Islands', 'N', '1');
INSERT INTO `dg_states` VALUES ('2426', '159', 'Rota', 'R', '1');
INSERT INTO `dg_states` VALUES ('2427', '159', 'Saipan', 'S', '1');
INSERT INTO `dg_states` VALUES ('2428', '159', 'Tinian', 'T', '1');
INSERT INTO `dg_states` VALUES ('2429', '160', 'Akershus', 'AK', '1');
INSERT INTO `dg_states` VALUES ('2430', '160', 'Aust-Agder', 'AA', '1');
INSERT INTO `dg_states` VALUES ('2431', '160', 'Buskerud', 'BU', '1');
INSERT INTO `dg_states` VALUES ('2432', '160', 'Finnmark', 'FM', '1');
INSERT INTO `dg_states` VALUES ('2433', '160', 'Hedmark', 'HM', '1');
INSERT INTO `dg_states` VALUES ('2434', '160', 'Hordaland', 'HL', '1');
INSERT INTO `dg_states` VALUES ('2435', '160', 'More og Romdal', 'MR', '1');
INSERT INTO `dg_states` VALUES ('2436', '160', 'Nord-Trondelag', 'NT', '1');
INSERT INTO `dg_states` VALUES ('2437', '160', 'Nordland', 'NL', '1');
INSERT INTO `dg_states` VALUES ('2438', '160', 'Ostfold', 'OF', '1');
INSERT INTO `dg_states` VALUES ('2439', '160', 'Oppland', 'OP', '1');
INSERT INTO `dg_states` VALUES ('2440', '160', 'Oslo', 'OL', '1');
INSERT INTO `dg_states` VALUES ('2441', '160', 'Rogaland', 'RL', '1');
INSERT INTO `dg_states` VALUES ('2442', '160', 'Sor-Trondelag', 'ST', '1');
INSERT INTO `dg_states` VALUES ('2443', '160', 'Sogn og Fjordane', 'SJ', '1');
INSERT INTO `dg_states` VALUES ('2444', '160', 'Svalbard', 'SV', '1');
INSERT INTO `dg_states` VALUES ('2445', '160', 'Telemark', 'TM', '1');
INSERT INTO `dg_states` VALUES ('2446', '160', 'Troms', 'TR', '1');
INSERT INTO `dg_states` VALUES ('2447', '160', 'Vest-Agder', 'VA', '1');
INSERT INTO `dg_states` VALUES ('2448', '160', 'Vestfold', 'VF', '1');
INSERT INTO `dg_states` VALUES ('2449', '161', 'Ad Dakhiliyah', 'DA', '1');
INSERT INTO `dg_states` VALUES ('2450', '161', 'Al Batinah', 'BA', '1');
INSERT INTO `dg_states` VALUES ('2451', '161', 'Al Wusta', 'WU', '1');
INSERT INTO `dg_states` VALUES ('2452', '161', 'Ash Sharqiyah', 'SH', '1');
INSERT INTO `dg_states` VALUES ('2453', '161', 'Az Zahirah', 'ZA', '1');
INSERT INTO `dg_states` VALUES ('2454', '161', 'Masqat', 'MA', '1');
INSERT INTO `dg_states` VALUES ('2455', '161', 'Musandam', 'MU', '1');
INSERT INTO `dg_states` VALUES ('2456', '161', 'Zufar', 'ZU', '1');
INSERT INTO `dg_states` VALUES ('2457', '162', 'Balochistan', 'B', '1');
INSERT INTO `dg_states` VALUES ('2458', '162', 'Federally Administered Tribal Areas', 'T', '1');
INSERT INTO `dg_states` VALUES ('2459', '162', 'Islamabad Capital Territory', 'I', '1');
INSERT INTO `dg_states` VALUES ('2460', '162', 'North-West Frontier', 'N', '1');
INSERT INTO `dg_states` VALUES ('2461', '162', 'Punjab', 'P', '1');
INSERT INTO `dg_states` VALUES ('2462', '162', 'Sindh', 'S', '1');
INSERT INTO `dg_states` VALUES ('2463', '163', 'Aimeliik', 'AM', '1');
INSERT INTO `dg_states` VALUES ('2464', '163', 'Airai', 'AR', '1');
INSERT INTO `dg_states` VALUES ('2465', '163', 'Angaur', 'AN', '1');
INSERT INTO `dg_states` VALUES ('2466', '163', 'Hatohobei', 'HA', '1');
INSERT INTO `dg_states` VALUES ('2467', '163', 'Kayangel', 'KA', '1');
INSERT INTO `dg_states` VALUES ('2468', '163', 'Koror', 'KO', '1');
INSERT INTO `dg_states` VALUES ('2469', '163', 'Melekeok', 'ME', '1');
INSERT INTO `dg_states` VALUES ('2470', '163', 'Ngaraard', 'NA', '1');
INSERT INTO `dg_states` VALUES ('2471', '163', 'Ngarchelong', 'NG', '1');
INSERT INTO `dg_states` VALUES ('2472', '163', 'Ngardmau', 'ND', '1');
INSERT INTO `dg_states` VALUES ('2473', '163', 'Ngatpang', 'NT', '1');
INSERT INTO `dg_states` VALUES ('2474', '163', 'Ngchesar', 'NC', '1');
INSERT INTO `dg_states` VALUES ('2475', '163', 'Ngeremlengui', 'NR', '1');
INSERT INTO `dg_states` VALUES ('2476', '163', 'Ngiwal', 'NW', '1');
INSERT INTO `dg_states` VALUES ('2477', '163', 'Peleliu', 'PE', '1');
INSERT INTO `dg_states` VALUES ('2478', '163', 'Sonsorol', 'SO', '1');
INSERT INTO `dg_states` VALUES ('2479', '164', 'Bocas del Toro', 'BT', '1');
INSERT INTO `dg_states` VALUES ('2480', '164', 'Chiriqui', 'CH', '1');
INSERT INTO `dg_states` VALUES ('2481', '164', 'Cocle', 'CC', '1');
INSERT INTO `dg_states` VALUES ('2482', '164', 'Colon', 'CL', '1');
INSERT INTO `dg_states` VALUES ('2483', '164', 'Darien', 'DA', '1');
INSERT INTO `dg_states` VALUES ('2484', '164', 'Herrera', 'HE', '1');
INSERT INTO `dg_states` VALUES ('2485', '164', 'Los Santos', 'LS', '1');
INSERT INTO `dg_states` VALUES ('2486', '164', 'Panama', 'PA', '1');
INSERT INTO `dg_states` VALUES ('2487', '164', 'San Blas', 'SB', '1');
INSERT INTO `dg_states` VALUES ('2488', '164', 'Veraguas', 'VG', '1');
INSERT INTO `dg_states` VALUES ('2489', '165', 'Bougainville', 'BV', '1');
INSERT INTO `dg_states` VALUES ('2490', '165', 'Central', 'CE', '1');
INSERT INTO `dg_states` VALUES ('2491', '165', 'Chimbu', 'CH', '1');
INSERT INTO `dg_states` VALUES ('2492', '165', 'Eastern Highlands', 'EH', '1');
INSERT INTO `dg_states` VALUES ('2493', '165', 'East New Britain', 'EB', '1');
INSERT INTO `dg_states` VALUES ('2494', '165', 'East Sepik', 'ES', '1');
INSERT INTO `dg_states` VALUES ('2495', '165', 'Enga', 'EN', '1');
INSERT INTO `dg_states` VALUES ('2496', '165', 'Gulf', 'GU', '1');
INSERT INTO `dg_states` VALUES ('2497', '165', 'Madang', 'MD', '1');
INSERT INTO `dg_states` VALUES ('2498', '165', 'Manus', 'MN', '1');
INSERT INTO `dg_states` VALUES ('2499', '165', 'Milne Bay', 'MB', '1');
INSERT INTO `dg_states` VALUES ('2500', '165', 'Morobe', 'MR', '1');
INSERT INTO `dg_states` VALUES ('2501', '165', 'National Capital', 'NC', '1');
INSERT INTO `dg_states` VALUES ('2502', '165', 'New Ireland', 'NI', '1');
INSERT INTO `dg_states` VALUES ('2503', '165', 'Northern', 'NO', '1');
INSERT INTO `dg_states` VALUES ('2504', '165', 'Sandaun', 'SA', '1');
INSERT INTO `dg_states` VALUES ('2505', '165', 'Southern Highlands', 'SH', '1');
INSERT INTO `dg_states` VALUES ('2506', '165', 'Western', 'WE', '1');
INSERT INTO `dg_states` VALUES ('2507', '165', 'Western Highlands', 'WH', '1');
INSERT INTO `dg_states` VALUES ('2508', '165', 'West New Britain', 'WB', '1');
INSERT INTO `dg_states` VALUES ('2509', '166', 'Alto Paraguay', 'AG', '1');
INSERT INTO `dg_states` VALUES ('2510', '166', 'Alto Parana', 'AN', '1');
INSERT INTO `dg_states` VALUES ('2511', '166', 'Amambay', 'AM', '1');
INSERT INTO `dg_states` VALUES ('2512', '166', 'Asuncion', 'AS', '1');
INSERT INTO `dg_states` VALUES ('2513', '166', 'Boqueron', 'BO', '1');
INSERT INTO `dg_states` VALUES ('2514', '166', 'Caaguazu', 'CG', '1');
INSERT INTO `dg_states` VALUES ('2515', '166', 'Caazapa', 'CZ', '1');
INSERT INTO `dg_states` VALUES ('2516', '166', 'Canindeyu', 'CN', '1');
INSERT INTO `dg_states` VALUES ('2517', '166', 'Central', 'CE', '1');
INSERT INTO `dg_states` VALUES ('2518', '166', 'Concepcion', 'CC', '1');
INSERT INTO `dg_states` VALUES ('2519', '166', 'Cordillera', 'CD', '1');
INSERT INTO `dg_states` VALUES ('2520', '166', 'Guaira', 'GU', '1');
INSERT INTO `dg_states` VALUES ('2521', '166', 'Itapua', 'IT', '1');
INSERT INTO `dg_states` VALUES ('2522', '166', 'Misiones', 'MI', '1');
INSERT INTO `dg_states` VALUES ('2523', '166', 'Neembucu', 'NE', '1');
INSERT INTO `dg_states` VALUES ('2524', '166', 'Paraguari', 'PA', '1');
INSERT INTO `dg_states` VALUES ('2525', '166', 'Presidente Hayes', 'PH', '1');
INSERT INTO `dg_states` VALUES ('2526', '166', 'San Pedro', 'SP', '1');
INSERT INTO `dg_states` VALUES ('2527', '167', 'Amazonas', 'AM', '1');
INSERT INTO `dg_states` VALUES ('2528', '167', 'Ancash', 'AN', '1');
INSERT INTO `dg_states` VALUES ('2529', '167', 'Apurimac', 'AP', '1');
INSERT INTO `dg_states` VALUES ('2530', '167', 'Arequipa', 'AR', '1');
INSERT INTO `dg_states` VALUES ('2531', '167', 'Ayacucho', 'AY', '1');
INSERT INTO `dg_states` VALUES ('2532', '167', 'Cajamarca', 'CJ', '1');
INSERT INTO `dg_states` VALUES ('2533', '167', 'Callao', 'CL', '1');
INSERT INTO `dg_states` VALUES ('2534', '167', 'Cusco', 'CU', '1');
INSERT INTO `dg_states` VALUES ('2535', '167', 'Huancavelica', 'HV', '1');
INSERT INTO `dg_states` VALUES ('2536', '167', 'Huanuco', 'HO', '1');
INSERT INTO `dg_states` VALUES ('2537', '167', 'Ica', 'IC', '1');
INSERT INTO `dg_states` VALUES ('2538', '167', 'Junin', 'JU', '1');
INSERT INTO `dg_states` VALUES ('2539', '167', 'La Libertad', 'LD', '1');
INSERT INTO `dg_states` VALUES ('2540', '167', 'Lambayeque', 'LY', '1');
INSERT INTO `dg_states` VALUES ('2541', '167', 'Lima', 'LI', '1');
INSERT INTO `dg_states` VALUES ('2542', '167', 'Loreto', 'LO', '1');
INSERT INTO `dg_states` VALUES ('2543', '167', 'Madre de Dios', 'MD', '1');
INSERT INTO `dg_states` VALUES ('2544', '167', 'Moquegua', 'MO', '1');
INSERT INTO `dg_states` VALUES ('2545', '167', 'Pasco', 'PA', '1');
INSERT INTO `dg_states` VALUES ('2546', '167', 'Piura', 'PI', '1');
INSERT INTO `dg_states` VALUES ('2547', '167', 'Puno', 'PU', '1');
INSERT INTO `dg_states` VALUES ('2548', '167', 'San Martin', 'SM', '1');
INSERT INTO `dg_states` VALUES ('2549', '167', 'Tacna', 'TA', '1');
INSERT INTO `dg_states` VALUES ('2550', '167', 'Tumbes', 'TU', '1');
INSERT INTO `dg_states` VALUES ('2551', '167', 'Ucayali', 'UC', '1');
INSERT INTO `dg_states` VALUES ('2552', '168', 'Abra', 'ABR', '1');
INSERT INTO `dg_states` VALUES ('2553', '168', 'Agusan del Norte', 'ANO', '1');
INSERT INTO `dg_states` VALUES ('2554', '168', 'Agusan del Sur', 'ASU', '1');
INSERT INTO `dg_states` VALUES ('2555', '168', 'Aklan', 'AKL', '1');
INSERT INTO `dg_states` VALUES ('2556', '168', 'Albay', 'ALB', '1');
INSERT INTO `dg_states` VALUES ('2557', '168', 'Antique', 'ANT', '1');
INSERT INTO `dg_states` VALUES ('2558', '168', 'Apayao', 'APY', '1');
INSERT INTO `dg_states` VALUES ('2559', '168', 'Aurora', 'AUR', '1');
INSERT INTO `dg_states` VALUES ('2560', '168', 'Basilan', 'BAS', '1');
INSERT INTO `dg_states` VALUES ('2561', '168', 'Bataan', 'BTA', '1');
INSERT INTO `dg_states` VALUES ('2562', '168', 'Batanes', 'BTE', '1');
INSERT INTO `dg_states` VALUES ('2563', '168', 'Batangas', 'BTG', '1');
INSERT INTO `dg_states` VALUES ('2564', '168', 'Biliran', 'BLR', '1');
INSERT INTO `dg_states` VALUES ('2565', '168', 'Benguet', 'BEN', '1');
INSERT INTO `dg_states` VALUES ('2566', '168', 'Bohol', 'BOL', '1');
INSERT INTO `dg_states` VALUES ('2567', '168', 'Bukidnon', 'BUK', '1');
INSERT INTO `dg_states` VALUES ('2568', '168', 'Bulacan', 'BUL', '1');
INSERT INTO `dg_states` VALUES ('2569', '168', 'Cagayan', 'CAG', '1');
INSERT INTO `dg_states` VALUES ('2570', '168', 'Camarines Norte', 'CNO', '1');
INSERT INTO `dg_states` VALUES ('2571', '168', 'Camarines Sur', 'CSU', '1');
INSERT INTO `dg_states` VALUES ('2572', '168', 'Camiguin', 'CAM', '1');
INSERT INTO `dg_states` VALUES ('2573', '168', 'Capiz', 'CAP', '1');
INSERT INTO `dg_states` VALUES ('2574', '168', 'Catanduanes', 'CAT', '1');
INSERT INTO `dg_states` VALUES ('2575', '168', 'Cavite', 'CAV', '1');
INSERT INTO `dg_states` VALUES ('2576', '168', 'Cebu', 'CEB', '1');
INSERT INTO `dg_states` VALUES ('2577', '168', 'Compostela', 'CMP', '1');
INSERT INTO `dg_states` VALUES ('2578', '168', 'Davao del Norte', 'DNO', '1');
INSERT INTO `dg_states` VALUES ('2579', '168', 'Davao del Sur', 'DSU', '1');
INSERT INTO `dg_states` VALUES ('2580', '168', 'Davao Oriental', 'DOR', '1');
INSERT INTO `dg_states` VALUES ('2581', '168', 'Eastern Samar', 'ESA', '1');
INSERT INTO `dg_states` VALUES ('2582', '168', 'Guimaras', 'GUI', '1');
INSERT INTO `dg_states` VALUES ('2583', '168', 'Ifugao', 'IFU', '1');
INSERT INTO `dg_states` VALUES ('2584', '168', 'Ilocos Norte', 'INO', '1');
INSERT INTO `dg_states` VALUES ('2585', '168', 'Ilocos Sur', 'ISU', '1');
INSERT INTO `dg_states` VALUES ('2586', '168', 'Iloilo', 'ILO', '1');
INSERT INTO `dg_states` VALUES ('2587', '168', 'Isabela', 'ISA', '1');
INSERT INTO `dg_states` VALUES ('2588', '168', 'Kalinga', 'KAL', '1');
INSERT INTO `dg_states` VALUES ('2589', '168', 'Laguna', 'LAG', '1');
INSERT INTO `dg_states` VALUES ('2590', '168', 'Lanao del Norte', 'LNO', '1');
INSERT INTO `dg_states` VALUES ('2591', '168', 'Lanao del Sur', 'LSU', '1');
INSERT INTO `dg_states` VALUES ('2592', '168', 'La Union', 'UNI', '1');
INSERT INTO `dg_states` VALUES ('2593', '168', 'Leyte', 'LEY', '1');
INSERT INTO `dg_states` VALUES ('2594', '168', 'Maguindanao', 'MAG', '1');
INSERT INTO `dg_states` VALUES ('2595', '168', 'Marinduque', 'MRN', '1');
INSERT INTO `dg_states` VALUES ('2596', '168', 'Masbate', 'MSB', '1');
INSERT INTO `dg_states` VALUES ('2597', '168', 'Mindoro Occidental', 'MIC', '1');
INSERT INTO `dg_states` VALUES ('2598', '168', 'Mindoro Oriental', 'MIR', '1');
INSERT INTO `dg_states` VALUES ('2599', '168', 'Misamis Occidental', 'MSC', '1');
INSERT INTO `dg_states` VALUES ('2600', '168', 'Misamis Oriental', 'MOR', '1');
INSERT INTO `dg_states` VALUES ('2601', '168', 'Mountain', 'MOP', '1');
INSERT INTO `dg_states` VALUES ('2602', '168', 'Negros Occidental', 'NOC', '1');
INSERT INTO `dg_states` VALUES ('2603', '168', 'Negros Oriental', 'NOR', '1');
INSERT INTO `dg_states` VALUES ('2604', '168', 'North Cotabato', 'NCT', '1');
INSERT INTO `dg_states` VALUES ('2605', '168', 'Northern Samar', 'NSM', '1');
INSERT INTO `dg_states` VALUES ('2606', '168', 'Nueva Ecija', 'NEC', '1');
INSERT INTO `dg_states` VALUES ('2607', '168', 'Nueva Vizcaya', 'NVZ', '1');
INSERT INTO `dg_states` VALUES ('2608', '168', 'Palawan', 'PLW', '1');
INSERT INTO `dg_states` VALUES ('2609', '168', 'Pampanga', 'PMP', '1');
INSERT INTO `dg_states` VALUES ('2610', '168', 'Pangasinan', 'PNG', '1');
INSERT INTO `dg_states` VALUES ('2611', '168', 'Quezon', 'QZN', '1');
INSERT INTO `dg_states` VALUES ('2612', '168', 'Quirino', 'QRN', '1');
INSERT INTO `dg_states` VALUES ('2613', '168', 'Rizal', 'RIZ', '1');
INSERT INTO `dg_states` VALUES ('2614', '168', 'Romblon', 'ROM', '1');
INSERT INTO `dg_states` VALUES ('2615', '168', 'Samar', 'SMR', '1');
INSERT INTO `dg_states` VALUES ('2616', '168', 'Sarangani', 'SRG', '1');
INSERT INTO `dg_states` VALUES ('2617', '168', 'Siquijor', 'SQJ', '1');
INSERT INTO `dg_states` VALUES ('2618', '168', 'Sorsogon', 'SRS', '1');
INSERT INTO `dg_states` VALUES ('2619', '168', 'South Cotabato', 'SCO', '1');
INSERT INTO `dg_states` VALUES ('2620', '168', 'Southern Leyte', 'SLE', '1');
INSERT INTO `dg_states` VALUES ('2621', '168', 'Sultan Kudarat', 'SKU', '1');
INSERT INTO `dg_states` VALUES ('2622', '168', 'Sulu', 'SLU', '1');
INSERT INTO `dg_states` VALUES ('2623', '168', 'Surigao del Norte', 'SNO', '1');
INSERT INTO `dg_states` VALUES ('2624', '168', 'Surigao del Sur', 'SSU', '1');
INSERT INTO `dg_states` VALUES ('2625', '168', 'Tarlac', 'TAR', '1');
INSERT INTO `dg_states` VALUES ('2626', '168', 'Tawi-Tawi', 'TAW', '1');
INSERT INTO `dg_states` VALUES ('2627', '168', 'Zambales', 'ZBL', '1');
INSERT INTO `dg_states` VALUES ('2628', '168', 'Zamboanga del Norte', 'ZNO', '1');
INSERT INTO `dg_states` VALUES ('2629', '168', 'Zamboanga del Sur', 'ZSU', '1');
INSERT INTO `dg_states` VALUES ('2630', '168', 'Zamboanga Sibugay', 'ZSI', '1');
INSERT INTO `dg_states` VALUES ('2631', '170', 'Dolnoslaskie', 'DO', '1');
INSERT INTO `dg_states` VALUES ('2632', '170', 'Kujawsko-Pomorskie', 'KP', '1');
INSERT INTO `dg_states` VALUES ('2633', '170', 'Lodzkie', 'LO', '1');
INSERT INTO `dg_states` VALUES ('2634', '170', 'Lubelskie', 'LL', '1');
INSERT INTO `dg_states` VALUES ('2635', '170', 'Lubuskie', 'LU', '1');
INSERT INTO `dg_states` VALUES ('2636', '170', 'Malopolskie', 'ML', '1');
INSERT INTO `dg_states` VALUES ('2637', '170', 'Mazowieckie', 'MZ', '1');
INSERT INTO `dg_states` VALUES ('2638', '170', 'Opolskie', 'OP', '1');
INSERT INTO `dg_states` VALUES ('2639', '170', 'Podkarpackie', 'PP', '1');
INSERT INTO `dg_states` VALUES ('2640', '170', 'Podlaskie', 'PL', '1');
INSERT INTO `dg_states` VALUES ('2641', '170', 'Pomorskie', 'PM', '1');
INSERT INTO `dg_states` VALUES ('2642', '170', 'Slaskie', 'SL', '1');
INSERT INTO `dg_states` VALUES ('2643', '170', 'Swietokrzyskie', 'SW', '1');
INSERT INTO `dg_states` VALUES ('2644', '170', 'Warminsko-Mazurskie', 'WM', '1');
INSERT INTO `dg_states` VALUES ('2645', '170', 'Wielkopolskie', 'WP', '1');
INSERT INTO `dg_states` VALUES ('2646', '170', 'Zachodniopomorskie', 'ZA', '1');
INSERT INTO `dg_states` VALUES ('2647', '198', 'Saint Pierre', 'P', '1');
INSERT INTO `dg_states` VALUES ('2648', '198', 'Miquelon', 'M', '1');
INSERT INTO `dg_states` VALUES ('2649', '171', 'A&ccedil;ores', 'AC', '1');
INSERT INTO `dg_states` VALUES ('2650', '171', 'Aveiro', 'AV', '1');
INSERT INTO `dg_states` VALUES ('2651', '171', 'Beja', 'BE', '1');
INSERT INTO `dg_states` VALUES ('2652', '171', 'Braga', 'BR', '1');
INSERT INTO `dg_states` VALUES ('2653', '171', 'Bragan&ccedil;a', 'BA', '1');
INSERT INTO `dg_states` VALUES ('2654', '171', 'Castelo Branco', 'CB', '1');
INSERT INTO `dg_states` VALUES ('2655', '171', 'Coimbra', 'CO', '1');
INSERT INTO `dg_states` VALUES ('2656', '171', '&Eacute;vora', 'EV', '1');
INSERT INTO `dg_states` VALUES ('2657', '171', 'Faro', 'FA', '1');
INSERT INTO `dg_states` VALUES ('2658', '171', 'Guarda', 'GU', '1');
INSERT INTO `dg_states` VALUES ('2659', '171', 'Leiria', 'LE', '1');
INSERT INTO `dg_states` VALUES ('2660', '171', 'Lisboa', 'LI', '1');
INSERT INTO `dg_states` VALUES ('2661', '171', 'Madeira', 'ME', '1');
INSERT INTO `dg_states` VALUES ('2662', '171', 'Portalegre', 'PO', '1');
INSERT INTO `dg_states` VALUES ('2663', '171', 'Porto', 'PR', '1');
INSERT INTO `dg_states` VALUES ('2664', '171', 'Santar&eacute;m', 'SA', '1');
INSERT INTO `dg_states` VALUES ('2665', '171', 'Set&uacute;bal', 'SE', '1');
INSERT INTO `dg_states` VALUES ('2666', '171', 'Viana do Castelo', 'VC', '1');
INSERT INTO `dg_states` VALUES ('2667', '171', 'Vila Real', 'VR', '1');
INSERT INTO `dg_states` VALUES ('2668', '171', 'Viseu', 'VI', '1');
INSERT INTO `dg_states` VALUES ('2669', '173', 'Ad Dawhah', 'DW', '1');
INSERT INTO `dg_states` VALUES ('2670', '173', 'Al Ghuwayriyah', 'GW', '1');
INSERT INTO `dg_states` VALUES ('2671', '173', 'Al Jumayliyah', 'JM', '1');
INSERT INTO `dg_states` VALUES ('2672', '173', 'Al Khawr', 'KR', '1');
INSERT INTO `dg_states` VALUES ('2673', '173', 'Al Wakrah', 'WK', '1');
INSERT INTO `dg_states` VALUES ('2674', '173', 'Ar Rayyan', 'RN', '1');
INSERT INTO `dg_states` VALUES ('2675', '173', 'Jarayan al Batinah', 'JB', '1');
INSERT INTO `dg_states` VALUES ('2676', '173', 'Madinat ash Shamal', 'MS', '1');
INSERT INTO `dg_states` VALUES ('2677', '173', 'Umm Sa\'id', 'UD', '1');
INSERT INTO `dg_states` VALUES ('2678', '173', 'Umm Salal', 'UL', '1');
INSERT INTO `dg_states` VALUES ('2679', '175', 'Alba', 'AB', '1');
INSERT INTO `dg_states` VALUES ('2680', '175', 'Arad', 'AR', '1');
INSERT INTO `dg_states` VALUES ('2681', '175', 'Arges', 'AG', '1');
INSERT INTO `dg_states` VALUES ('2682', '175', 'Bacau', 'BC', '1');
INSERT INTO `dg_states` VALUES ('2683', '175', 'Bihor', 'BH', '1');
INSERT INTO `dg_states` VALUES ('2684', '175', 'Bistrita-Nasaud', 'BN', '1');
INSERT INTO `dg_states` VALUES ('2685', '175', 'Botosani', 'BT', '1');
INSERT INTO `dg_states` VALUES ('2686', '175', 'Brasov', 'BV', '1');
INSERT INTO `dg_states` VALUES ('2687', '175', 'Braila', 'BR', '1');
INSERT INTO `dg_states` VALUES ('2688', '175', 'Bucuresti', 'B', '1');
INSERT INTO `dg_states` VALUES ('2689', '175', 'Buzau', 'BZ', '1');
INSERT INTO `dg_states` VALUES ('2690', '175', 'Caras-Severin', 'CS', '1');
INSERT INTO `dg_states` VALUES ('2691', '175', 'Calarasi', 'CL', '1');
INSERT INTO `dg_states` VALUES ('2692', '175', 'Cluj', 'CJ', '1');
INSERT INTO `dg_states` VALUES ('2693', '175', 'Constanta', 'CT', '1');
INSERT INTO `dg_states` VALUES ('2694', '175', 'Covasna', 'CV', '1');
INSERT INTO `dg_states` VALUES ('2695', '175', 'Dimbovita', 'DB', '1');
INSERT INTO `dg_states` VALUES ('2696', '175', 'Dolj', 'DJ', '1');
INSERT INTO `dg_states` VALUES ('2697', '175', 'Galati', 'GL', '1');
INSERT INTO `dg_states` VALUES ('2698', '175', 'Giurgiu', 'GR', '1');
INSERT INTO `dg_states` VALUES ('2699', '175', 'Gorj', 'GJ', '1');
INSERT INTO `dg_states` VALUES ('2700', '175', 'Harghita', 'HR', '1');
INSERT INTO `dg_states` VALUES ('2701', '175', 'Hunedoara', 'HD', '1');
INSERT INTO `dg_states` VALUES ('2702', '175', 'Ialomita', 'IL', '1');
INSERT INTO `dg_states` VALUES ('2703', '175', 'Iasi', 'IS', '1');
INSERT INTO `dg_states` VALUES ('2704', '175', 'Ilfov', 'IF', '1');
INSERT INTO `dg_states` VALUES ('2705', '175', 'Maramures', 'MM', '1');
INSERT INTO `dg_states` VALUES ('2706', '175', 'Mehedinti', 'MH', '1');
INSERT INTO `dg_states` VALUES ('2707', '175', 'Mures', 'MS', '1');
INSERT INTO `dg_states` VALUES ('2708', '175', 'Neamt', 'NT', '1');
INSERT INTO `dg_states` VALUES ('2709', '175', 'Olt', 'OT', '1');
INSERT INTO `dg_states` VALUES ('2710', '175', 'Prahova', 'PH', '1');
INSERT INTO `dg_states` VALUES ('2711', '175', 'Satu-Mare', 'SM', '1');
INSERT INTO `dg_states` VALUES ('2712', '175', 'Salaj', 'SJ', '1');
INSERT INTO `dg_states` VALUES ('2713', '175', 'Sibiu', 'SB', '1');
INSERT INTO `dg_states` VALUES ('2714', '175', 'Suceava', 'SV', '1');
INSERT INTO `dg_states` VALUES ('2715', '175', 'Teleorman', 'TR', '1');
INSERT INTO `dg_states` VALUES ('2716', '175', 'Timis', 'TM', '1');
INSERT INTO `dg_states` VALUES ('2717', '175', 'Tulcea', 'TL', '1');
INSERT INTO `dg_states` VALUES ('2718', '175', 'Vaslui', 'VS', '1');
INSERT INTO `dg_states` VALUES ('2719', '175', 'Valcea', 'VL', '1');
INSERT INTO `dg_states` VALUES ('2720', '175', 'Vrancea', 'VN', '1');
INSERT INTO `dg_states` VALUES ('2721', '176', 'Abakan', 'AB', '1');
INSERT INTO `dg_states` VALUES ('2722', '176', 'Aginskoye', 'AG', '1');
INSERT INTO `dg_states` VALUES ('2723', '176', 'Anadyr', 'AN', '1');
INSERT INTO `dg_states` VALUES ('2724', '176', 'Arkahangelsk', 'AR', '1');
INSERT INTO `dg_states` VALUES ('2725', '176', 'Astrakhan', 'AS', '1');
INSERT INTO `dg_states` VALUES ('2726', '176', 'Barnaul', 'BA', '1');
INSERT INTO `dg_states` VALUES ('2727', '176', 'Belgorod', 'BE', '1');
INSERT INTO `dg_states` VALUES ('2728', '176', 'Birobidzhan', 'BI', '1');
INSERT INTO `dg_states` VALUES ('2729', '176', 'Blagoveshchensk', 'BL', '1');
INSERT INTO `dg_states` VALUES ('2730', '176', 'Bryansk', 'BR', '1');
INSERT INTO `dg_states` VALUES ('2731', '176', 'Cheboksary', 'CH', '1');
INSERT INTO `dg_states` VALUES ('2732', '176', 'Chelyabinsk', 'CL', '1');
INSERT INTO `dg_states` VALUES ('2733', '176', 'Cherkessk', 'CR', '1');
INSERT INTO `dg_states` VALUES ('2734', '176', 'Chita', 'CI', '1');
INSERT INTO `dg_states` VALUES ('2735', '176', 'Dudinka', 'DU', '1');
INSERT INTO `dg_states` VALUES ('2736', '176', 'Elista', 'EL', '1');
INSERT INTO `dg_states` VALUES ('2737', '176', 'Gomo-Altaysk', 'GO', '1');
INSERT INTO `dg_states` VALUES ('2738', '176', 'Gorno-Altaysk', 'GA', '1');
INSERT INTO `dg_states` VALUES ('2739', '176', 'Groznyy', 'GR', '1');
INSERT INTO `dg_states` VALUES ('2740', '176', 'Irkutsk', 'IR', '1');
INSERT INTO `dg_states` VALUES ('2741', '176', 'Ivanovo', 'IV', '1');
INSERT INTO `dg_states` VALUES ('2742', '176', 'Izhevsk', 'IZ', '1');
INSERT INTO `dg_states` VALUES ('2743', '176', 'Kalinigrad', 'KA', '1');
INSERT INTO `dg_states` VALUES ('2744', '176', 'Kaluga', 'KL', '1');
INSERT INTO `dg_states` VALUES ('2745', '176', 'Kasnodar', 'KS', '1');
INSERT INTO `dg_states` VALUES ('2746', '176', 'Kazan', 'KZ', '1');
INSERT INTO `dg_states` VALUES ('2747', '176', 'Kemerovo', 'KE', '1');
INSERT INTO `dg_states` VALUES ('2748', '176', 'Khabarovsk', 'KH', '1');
INSERT INTO `dg_states` VALUES ('2749', '176', 'Khanty-Mansiysk', 'KM', '1');
INSERT INTO `dg_states` VALUES ('2750', '176', 'Kostroma', 'KO', '1');
INSERT INTO `dg_states` VALUES ('2751', '176', 'Krasnodar', 'KR', '1');
INSERT INTO `dg_states` VALUES ('2752', '176', 'Krasnoyarsk', 'KN', '1');
INSERT INTO `dg_states` VALUES ('2753', '176', 'Kudymkar', 'KU', '1');
INSERT INTO `dg_states` VALUES ('2754', '176', 'Kurgan', 'KG', '1');
INSERT INTO `dg_states` VALUES ('2755', '176', 'Kursk', 'KK', '1');
INSERT INTO `dg_states` VALUES ('2756', '176', 'Kyzyl', 'KY', '1');
INSERT INTO `dg_states` VALUES ('2757', '176', 'Lipetsk', 'LI', '1');
INSERT INTO `dg_states` VALUES ('2758', '176', 'Magadan', 'MA', '1');
INSERT INTO `dg_states` VALUES ('2759', '176', 'Makhachkala', 'MK', '1');
INSERT INTO `dg_states` VALUES ('2760', '176', 'Maykop', 'MY', '1');
INSERT INTO `dg_states` VALUES ('2761', '176', 'Moscow', 'MO', '1');
INSERT INTO `dg_states` VALUES ('2762', '176', 'Murmansk', 'MU', '1');
INSERT INTO `dg_states` VALUES ('2763', '176', 'Nalchik', 'NA', '1');
INSERT INTO `dg_states` VALUES ('2764', '176', 'Naryan Mar', 'NR', '1');
INSERT INTO `dg_states` VALUES ('2765', '176', 'Nazran', 'NZ', '1');
INSERT INTO `dg_states` VALUES ('2766', '176', 'Nizhniy Novgorod', 'NI', '1');
INSERT INTO `dg_states` VALUES ('2767', '176', 'Novgorod', 'NO', '1');
INSERT INTO `dg_states` VALUES ('2768', '176', 'Novosibirsk', 'NV', '1');
INSERT INTO `dg_states` VALUES ('2769', '176', 'Omsk', 'OM', '1');
INSERT INTO `dg_states` VALUES ('2770', '176', 'Orel', 'OR', '1');
INSERT INTO `dg_states` VALUES ('2771', '176', 'Orenburg', 'OE', '1');
INSERT INTO `dg_states` VALUES ('2772', '176', 'Palana', 'PA', '1');
INSERT INTO `dg_states` VALUES ('2773', '176', 'Penza', 'PE', '1');
INSERT INTO `dg_states` VALUES ('2774', '176', 'Perm', 'PR', '1');
INSERT INTO `dg_states` VALUES ('2775', '176', 'Petropavlovsk-Kamchatskiy', 'PK', '1');
INSERT INTO `dg_states` VALUES ('2776', '176', 'Petrozavodsk', 'PT', '1');
INSERT INTO `dg_states` VALUES ('2777', '176', 'Pskov', 'PS', '1');
INSERT INTO `dg_states` VALUES ('2778', '176', 'Rostov-na-Donu', 'RO', '1');
INSERT INTO `dg_states` VALUES ('2779', '176', 'Ryazan', 'RY', '1');
INSERT INTO `dg_states` VALUES ('2780', '176', 'Salekhard', 'SL', '1');
INSERT INTO `dg_states` VALUES ('2781', '176', 'Samara', 'SA', '1');
INSERT INTO `dg_states` VALUES ('2782', '176', 'Saransk', 'SR', '1');
INSERT INTO `dg_states` VALUES ('2783', '176', 'Saratov', 'SV', '1');
INSERT INTO `dg_states` VALUES ('2784', '176', 'Smolensk', 'SM', '1');
INSERT INTO `dg_states` VALUES ('2785', '176', 'St. Petersburg', 'SP', '1');
INSERT INTO `dg_states` VALUES ('2786', '176', 'Stavropol', 'ST', '1');
INSERT INTO `dg_states` VALUES ('2787', '176', 'Syktyvkar', 'SY', '1');
INSERT INTO `dg_states` VALUES ('2788', '176', 'Tambov', 'TA', '1');
INSERT INTO `dg_states` VALUES ('2789', '176', 'Tomsk', 'TO', '1');
INSERT INTO `dg_states` VALUES ('2790', '176', 'Tula', 'TU', '1');
INSERT INTO `dg_states` VALUES ('2791', '176', 'Tura', 'TR', '1');
INSERT INTO `dg_states` VALUES ('2792', '176', 'Tver', 'TV', '1');
INSERT INTO `dg_states` VALUES ('2793', '176', 'Tyumen', 'TY', '1');
INSERT INTO `dg_states` VALUES ('2794', '176', 'Ufa', 'UF', '1');
INSERT INTO `dg_states` VALUES ('2795', '176', 'Ul\'yanovsk', 'UL', '1');
INSERT INTO `dg_states` VALUES ('2796', '176', 'Ulan-Ude', 'UU', '1');
INSERT INTO `dg_states` VALUES ('2797', '176', 'Ust\'-Ordynskiy', 'US', '1');
INSERT INTO `dg_states` VALUES ('2798', '176', 'Vladikavkaz', 'VL', '1');
INSERT INTO `dg_states` VALUES ('2799', '176', 'Vladimir', 'VA', '1');
INSERT INTO `dg_states` VALUES ('2800', '176', 'Vladivostok', 'VV', '1');
INSERT INTO `dg_states` VALUES ('2801', '176', 'Volgograd', 'VG', '1');
INSERT INTO `dg_states` VALUES ('2802', '176', 'Vologda', 'VD', '1');
INSERT INTO `dg_states` VALUES ('2803', '176', 'Voronezh', 'VO', '1');
INSERT INTO `dg_states` VALUES ('2804', '176', 'Vyatka', 'VY', '1');
INSERT INTO `dg_states` VALUES ('2805', '176', 'Yakutsk', 'YA', '1');
INSERT INTO `dg_states` VALUES ('2806', '176', 'Yaroslavl', 'YR', '1');
INSERT INTO `dg_states` VALUES ('2807', '176', 'Yekaterinburg', 'YE', '1');
INSERT INTO `dg_states` VALUES ('2808', '176', 'Yoshkar-Ola', 'YO', '1');
INSERT INTO `dg_states` VALUES ('2809', '177', 'Butare', 'BU', '1');
INSERT INTO `dg_states` VALUES ('2810', '177', 'Byumba', 'BY', '1');
INSERT INTO `dg_states` VALUES ('2811', '177', 'Cyangugu', 'CY', '1');
INSERT INTO `dg_states` VALUES ('2812', '177', 'Gikongoro', 'GK', '1');
INSERT INTO `dg_states` VALUES ('2813', '177', 'Gisenyi', 'GS', '1');
INSERT INTO `dg_states` VALUES ('2814', '177', 'Gitarama', 'GT', '1');
INSERT INTO `dg_states` VALUES ('2815', '177', 'Kibungo', 'KG', '1');
INSERT INTO `dg_states` VALUES ('2816', '177', 'Kibuye', 'KY', '1');
INSERT INTO `dg_states` VALUES ('2817', '177', 'Kigali Rurale', 'KR', '1');
INSERT INTO `dg_states` VALUES ('2818', '177', 'Kigali-ville', 'KV', '1');
INSERT INTO `dg_states` VALUES ('2819', '177', 'Ruhengeri', 'RU', '1');
INSERT INTO `dg_states` VALUES ('2820', '177', 'Umutara', 'UM', '1');
INSERT INTO `dg_states` VALUES ('2821', '178', 'Christ Church Nichola Town', 'CCN', '1');
INSERT INTO `dg_states` VALUES ('2822', '178', 'Saint Anne Sandy Point', 'SAS', '1');
INSERT INTO `dg_states` VALUES ('2823', '178', 'Saint George Basseterre', 'SGB', '1');
INSERT INTO `dg_states` VALUES ('2824', '178', 'Saint George Gingerland', 'SGG', '1');
INSERT INTO `dg_states` VALUES ('2825', '178', 'Saint James Windward', 'SJW', '1');
INSERT INTO `dg_states` VALUES ('2826', '178', 'Saint John Capesterre', 'SJC', '1');
INSERT INTO `dg_states` VALUES ('2827', '178', 'Saint John Figtree', 'SJF', '1');
INSERT INTO `dg_states` VALUES ('2828', '178', 'Saint Mary Cayon', 'SMC', '1');
INSERT INTO `dg_states` VALUES ('2829', '178', 'Saint Paul Capesterre', 'CAP', '1');
INSERT INTO `dg_states` VALUES ('2830', '178', 'Saint Paul Charlestown', 'CHA', '1');
INSERT INTO `dg_states` VALUES ('2831', '178', 'Saint Peter Basseterre', 'SPB', '1');
INSERT INTO `dg_states` VALUES ('2832', '178', 'Saint Thomas Lowland', 'STL', '1');
INSERT INTO `dg_states` VALUES ('2833', '178', 'Saint Thomas Middle Island', 'STM', '1');
INSERT INTO `dg_states` VALUES ('2834', '178', 'Trinity Palmetto Point', 'TPP', '1');
INSERT INTO `dg_states` VALUES ('2835', '179', 'Anse-la-Raye', 'AR', '1');
INSERT INTO `dg_states` VALUES ('2836', '179', 'Castries', 'CA', '1');
INSERT INTO `dg_states` VALUES ('2837', '179', 'Choiseul', 'CH', '1');
INSERT INTO `dg_states` VALUES ('2838', '179', 'Dauphin', 'DA', '1');
INSERT INTO `dg_states` VALUES ('2839', '179', 'Dennery', 'DE', '1');
INSERT INTO `dg_states` VALUES ('2840', '179', 'Gros-Islet', 'GI', '1');
INSERT INTO `dg_states` VALUES ('2841', '179', 'Laborie', 'LA', '1');
INSERT INTO `dg_states` VALUES ('2842', '179', 'Micoud', 'MI', '1');
INSERT INTO `dg_states` VALUES ('2843', '179', 'Praslin', 'PR', '1');
INSERT INTO `dg_states` VALUES ('2844', '179', 'Soufriere', 'SO', '1');
INSERT INTO `dg_states` VALUES ('2845', '179', 'Vieux-Fort', 'VF', '1');
INSERT INTO `dg_states` VALUES ('2846', '180', 'Charlotte', 'C', '1');
INSERT INTO `dg_states` VALUES ('2847', '180', 'Grenadines', 'R', '1');
INSERT INTO `dg_states` VALUES ('2848', '180', 'Saint Andrew', 'A', '1');
INSERT INTO `dg_states` VALUES ('2849', '180', 'Saint David', 'D', '1');
INSERT INTO `dg_states` VALUES ('2850', '180', 'Saint George', 'G', '1');
INSERT INTO `dg_states` VALUES ('2851', '180', 'Saint Patrick', 'P', '1');
INSERT INTO `dg_states` VALUES ('2852', '181', 'A\'ana', 'AN', '1');
INSERT INTO `dg_states` VALUES ('2853', '181', 'Aiga-i-le-Tai', 'AI', '1');
INSERT INTO `dg_states` VALUES ('2854', '181', 'Atua', 'AT', '1');
INSERT INTO `dg_states` VALUES ('2855', '181', 'Fa\'asaleleaga', 'FA', '1');
INSERT INTO `dg_states` VALUES ('2856', '181', 'Gaga\'emauga', 'GE', '1');
INSERT INTO `dg_states` VALUES ('2857', '181', 'Gagaifomauga', 'GF', '1');
INSERT INTO `dg_states` VALUES ('2858', '181', 'Palauli', 'PA', '1');
INSERT INTO `dg_states` VALUES ('2859', '181', 'Satupa\'itea', 'SA', '1');
INSERT INTO `dg_states` VALUES ('2860', '181', 'Tuamasaga', 'TU', '1');
INSERT INTO `dg_states` VALUES ('2861', '181', 'Va\'a-o-Fonoti', 'VF', '1');
INSERT INTO `dg_states` VALUES ('2862', '181', 'Vaisigano', 'VS', '1');
INSERT INTO `dg_states` VALUES ('2863', '182', 'Acquaviva', 'AC', '1');
INSERT INTO `dg_states` VALUES ('2864', '182', 'Borgo Maggiore', 'BM', '1');
INSERT INTO `dg_states` VALUES ('2865', '182', 'Chiesanuova', 'CH', '1');
INSERT INTO `dg_states` VALUES ('2866', '182', 'Domagnano', 'DO', '1');
INSERT INTO `dg_states` VALUES ('2867', '182', 'Faetano', 'FA', '1');
INSERT INTO `dg_states` VALUES ('2868', '182', 'Fiorentino', 'FI', '1');
INSERT INTO `dg_states` VALUES ('2869', '182', 'Montegiardino', 'MO', '1');
INSERT INTO `dg_states` VALUES ('2870', '182', 'Citta di San Marino', 'SM', '1');
INSERT INTO `dg_states` VALUES ('2871', '182', 'Serravalle', 'SE', '1');
INSERT INTO `dg_states` VALUES ('2872', '183', 'Sao Tome', 'S', '1');
INSERT INTO `dg_states` VALUES ('2873', '183', 'Principe', 'P', '1');
INSERT INTO `dg_states` VALUES ('2874', '184', 'Al Bahah', 'BH', '1');
INSERT INTO `dg_states` VALUES ('2875', '184', 'Al Hudud ash Shamaliyah', 'HS', '1');
INSERT INTO `dg_states` VALUES ('2876', '184', 'Al Jawf', 'JF', '1');
INSERT INTO `dg_states` VALUES ('2877', '184', 'Al Madinah', 'MD', '1');
INSERT INTO `dg_states` VALUES ('2878', '184', 'Al Qasim', 'QS', '1');
INSERT INTO `dg_states` VALUES ('2879', '184', 'Ar Riyad', 'RD', '1');
INSERT INTO `dg_states` VALUES ('2880', '184', 'Ash Sharqiyah (Eastern)', 'AQ', '1');
INSERT INTO `dg_states` VALUES ('2881', '184', '\'Asir', 'AS', '1');
INSERT INTO `dg_states` VALUES ('2882', '184', 'Ha\'il', 'HL', '1');
INSERT INTO `dg_states` VALUES ('2883', '184', 'Jizan', 'JZ', '1');
INSERT INTO `dg_states` VALUES ('2884', '184', 'Makkah', 'ML', '1');
INSERT INTO `dg_states` VALUES ('2885', '184', 'Najran', 'NR', '1');
INSERT INTO `dg_states` VALUES ('2886', '184', 'Tabuk', 'TB', '1');
INSERT INTO `dg_states` VALUES ('2887', '185', 'Dakar', 'DA', '1');
INSERT INTO `dg_states` VALUES ('2888', '185', 'Diourbel', 'DI', '1');
INSERT INTO `dg_states` VALUES ('2889', '185', 'Fatick', 'FA', '1');
INSERT INTO `dg_states` VALUES ('2890', '185', 'Kaolack', 'KA', '1');
INSERT INTO `dg_states` VALUES ('2891', '185', 'Kolda', 'KO', '1');
INSERT INTO `dg_states` VALUES ('2892', '185', 'Louga', 'LO', '1');
INSERT INTO `dg_states` VALUES ('2893', '185', 'Matam', 'MA', '1');
INSERT INTO `dg_states` VALUES ('2894', '185', 'Saint-Louis', 'SL', '1');
INSERT INTO `dg_states` VALUES ('2895', '185', 'Tambacounda', 'TA', '1');
INSERT INTO `dg_states` VALUES ('2896', '185', 'Thies', 'TH', '1');
INSERT INTO `dg_states` VALUES ('2897', '185', 'Ziguinchor', 'ZI', '1');
INSERT INTO `dg_states` VALUES ('2898', '186', 'Anse aux Pins', 'AP', '1');
INSERT INTO `dg_states` VALUES ('2899', '186', 'Anse Boileau', 'AB', '1');
INSERT INTO `dg_states` VALUES ('2900', '186', 'Anse Etoile', 'AE', '1');
INSERT INTO `dg_states` VALUES ('2901', '186', 'Anse Louis', 'AL', '1');
INSERT INTO `dg_states` VALUES ('2902', '186', 'Anse Royale', 'AR', '1');
INSERT INTO `dg_states` VALUES ('2903', '186', 'Baie Lazare', 'BL', '1');
INSERT INTO `dg_states` VALUES ('2904', '186', 'Baie Sainte Anne', 'BS', '1');
INSERT INTO `dg_states` VALUES ('2905', '186', 'Beau Vallon', 'BV', '1');
INSERT INTO `dg_states` VALUES ('2906', '186', 'Bel Air', 'BA', '1');
INSERT INTO `dg_states` VALUES ('2907', '186', 'Bel Ombre', 'BO', '1');
INSERT INTO `dg_states` VALUES ('2908', '186', 'Cascade', 'CA', '1');
INSERT INTO `dg_states` VALUES ('2909', '186', 'Glacis', 'GL', '1');
INSERT INTO `dg_states` VALUES ('2910', '186', 'Grand\' Anse (on Mahe)', 'GM', '1');
INSERT INTO `dg_states` VALUES ('2911', '186', 'Grand\' Anse (on Praslin)', 'GP', '1');
INSERT INTO `dg_states` VALUES ('2912', '186', 'La Digue', 'DG', '1');
INSERT INTO `dg_states` VALUES ('2913', '186', 'La Riviere Anglaise', 'RA', '1');
INSERT INTO `dg_states` VALUES ('2914', '186', 'Mont Buxton', 'MB', '1');
INSERT INTO `dg_states` VALUES ('2915', '186', 'Mont Fleuri', 'MF', '1');
INSERT INTO `dg_states` VALUES ('2916', '186', 'Plaisance', 'PL', '1');
INSERT INTO `dg_states` VALUES ('2917', '186', 'Pointe La Rue', 'PR', '1');
INSERT INTO `dg_states` VALUES ('2918', '186', 'Port Glaud', 'PG', '1');
INSERT INTO `dg_states` VALUES ('2919', '186', 'Saint Louis', 'SL', '1');
INSERT INTO `dg_states` VALUES ('2920', '186', 'Takamaka', 'TA', '1');
INSERT INTO `dg_states` VALUES ('2921', '187', 'Eastern', 'E', '1');
INSERT INTO `dg_states` VALUES ('2922', '187', 'Northern', 'N', '1');
INSERT INTO `dg_states` VALUES ('2923', '187', 'Southern', 'S', '1');
INSERT INTO `dg_states` VALUES ('2924', '187', 'Western', 'W', '1');
INSERT INTO `dg_states` VALUES ('2925', '189', 'BanskobystrickÃƒÂ½', 'BA', '1');
INSERT INTO `dg_states` VALUES ('2926', '189', 'BratislavskÃƒÂ½', 'BR', '1');
INSERT INTO `dg_states` VALUES ('2927', '189', 'KoÃ…Â¡ickÃƒÂ½', 'KO', '1');
INSERT INTO `dg_states` VALUES ('2928', '189', 'Nitriansky', 'NI', '1');
INSERT INTO `dg_states` VALUES ('2929', '189', 'PreÃ…Â¡ovskÃƒÂ½', 'PR', '1');
INSERT INTO `dg_states` VALUES ('2930', '189', 'TrenÃ„Âiansky', 'TC', '1');
INSERT INTO `dg_states` VALUES ('2931', '189', 'TrnavskÃƒÂ½', 'TV', '1');
INSERT INTO `dg_states` VALUES ('2932', '189', 'Ã…Â½ilinskÃƒÂ½', 'ZI', '1');
INSERT INTO `dg_states` VALUES ('2933', '191', 'Central', 'CE', '1');
INSERT INTO `dg_states` VALUES ('2934', '191', 'Choiseul', 'CH', '1');
INSERT INTO `dg_states` VALUES ('2935', '191', 'Guadalcanal', 'GC', '1');
INSERT INTO `dg_states` VALUES ('2936', '191', 'Honiara', 'HO', '1');
INSERT INTO `dg_states` VALUES ('2937', '191', 'Isabel', 'IS', '1');
INSERT INTO `dg_states` VALUES ('2938', '191', 'Makira', 'MK', '1');
INSERT INTO `dg_states` VALUES ('2939', '191', 'Malaita', 'ML', '1');
INSERT INTO `dg_states` VALUES ('2940', '191', 'Rennell and Bellona', 'RB', '1');
INSERT INTO `dg_states` VALUES ('2941', '191', 'Temotu', 'TM', '1');
INSERT INTO `dg_states` VALUES ('2942', '191', 'Western', 'WE', '1');
INSERT INTO `dg_states` VALUES ('2943', '192', 'Awdal', 'AW', '1');
INSERT INTO `dg_states` VALUES ('2944', '192', 'Bakool', 'BK', '1');
INSERT INTO `dg_states` VALUES ('2945', '192', 'Banaadir', 'BN', '1');
INSERT INTO `dg_states` VALUES ('2946', '192', 'Bari', 'BR', '1');
INSERT INTO `dg_states` VALUES ('2947', '192', 'Bay', 'BY', '1');
INSERT INTO `dg_states` VALUES ('2948', '192', 'Galguduud', 'GA', '1');
INSERT INTO `dg_states` VALUES ('2949', '192', 'Gedo', 'GE', '1');
INSERT INTO `dg_states` VALUES ('2950', '192', 'Hiiraan', 'HI', '1');
INSERT INTO `dg_states` VALUES ('2951', '192', 'Jubbada Dhexe', 'JD', '1');
INSERT INTO `dg_states` VALUES ('2952', '192', 'Jubbada Hoose', 'JH', '1');
INSERT INTO `dg_states` VALUES ('2953', '192', 'Mudug', 'MU', '1');
INSERT INTO `dg_states` VALUES ('2954', '192', 'Nugaal', 'NU', '1');
INSERT INTO `dg_states` VALUES ('2955', '192', 'Sanaag', 'SA', '1');
INSERT INTO `dg_states` VALUES ('2956', '192', 'Shabeellaha Dhexe', 'SD', '1');
INSERT INTO `dg_states` VALUES ('2957', '192', 'Shabeellaha Hoose', 'SH', '1');
INSERT INTO `dg_states` VALUES ('2958', '192', 'Sool', 'SL', '1');
INSERT INTO `dg_states` VALUES ('2959', '192', 'Togdheer', 'TO', '1');
INSERT INTO `dg_states` VALUES ('2960', '192', 'Woqooyi Galbeed', 'WG', '1');
INSERT INTO `dg_states` VALUES ('2961', '193', 'Eastern Cape', 'EC', '1');
INSERT INTO `dg_states` VALUES ('2962', '193', 'Free State', 'FS', '1');
INSERT INTO `dg_states` VALUES ('2963', '193', 'Gauteng', 'GT', '1');
INSERT INTO `dg_states` VALUES ('2964', '193', 'KwaZulu-Natal', 'KN', '1');
INSERT INTO `dg_states` VALUES ('2965', '193', 'Limpopo', 'LP', '1');
INSERT INTO `dg_states` VALUES ('2966', '193', 'Mpumalanga', 'MP', '1');
INSERT INTO `dg_states` VALUES ('2967', '193', 'North West', 'NW', '1');
INSERT INTO `dg_states` VALUES ('2968', '193', 'Northern Cape', 'NC', '1');
INSERT INTO `dg_states` VALUES ('2969', '193', 'Western Cape', 'WC', '1');
INSERT INTO `dg_states` VALUES ('2970', '195', 'La Coru&ntilde;a', 'CA', '1');
INSERT INTO `dg_states` VALUES ('2971', '195', '&Aacute;lava', 'AL', '1');
INSERT INTO `dg_states` VALUES ('2972', '195', 'Albacete', 'AB', '1');
INSERT INTO `dg_states` VALUES ('2973', '195', 'Alicante', 'AC', '1');
INSERT INTO `dg_states` VALUES ('2974', '195', 'Almeria', 'AM', '1');
INSERT INTO `dg_states` VALUES ('2975', '195', 'Asturias', 'AS', '1');
INSERT INTO `dg_states` VALUES ('2976', '195', '&Aacute;vila', 'AV', '1');
INSERT INTO `dg_states` VALUES ('2977', '195', 'Badajoz', 'BJ', '1');
INSERT INTO `dg_states` VALUES ('2978', '195', 'Baleares', 'IB', '1');
INSERT INTO `dg_states` VALUES ('2979', '195', 'Barcelona', 'BA', '1');
INSERT INTO `dg_states` VALUES ('2980', '195', 'Burgos', 'BU', '1');
INSERT INTO `dg_states` VALUES ('2981', '195', 'C&aacute;ceres', 'CC', '1');
INSERT INTO `dg_states` VALUES ('2982', '195', 'C&aacute;diz', 'CZ', '1');
INSERT INTO `dg_states` VALUES ('2983', '195', 'Cantabria', 'CT', '1');
INSERT INTO `dg_states` VALUES ('2984', '195', 'Castell&oacute;n', 'CL', '1');
INSERT INTO `dg_states` VALUES ('2985', '195', 'Ceuta', 'CE', '1');
INSERT INTO `dg_states` VALUES ('2986', '195', 'Ciudad Real', 'CR', '1');
INSERT INTO `dg_states` VALUES ('2987', '195', 'C&oacute;rdoba', 'CD', '1');
INSERT INTO `dg_states` VALUES ('2988', '195', 'Cuenca', 'CU', '1');
INSERT INTO `dg_states` VALUES ('2989', '195', 'Girona', 'GI', '1');
INSERT INTO `dg_states` VALUES ('2990', '195', 'Granada', 'GD', '1');
INSERT INTO `dg_states` VALUES ('2991', '195', 'Guadalajara', 'GJ', '1');
INSERT INTO `dg_states` VALUES ('2992', '195', 'Guip&uacute;zcoa', 'GP', '1');
INSERT INTO `dg_states` VALUES ('2993', '195', 'Huelva', 'HL', '1');
INSERT INTO `dg_states` VALUES ('2994', '195', 'Huesca', 'HS', '1');
INSERT INTO `dg_states` VALUES ('2995', '195', 'Ja&eacute;n', 'JN', '1');
INSERT INTO `dg_states` VALUES ('2996', '195', 'La Rioja', 'RJ', '1');
INSERT INTO `dg_states` VALUES ('2997', '195', 'Las Palmas', 'PM', '1');
INSERT INTO `dg_states` VALUES ('2998', '195', 'Leon', 'LE', '1');
INSERT INTO `dg_states` VALUES ('2999', '195', 'Lleida', 'LL', '1');
INSERT INTO `dg_states` VALUES ('3000', '195', 'Lugo', 'LG', '1');
INSERT INTO `dg_states` VALUES ('3001', '195', 'Madrid', 'MD', '1');
INSERT INTO `dg_states` VALUES ('3002', '195', 'Malaga', 'MA', '1');
INSERT INTO `dg_states` VALUES ('3003', '195', 'Melilla', 'ML', '1');
INSERT INTO `dg_states` VALUES ('3004', '195', 'Murcia', 'MU', '1');
INSERT INTO `dg_states` VALUES ('3005', '195', 'Navarra', 'NV', '1');
INSERT INTO `dg_states` VALUES ('3006', '195', 'Ourense', 'OU', '1');
INSERT INTO `dg_states` VALUES ('3007', '195', 'Palencia', 'PL', '1');
INSERT INTO `dg_states` VALUES ('3008', '195', 'Pontevedra', 'PO', '1');
INSERT INTO `dg_states` VALUES ('3009', '195', 'Salamanca', 'SL', '1');
INSERT INTO `dg_states` VALUES ('3010', '195', 'Santa Cruz de Tenerife', 'SC', '1');
INSERT INTO `dg_states` VALUES ('3011', '195', 'Segovia', 'SG', '1');
INSERT INTO `dg_states` VALUES ('3012', '195', 'Sevilla', 'SV', '1');
INSERT INTO `dg_states` VALUES ('3013', '195', 'Soria', 'SO', '1');
INSERT INTO `dg_states` VALUES ('3014', '195', 'Tarragona', 'TA', '1');
INSERT INTO `dg_states` VALUES ('3015', '195', 'Teruel', 'TE', '1');
INSERT INTO `dg_states` VALUES ('3016', '195', 'Toledo', 'TO', '1');
INSERT INTO `dg_states` VALUES ('3017', '195', 'Valencia', 'VC', '1');
INSERT INTO `dg_states` VALUES ('3018', '195', 'Valladolid', 'VD', '1');
INSERT INTO `dg_states` VALUES ('3019', '195', 'Vizcaya', 'VZ', '1');
INSERT INTO `dg_states` VALUES ('3020', '195', 'Zamora', 'ZM', '1');
INSERT INTO `dg_states` VALUES ('3021', '195', 'Zaragoza', 'ZR', '1');
INSERT INTO `dg_states` VALUES ('3022', '196', 'Central', 'CE', '1');
INSERT INTO `dg_states` VALUES ('3023', '196', 'Eastern', 'EA', '1');
INSERT INTO `dg_states` VALUES ('3024', '196', 'North Central', 'NC', '1');
INSERT INTO `dg_states` VALUES ('3025', '196', 'Northern', 'NO', '1');
INSERT INTO `dg_states` VALUES ('3026', '196', 'North Western', 'NW', '1');
INSERT INTO `dg_states` VALUES ('3027', '196', 'Sabaragamuwa', 'SA', '1');
INSERT INTO `dg_states` VALUES ('3028', '196', 'Southern', 'SO', '1');
INSERT INTO `dg_states` VALUES ('3029', '196', 'Uva', 'UV', '1');
INSERT INTO `dg_states` VALUES ('3030', '196', 'Western', 'WE', '1');
INSERT INTO `dg_states` VALUES ('3031', '197', 'Ascension', 'A', '1');
INSERT INTO `dg_states` VALUES ('3032', '197', 'Saint Helena', 'S', '1');
INSERT INTO `dg_states` VALUES ('3033', '197', 'Tristan da Cunha', 'T', '1');
INSERT INTO `dg_states` VALUES ('3034', '199', 'A\'ali an Nil', 'ANL', '1');
INSERT INTO `dg_states` VALUES ('3035', '199', 'Al Bahr al Ahmar', 'BAM', '1');
INSERT INTO `dg_states` VALUES ('3036', '199', 'Al Buhayrat', 'BRT', '1');
INSERT INTO `dg_states` VALUES ('3037', '199', 'Al Jazirah', 'JZR', '1');
INSERT INTO `dg_states` VALUES ('3038', '199', 'Al Khartum', 'KRT', '1');
INSERT INTO `dg_states` VALUES ('3039', '199', 'Al Qadarif', 'QDR', '1');
INSERT INTO `dg_states` VALUES ('3040', '199', 'Al Wahdah', 'WDH', '1');
INSERT INTO `dg_states` VALUES ('3041', '199', 'An Nil al Abyad', 'ANB', '1');
INSERT INTO `dg_states` VALUES ('3042', '199', 'An Nil al Azraq', 'ANZ', '1');
INSERT INTO `dg_states` VALUES ('3043', '199', 'Ash Shamaliyah', 'ASH', '1');
INSERT INTO `dg_states` VALUES ('3044', '199', 'Bahr al Jabal', 'BJA', '1');
INSERT INTO `dg_states` VALUES ('3045', '199', 'Gharb al Istiwa\'iyah', 'GIS', '1');
INSERT INTO `dg_states` VALUES ('3046', '199', 'Gharb Bahr al Ghazal', 'GBG', '1');
INSERT INTO `dg_states` VALUES ('3047', '199', 'Gharb Darfur', 'GDA', '1');
INSERT INTO `dg_states` VALUES ('3048', '199', 'Gharb Kurdufan', 'GKU', '1');
INSERT INTO `dg_states` VALUES ('3049', '199', 'Janub Darfur', 'JDA', '1');
INSERT INTO `dg_states` VALUES ('3050', '199', 'Janub Kurdufan', 'JKU', '1');
INSERT INTO `dg_states` VALUES ('3051', '199', 'Junqali', 'JQL', '1');
INSERT INTO `dg_states` VALUES ('3052', '199', 'Kassala', 'KSL', '1');
INSERT INTO `dg_states` VALUES ('3053', '199', 'Nahr an Nil', 'NNL', '1');
INSERT INTO `dg_states` VALUES ('3054', '199', 'Shamal Bahr al Ghazal', 'SBG', '1');
INSERT INTO `dg_states` VALUES ('3055', '199', 'Shamal Darfur', 'SDA', '1');
INSERT INTO `dg_states` VALUES ('3056', '199', 'Shamal Kurdufan', 'SKU', '1');
INSERT INTO `dg_states` VALUES ('3057', '199', 'Sharq al Istiwa\'iyah', 'SIS', '1');
INSERT INTO `dg_states` VALUES ('3058', '199', 'Sinnar', 'SNR', '1');
INSERT INTO `dg_states` VALUES ('3059', '199', 'Warab', 'WRB', '1');
INSERT INTO `dg_states` VALUES ('3060', '200', 'Brokopondo', 'BR', '1');
INSERT INTO `dg_states` VALUES ('3061', '200', 'Commewijne', 'CM', '1');
INSERT INTO `dg_states` VALUES ('3062', '200', 'Coronie', 'CR', '1');
INSERT INTO `dg_states` VALUES ('3063', '200', 'Marowijne', 'MA', '1');
INSERT INTO `dg_states` VALUES ('3064', '200', 'Nickerie', 'NI', '1');
INSERT INTO `dg_states` VALUES ('3065', '200', 'Para', 'PA', '1');
INSERT INTO `dg_states` VALUES ('3066', '200', 'Paramaribo', 'PM', '1');
INSERT INTO `dg_states` VALUES ('3067', '200', 'Saramacca', 'SA', '1');
INSERT INTO `dg_states` VALUES ('3068', '200', 'Sipaliwini', 'SI', '1');
INSERT INTO `dg_states` VALUES ('3069', '200', 'Wanica', 'WA', '1');
INSERT INTO `dg_states` VALUES ('3070', '202', 'Hhohho', 'H', '1');
INSERT INTO `dg_states` VALUES ('3071', '202', 'Lubombo', 'L', '1');
INSERT INTO `dg_states` VALUES ('3072', '202', 'Manzini', 'M', '1');
INSERT INTO `dg_states` VALUES ('3073', '202', 'Shishelweni', 'S', '1');
INSERT INTO `dg_states` VALUES ('3074', '203', 'Blekinge', 'K', '1');
INSERT INTO `dg_states` VALUES ('3075', '203', 'Dalarna', 'W', '1');
INSERT INTO `dg_states` VALUES ('3076', '203', 'G&auml;vleborg', 'X', '1');
INSERT INTO `dg_states` VALUES ('3077', '203', 'Gotland', 'I', '1');
INSERT INTO `dg_states` VALUES ('3078', '203', 'Halland', 'N', '1');
INSERT INTO `dg_states` VALUES ('3079', '203', 'J&auml;mtland', 'Z', '1');
INSERT INTO `dg_states` VALUES ('3080', '203', 'J&ouml;nk&ouml;ping', 'F', '1');
INSERT INTO `dg_states` VALUES ('3081', '203', 'Kalmar', 'H', '1');
INSERT INTO `dg_states` VALUES ('3082', '203', 'Kronoberg', 'G', '1');
INSERT INTO `dg_states` VALUES ('3083', '203', 'Norrbotten', 'BD', '1');
INSERT INTO `dg_states` VALUES ('3084', '203', '&Ouml;rebro', 'T', '1');
INSERT INTO `dg_states` VALUES ('3085', '203', '&Ouml;sterg&ouml;tland', 'E', '1');
INSERT INTO `dg_states` VALUES ('3086', '203', 'Sk&aring;ne', 'M', '1');
INSERT INTO `dg_states` VALUES ('3087', '203', 'S&ouml;dermanland', 'D', '1');
INSERT INTO `dg_states` VALUES ('3088', '203', 'Stockholm', 'AB', '1');
INSERT INTO `dg_states` VALUES ('3089', '203', 'Uppsala', 'C', '1');
INSERT INTO `dg_states` VALUES ('3090', '203', 'V&auml;rmland', 'S', '1');
INSERT INTO `dg_states` VALUES ('3091', '203', 'V&auml;sterbotten', 'AC', '1');
INSERT INTO `dg_states` VALUES ('3092', '203', 'V&auml;sternorrland', 'Y', '1');
INSERT INTO `dg_states` VALUES ('3093', '203', 'V&auml;stmanland', 'U', '1');
INSERT INTO `dg_states` VALUES ('3094', '203', 'V&auml;stra G&ouml;taland', 'O', '1');
INSERT INTO `dg_states` VALUES ('3095', '204', 'Aargau', 'AG', '1');
INSERT INTO `dg_states` VALUES ('3096', '204', 'Appenzell Ausserrhoden', 'AR', '1');
INSERT INTO `dg_states` VALUES ('3097', '204', 'Appenzell Innerrhoden', 'AI', '1');
INSERT INTO `dg_states` VALUES ('3098', '204', 'Basel-Stadt', 'BS', '1');
INSERT INTO `dg_states` VALUES ('3099', '204', 'Basel-Landschaft', 'BL', '1');
INSERT INTO `dg_states` VALUES ('3100', '204', 'Bern', 'BE', '1');
INSERT INTO `dg_states` VALUES ('3101', '204', 'Fribourg', 'FR', '1');
INSERT INTO `dg_states` VALUES ('3102', '204', 'Gen&egrave;ve', 'GE', '1');
INSERT INTO `dg_states` VALUES ('3103', '204', 'Glarus', 'GL', '1');
INSERT INTO `dg_states` VALUES ('3104', '204', 'Graub&uuml;nden', 'GR', '1');
INSERT INTO `dg_states` VALUES ('3105', '204', 'Jura', 'JU', '1');
INSERT INTO `dg_states` VALUES ('3106', '204', 'Luzern', 'LU', '1');
INSERT INTO `dg_states` VALUES ('3107', '204', 'Neuch&acirc;tel', 'NE', '1');
INSERT INTO `dg_states` VALUES ('3108', '204', 'Nidwald', 'NW', '1');
INSERT INTO `dg_states` VALUES ('3109', '204', 'Obwald', 'OW', '1');
INSERT INTO `dg_states` VALUES ('3110', '204', 'St. Gallen', 'SG', '1');
INSERT INTO `dg_states` VALUES ('3111', '204', 'Schaffhausen', 'SH', '1');
INSERT INTO `dg_states` VALUES ('3112', '204', 'Schwyz', 'SZ', '1');
INSERT INTO `dg_states` VALUES ('3113', '204', 'Solothurn', 'SO', '1');
INSERT INTO `dg_states` VALUES ('3114', '204', 'Thurgau', 'TG', '1');
INSERT INTO `dg_states` VALUES ('3115', '204', 'Ticino', 'TI', '1');
INSERT INTO `dg_states` VALUES ('3116', '204', 'Uri', 'UR', '1');
INSERT INTO `dg_states` VALUES ('3117', '204', 'Valais', 'VS', '1');
INSERT INTO `dg_states` VALUES ('3118', '204', 'Vaud', 'VD', '1');
INSERT INTO `dg_states` VALUES ('3119', '204', 'Zug', 'ZG', '1');
INSERT INTO `dg_states` VALUES ('3120', '204', 'Z&uuml;rich', 'ZH', '1');
INSERT INTO `dg_states` VALUES ('3121', '205', 'Al Hasakah', 'HA', '1');
INSERT INTO `dg_states` VALUES ('3122', '205', 'Al Ladhiqiyah', 'LA', '1');
INSERT INTO `dg_states` VALUES ('3123', '205', 'Al Qunaytirah', 'QU', '1');
INSERT INTO `dg_states` VALUES ('3124', '205', 'Ar Raqqah', 'RQ', '1');
INSERT INTO `dg_states` VALUES ('3125', '205', 'As Suwayda', 'SU', '1');
INSERT INTO `dg_states` VALUES ('3126', '205', 'Dara', 'DA', '1');
INSERT INTO `dg_states` VALUES ('3127', '205', 'Dayr az Zawr', 'DZ', '1');
INSERT INTO `dg_states` VALUES ('3128', '205', 'Dimashq', 'DI', '1');
INSERT INTO `dg_states` VALUES ('3129', '205', 'Halab', 'HL', '1');
INSERT INTO `dg_states` VALUES ('3130', '205', 'Hamah', 'HM', '1');
INSERT INTO `dg_states` VALUES ('3131', '205', 'Hims', 'HI', '1');
INSERT INTO `dg_states` VALUES ('3132', '205', 'Idlib', 'ID', '1');
INSERT INTO `dg_states` VALUES ('3133', '205', 'Rif Dimashq', 'RD', '1');
INSERT INTO `dg_states` VALUES ('3134', '205', 'Tartus', 'TA', '1');
INSERT INTO `dg_states` VALUES ('3135', '206', 'Chang-hua', 'CH', '1');
INSERT INTO `dg_states` VALUES ('3136', '206', 'Chia-i', 'CI', '1');
INSERT INTO `dg_states` VALUES ('3137', '206', 'Hsin-chu', 'HS', '1');
INSERT INTO `dg_states` VALUES ('3138', '206', 'Hua-lien', 'HL', '1');
INSERT INTO `dg_states` VALUES ('3139', '206', 'I-lan', 'IL', '1');
INSERT INTO `dg_states` VALUES ('3140', '206', 'Kao-hsiung county', 'KH', '1');
INSERT INTO `dg_states` VALUES ('3141', '206', 'Kin-men', 'KM', '1');
INSERT INTO `dg_states` VALUES ('3142', '206', 'Lien-chiang', 'LC', '1');
INSERT INTO `dg_states` VALUES ('3143', '206', 'Miao-li', 'ML', '1');
INSERT INTO `dg_states` VALUES ('3144', '206', 'Nan-t\'ou', 'NT', '1');
INSERT INTO `dg_states` VALUES ('3145', '206', 'P\'eng-hu', 'PH', '1');
INSERT INTO `dg_states` VALUES ('3146', '206', 'P\'ing-tung', 'PT', '1');
INSERT INTO `dg_states` VALUES ('3147', '206', 'T\'ai-chung', 'TG', '1');
INSERT INTO `dg_states` VALUES ('3148', '206', 'T\'ai-nan', 'TA', '1');
INSERT INTO `dg_states` VALUES ('3149', '206', 'T\'ai-pei county', 'TP', '1');
INSERT INTO `dg_states` VALUES ('3150', '206', 'T\'ai-tung', 'TT', '1');
INSERT INTO `dg_states` VALUES ('3151', '206', 'T\'ao-yuan', 'TY', '1');
INSERT INTO `dg_states` VALUES ('3152', '206', 'Yun-lin', 'YL', '1');
INSERT INTO `dg_states` VALUES ('3153', '206', 'Chia-i city', 'CC', '1');
INSERT INTO `dg_states` VALUES ('3154', '206', 'Chi-lung', 'CL', '1');
INSERT INTO `dg_states` VALUES ('3155', '206', 'Hsin-chu', 'HC', '1');
INSERT INTO `dg_states` VALUES ('3156', '206', 'T\'ai-chung', 'TH', '1');
INSERT INTO `dg_states` VALUES ('3157', '206', 'T\'ai-nan', 'TN', '1');
INSERT INTO `dg_states` VALUES ('3158', '206', 'Kao-hsiung city', 'KC', '1');
INSERT INTO `dg_states` VALUES ('3159', '206', 'T\'ai-pei city', 'TC', '1');
INSERT INTO `dg_states` VALUES ('3160', '207', 'Gorno-Badakhstan', 'GB', '1');
INSERT INTO `dg_states` VALUES ('3161', '207', 'Khatlon', 'KT', '1');
INSERT INTO `dg_states` VALUES ('3162', '207', 'Sughd', 'SU', '1');
INSERT INTO `dg_states` VALUES ('3163', '208', 'Arusha', 'AR', '1');
INSERT INTO `dg_states` VALUES ('3164', '208', 'Dar es Salaam', 'DS', '1');
INSERT INTO `dg_states` VALUES ('3165', '208', 'Dodoma', 'DO', '1');
INSERT INTO `dg_states` VALUES ('3166', '208', 'Iringa', 'IR', '1');
INSERT INTO `dg_states` VALUES ('3167', '208', 'Kagera', 'KA', '1');
INSERT INTO `dg_states` VALUES ('3168', '208', 'Kigoma', 'KI', '1');
INSERT INTO `dg_states` VALUES ('3169', '208', 'Kilimanjaro', 'KJ', '1');
INSERT INTO `dg_states` VALUES ('3170', '208', 'Lindi', 'LN', '1');
INSERT INTO `dg_states` VALUES ('3171', '208', 'Manyara', 'MY', '1');
INSERT INTO `dg_states` VALUES ('3172', '208', 'Mara', 'MR', '1');
INSERT INTO `dg_states` VALUES ('3173', '208', 'Mbeya', 'MB', '1');
INSERT INTO `dg_states` VALUES ('3174', '208', 'Morogoro', 'MO', '1');
INSERT INTO `dg_states` VALUES ('3175', '208', 'Mtwara', 'MT', '1');
INSERT INTO `dg_states` VALUES ('3176', '208', 'Mwanza', 'MW', '1');
INSERT INTO `dg_states` VALUES ('3177', '208', 'Pemba North', 'PN', '1');
INSERT INTO `dg_states` VALUES ('3178', '208', 'Pemba South', 'PS', '1');
INSERT INTO `dg_states` VALUES ('3179', '208', 'Pwani', 'PW', '1');
INSERT INTO `dg_states` VALUES ('3180', '208', 'Rukwa', 'RK', '1');
INSERT INTO `dg_states` VALUES ('3181', '208', 'Ruvuma', 'RV', '1');
INSERT INTO `dg_states` VALUES ('3182', '208', 'Shinyanga', 'SH', '1');
INSERT INTO `dg_states` VALUES ('3183', '208', 'Singida', 'SI', '1');
INSERT INTO `dg_states` VALUES ('3184', '208', 'Tabora', 'TB', '1');
INSERT INTO `dg_states` VALUES ('3185', '208', 'Tanga', 'TN', '1');
INSERT INTO `dg_states` VALUES ('3186', '208', 'Zanzibar Central/South', 'ZC', '1');
INSERT INTO `dg_states` VALUES ('3187', '208', 'Zanzibar North', 'ZN', '1');
INSERT INTO `dg_states` VALUES ('3188', '208', 'Zanzibar Urban/West', 'ZU', '1');
INSERT INTO `dg_states` VALUES ('3189', '209', 'Amnat Charoen', 'Amnat Charoen', '1');
INSERT INTO `dg_states` VALUES ('3190', '209', 'Ang Thong', 'Ang Thong', '1');
INSERT INTO `dg_states` VALUES ('3191', '209', 'Ayutthaya', 'Ayutthaya', '1');
INSERT INTO `dg_states` VALUES ('3192', '209', 'Bangkok', 'Bangkok', '1');
INSERT INTO `dg_states` VALUES ('3193', '209', 'Buriram', 'Buriram', '1');
INSERT INTO `dg_states` VALUES ('3194', '209', 'Chachoengsao', 'Chachoengsao', '1');
INSERT INTO `dg_states` VALUES ('3195', '209', 'Chai Nat', 'Chai Nat', '1');
INSERT INTO `dg_states` VALUES ('3196', '209', 'Chaiyaphum', 'Chaiyaphum', '1');
INSERT INTO `dg_states` VALUES ('3197', '209', 'Chanthaburi', 'Chanthaburi', '1');
INSERT INTO `dg_states` VALUES ('3198', '209', 'Chiang Mai', 'Chiang Mai', '1');
INSERT INTO `dg_states` VALUES ('3199', '209', 'Chiang Rai', 'Chiang Rai', '1');
INSERT INTO `dg_states` VALUES ('3200', '209', 'Chon Buri', 'Chon Buri', '1');
INSERT INTO `dg_states` VALUES ('3201', '209', 'Chumphon', 'Chumphon', '1');
INSERT INTO `dg_states` VALUES ('3202', '209', 'Kalasin', 'Kalasin', '1');
INSERT INTO `dg_states` VALUES ('3203', '209', 'Kamphaeng Phet', 'Kamphaeng Phet', '1');
INSERT INTO `dg_states` VALUES ('3204', '209', 'Kanchanaburi', 'Kanchanaburi', '1');
INSERT INTO `dg_states` VALUES ('3205', '209', 'Khon Kaen', 'Khon Kaen', '1');
INSERT INTO `dg_states` VALUES ('3206', '209', 'Krabi', 'Krabi', '1');
INSERT INTO `dg_states` VALUES ('3207', '209', 'Lampang', 'Lampang', '1');
INSERT INTO `dg_states` VALUES ('3208', '209', 'Lamphun', 'Lamphun', '1');
INSERT INTO `dg_states` VALUES ('3209', '209', 'Loei', 'Loei', '1');
INSERT INTO `dg_states` VALUES ('3210', '209', 'Lop Buri', 'Lop Buri', '1');
INSERT INTO `dg_states` VALUES ('3211', '209', 'Mae Hong Son', 'Mae Hong Son', '1');
INSERT INTO `dg_states` VALUES ('3212', '209', 'Maha Sarakham', 'Maha Sarakham', '1');
INSERT INTO `dg_states` VALUES ('3213', '209', 'Mukdahan', 'Mukdahan', '1');
INSERT INTO `dg_states` VALUES ('3214', '209', 'Nakhon Nayok', 'Nakhon Nayok', '1');
INSERT INTO `dg_states` VALUES ('3215', '209', 'Nakhon Pathom', 'Nakhon Pathom', '1');
INSERT INTO `dg_states` VALUES ('3216', '209', 'Nakhon Phanom', 'Nakhon Phanom', '1');
INSERT INTO `dg_states` VALUES ('3217', '209', 'Nakhon Ratchasima', 'Nakhon Ratchasima', '1');
INSERT INTO `dg_states` VALUES ('3218', '209', 'Nakhon Sawan', 'Nakhon Sawan', '1');
INSERT INTO `dg_states` VALUES ('3219', '209', 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', '1');
INSERT INTO `dg_states` VALUES ('3220', '209', 'Nan', 'Nan', '1');
INSERT INTO `dg_states` VALUES ('3221', '209', 'Narathiwat', 'Narathiwat', '1');
INSERT INTO `dg_states` VALUES ('3222', '209', 'Nong Bua Lamphu', 'Nong Bua Lamphu', '1');
INSERT INTO `dg_states` VALUES ('3223', '209', 'Nong Khai', 'Nong Khai', '1');
INSERT INTO `dg_states` VALUES ('3224', '209', 'Nonthaburi', 'Nonthaburi', '1');
INSERT INTO `dg_states` VALUES ('3225', '209', 'Pathum Thani', 'Pathum Thani', '1');
INSERT INTO `dg_states` VALUES ('3226', '209', 'Pattani', 'Pattani', '1');
INSERT INTO `dg_states` VALUES ('3227', '209', 'Phangnga', 'Phangnga', '1');
INSERT INTO `dg_states` VALUES ('3228', '209', 'Phatthalung', 'Phatthalung', '1');
INSERT INTO `dg_states` VALUES ('3229', '209', 'Phayao', 'Phayao', '1');
INSERT INTO `dg_states` VALUES ('3230', '209', 'Phetchabun', 'Phetchabun', '1');
INSERT INTO `dg_states` VALUES ('3231', '209', 'Phetchaburi', 'Phetchaburi', '1');
INSERT INTO `dg_states` VALUES ('3232', '209', 'Phichit', 'Phichit', '1');
INSERT INTO `dg_states` VALUES ('3233', '209', 'Phitsanulok', 'Phitsanulok', '1');
INSERT INTO `dg_states` VALUES ('3234', '209', 'Phrae', 'Phrae', '1');
INSERT INTO `dg_states` VALUES ('3235', '209', 'Phuket', 'Phuket', '1');
INSERT INTO `dg_states` VALUES ('3236', '209', 'Prachin Buri', 'Prachin Buri', '1');
INSERT INTO `dg_states` VALUES ('3237', '209', 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', '1');
INSERT INTO `dg_states` VALUES ('3238', '209', 'Ranong', 'Ranong', '1');
INSERT INTO `dg_states` VALUES ('3239', '209', 'Ratchaburi', 'Ratchaburi', '1');
INSERT INTO `dg_states` VALUES ('3240', '209', 'Rayong', 'Rayong', '1');
INSERT INTO `dg_states` VALUES ('3241', '209', 'Roi Et', 'Roi Et', '1');
INSERT INTO `dg_states` VALUES ('3242', '209', 'Sa Kaeo', 'Sa Kaeo', '1');
INSERT INTO `dg_states` VALUES ('3243', '209', 'Sakon Nakhon', 'Sakon Nakhon', '1');
INSERT INTO `dg_states` VALUES ('3244', '209', 'Samut Prakan', 'Samut Prakan', '1');
INSERT INTO `dg_states` VALUES ('3245', '209', 'Samut Sakhon', 'Samut Sakhon', '1');
INSERT INTO `dg_states` VALUES ('3246', '209', 'Samut Songkhram', 'Samut Songkhram', '1');
INSERT INTO `dg_states` VALUES ('3247', '209', 'Sara Buri', 'Sara Buri', '1');
INSERT INTO `dg_states` VALUES ('3248', '209', 'Satun', 'Satun', '1');
INSERT INTO `dg_states` VALUES ('3249', '209', 'Sing Buri', 'Sing Buri', '1');
INSERT INTO `dg_states` VALUES ('3250', '209', 'Sisaket', 'Sisaket', '1');
INSERT INTO `dg_states` VALUES ('3251', '209', 'Songkhla', 'Songkhla', '1');
INSERT INTO `dg_states` VALUES ('3252', '209', 'Sukhothai', 'Sukhothai', '1');
INSERT INTO `dg_states` VALUES ('3253', '209', 'Suphan Buri', 'Suphan Buri', '1');
INSERT INTO `dg_states` VALUES ('3254', '209', 'Surat Thani', 'Surat Thani', '1');
INSERT INTO `dg_states` VALUES ('3255', '209', 'Surin', 'Surin', '1');
INSERT INTO `dg_states` VALUES ('3256', '209', 'Tak', 'Tak', '1');
INSERT INTO `dg_states` VALUES ('3257', '209', 'Trang', 'Trang', '1');
INSERT INTO `dg_states` VALUES ('3258', '209', 'Trat', 'Trat', '1');
INSERT INTO `dg_states` VALUES ('3259', '209', 'Ubon Ratchathani', 'Ubon Ratchathani', '1');
INSERT INTO `dg_states` VALUES ('3260', '209', 'Udon Thani', 'Udon Thani', '1');
INSERT INTO `dg_states` VALUES ('3261', '209', 'Uthai Thani', 'Uthai Thani', '1');
INSERT INTO `dg_states` VALUES ('3262', '209', 'Uttaradit', 'Uttaradit', '1');
INSERT INTO `dg_states` VALUES ('3263', '209', 'Yala', 'Yala', '1');
INSERT INTO `dg_states` VALUES ('3264', '209', 'Yasothon', 'Yasothon', '1');
INSERT INTO `dg_states` VALUES ('3265', '210', 'Kara', 'K', '1');
INSERT INTO `dg_states` VALUES ('3266', '210', 'Plateaux', 'P', '1');
INSERT INTO `dg_states` VALUES ('3267', '210', 'Savanes', 'S', '1');
INSERT INTO `dg_states` VALUES ('3268', '210', 'Centrale', 'C', '1');
INSERT INTO `dg_states` VALUES ('3269', '210', 'Maritime', 'M', '1');
INSERT INTO `dg_states` VALUES ('3270', '211', 'Atafu', 'A', '1');
INSERT INTO `dg_states` VALUES ('3271', '211', 'Fakaofo', 'F', '1');
INSERT INTO `dg_states` VALUES ('3272', '211', 'Nukunonu', 'N', '1');
INSERT INTO `dg_states` VALUES ('3273', '212', 'Ha\'apai', 'H', '1');
INSERT INTO `dg_states` VALUES ('3274', '212', 'Tongatapu', 'T', '1');
INSERT INTO `dg_states` VALUES ('3275', '212', 'Vava\'u', 'V', '1');
INSERT INTO `dg_states` VALUES ('3276', '213', 'Couva/Tabaquite/Talparo', 'CT', '1');
INSERT INTO `dg_states` VALUES ('3277', '213', 'Diego Martin', 'DM', '1');
INSERT INTO `dg_states` VALUES ('3278', '213', 'Mayaro/Rio Claro', 'MR', '1');
INSERT INTO `dg_states` VALUES ('3279', '213', 'Penal/Debe', 'PD', '1');
INSERT INTO `dg_states` VALUES ('3280', '213', 'Princes Town', 'PT', '1');
INSERT INTO `dg_states` VALUES ('3281', '213', 'Sangre Grande', 'SG', '1');
INSERT INTO `dg_states` VALUES ('3282', '213', 'San Juan/Laventille', 'SL', '1');
INSERT INTO `dg_states` VALUES ('3283', '213', 'Siparia', 'SI', '1');
INSERT INTO `dg_states` VALUES ('3284', '213', 'Tunapuna/Piarco', 'TP', '1');
INSERT INTO `dg_states` VALUES ('3285', '213', 'Port of Spain', 'PS', '1');
INSERT INTO `dg_states` VALUES ('3286', '213', 'San Fernando', 'SF', '1');
INSERT INTO `dg_states` VALUES ('3287', '213', 'Arima', 'AR', '1');
INSERT INTO `dg_states` VALUES ('3288', '213', 'Point Fortin', 'PF', '1');
INSERT INTO `dg_states` VALUES ('3289', '213', 'Chaguanas', 'CH', '1');
INSERT INTO `dg_states` VALUES ('3290', '213', 'Tobago', 'TO', '1');
INSERT INTO `dg_states` VALUES ('3291', '214', 'Ariana', 'AR', '1');
INSERT INTO `dg_states` VALUES ('3292', '214', 'Beja', 'BJ', '1');
INSERT INTO `dg_states` VALUES ('3293', '214', 'Ben Arous', 'BA', '1');
INSERT INTO `dg_states` VALUES ('3294', '214', 'Bizerte', 'BI', '1');
INSERT INTO `dg_states` VALUES ('3295', '214', 'Gabes', 'GB', '1');
INSERT INTO `dg_states` VALUES ('3296', '214', 'Gafsa', 'GF', '1');
INSERT INTO `dg_states` VALUES ('3297', '214', 'Jendouba', 'JE', '1');
INSERT INTO `dg_states` VALUES ('3298', '214', 'Kairouan', 'KR', '1');
INSERT INTO `dg_states` VALUES ('3299', '214', 'Kasserine', 'KS', '1');
INSERT INTO `dg_states` VALUES ('3300', '214', 'Kebili', 'KB', '1');
INSERT INTO `dg_states` VALUES ('3301', '214', 'Kef', 'KF', '1');
INSERT INTO `dg_states` VALUES ('3302', '214', 'Mahdia', 'MH', '1');
INSERT INTO `dg_states` VALUES ('3303', '214', 'Manouba', 'MN', '1');
INSERT INTO `dg_states` VALUES ('3304', '214', 'Medenine', 'ME', '1');
INSERT INTO `dg_states` VALUES ('3305', '214', 'Monastir', 'MO', '1');
INSERT INTO `dg_states` VALUES ('3306', '214', 'Nabeul', 'NA', '1');
INSERT INTO `dg_states` VALUES ('3307', '214', 'Sfax', 'SF', '1');
INSERT INTO `dg_states` VALUES ('3308', '214', 'Sidi', 'SD', '1');
INSERT INTO `dg_states` VALUES ('3309', '214', 'Siliana', 'SL', '1');
INSERT INTO `dg_states` VALUES ('3310', '214', 'Sousse', 'SO', '1');
INSERT INTO `dg_states` VALUES ('3311', '214', 'Tataouine', 'TA', '1');
INSERT INTO `dg_states` VALUES ('3312', '214', 'Tozeur', 'TO', '1');
INSERT INTO `dg_states` VALUES ('3313', '214', 'Tunis', 'TU', '1');
INSERT INTO `dg_states` VALUES ('3314', '214', 'Zaghouan', 'ZA', '1');
INSERT INTO `dg_states` VALUES ('3315', '215', 'Adana', 'ADA', '1');
INSERT INTO `dg_states` VALUES ('3316', '215', 'AdÃ„Â±yaman', 'ADI', '1');
INSERT INTO `dg_states` VALUES ('3317', '215', 'Afyonkarahisar', 'AFY', '1');
INSERT INTO `dg_states` VALUES ('3318', '215', 'AÃ„Å¸rÃ„Â±', 'AGR', '1');
INSERT INTO `dg_states` VALUES ('3319', '215', 'Aksaray', 'AKS', '1');
INSERT INTO `dg_states` VALUES ('3320', '215', 'Amasya', 'AMA', '1');
INSERT INTO `dg_states` VALUES ('3321', '215', 'Ankara', 'ANK', '1');
INSERT INTO `dg_states` VALUES ('3322', '215', 'Antalya', 'ANT', '1');
INSERT INTO `dg_states` VALUES ('3323', '215', 'Ardahan', 'ARD', '1');
INSERT INTO `dg_states` VALUES ('3324', '215', 'Artvin', 'ART', '1');
INSERT INTO `dg_states` VALUES ('3325', '215', 'AydÃ„Â±n', 'AYI', '1');
INSERT INTO `dg_states` VALUES ('3326', '215', 'BalÃ„Â±kesir', 'BAL', '1');
INSERT INTO `dg_states` VALUES ('3327', '215', 'BartÃ„Â±n', 'BAR', '1');
INSERT INTO `dg_states` VALUES ('3328', '215', 'Batman', 'BAT', '1');
INSERT INTO `dg_states` VALUES ('3329', '215', 'Bayburt', 'BAY', '1');
INSERT INTO `dg_states` VALUES ('3330', '215', 'Bilecik', 'BIL', '1');
INSERT INTO `dg_states` VALUES ('3331', '215', 'BingÃƒÂ¶l', 'BIN', '1');
INSERT INTO `dg_states` VALUES ('3332', '215', 'Bitlis', 'BIT', '1');
INSERT INTO `dg_states` VALUES ('3333', '215', 'Bolu', 'BOL', '1');
INSERT INTO `dg_states` VALUES ('3334', '215', 'Burdur', 'BRD', '1');
INSERT INTO `dg_states` VALUES ('3335', '215', 'Bursa', 'BRS', '1');
INSERT INTO `dg_states` VALUES ('3336', '215', 'Ãƒâ€¡anakkale', 'CKL', '1');
INSERT INTO `dg_states` VALUES ('3337', '215', 'Ãƒâ€¡ankÃ„Â±rÃ„Â±', 'CKR', '1');
INSERT INTO `dg_states` VALUES ('3338', '215', 'Ãƒâ€¡orum', 'COR', '1');
INSERT INTO `dg_states` VALUES ('3339', '215', 'Denizli', 'DEN', '1');
INSERT INTO `dg_states` VALUES ('3340', '215', 'Diyarbakir', 'DIY', '1');
INSERT INTO `dg_states` VALUES ('3341', '215', 'DÃƒÂ¼zce', 'DUZ', '1');
INSERT INTO `dg_states` VALUES ('3342', '215', 'Edirne', 'EDI', '1');
INSERT INTO `dg_states` VALUES ('3343', '215', 'ElazÃ„Â±Ã„Å¸', 'ELA', '1');
INSERT INTO `dg_states` VALUES ('3344', '215', 'Erzincan', 'EZC', '1');
INSERT INTO `dg_states` VALUES ('3345', '215', 'Erzurum', 'EZR', '1');
INSERT INTO `dg_states` VALUES ('3346', '215', 'EskiÃ…Å¸ehir', 'ESK', '1');
INSERT INTO `dg_states` VALUES ('3347', '215', 'Gaziantep', 'GAZ', '1');
INSERT INTO `dg_states` VALUES ('3348', '215', 'Giresun', 'GIR', '1');
INSERT INTO `dg_states` VALUES ('3349', '215', 'GÃƒÂ¼mÃƒÂ¼Ã…Å¸hane', 'GMS', '1');
INSERT INTO `dg_states` VALUES ('3350', '215', 'Hakkari', 'HKR', '1');
INSERT INTO `dg_states` VALUES ('3351', '215', 'Hatay', 'HTY', '1');
INSERT INTO `dg_states` VALUES ('3352', '215', 'IÃ„Å¸dÃ„Â±r', 'IGD', '1');
INSERT INTO `dg_states` VALUES ('3353', '215', 'Isparta', 'ISP', '1');
INSERT INTO `dg_states` VALUES ('3354', '215', 'Ã„Â°stanbul', 'IST', '1');
INSERT INTO `dg_states` VALUES ('3355', '215', 'Ã„Â°zmir', 'IZM', '1');
INSERT INTO `dg_states` VALUES ('3356', '215', 'KahramanmaraÃ…Å¸', 'KAH', '1');
INSERT INTO `dg_states` VALUES ('3357', '215', 'KarabÃƒÂ¼k', 'KRB', '1');
INSERT INTO `dg_states` VALUES ('3358', '215', 'Karaman', 'KRM', '1');
INSERT INTO `dg_states` VALUES ('3359', '215', 'Kars', 'KRS', '1');
INSERT INTO `dg_states` VALUES ('3360', '215', 'Kastamonu', 'KAS', '1');
INSERT INTO `dg_states` VALUES ('3361', '215', 'Kayseri', 'KAY', '1');
INSERT INTO `dg_states` VALUES ('3362', '215', 'Kilis', 'KLS', '1');
INSERT INTO `dg_states` VALUES ('3363', '215', 'KÃ„Â±rÃ„Â±kkale', 'KRK', '1');
INSERT INTO `dg_states` VALUES ('3364', '215', 'KÃ„Â±rklareli', 'KLR', '1');
INSERT INTO `dg_states` VALUES ('3365', '215', 'KÃ„Â±rÃ…Å¸ehir', 'KRH', '1');
INSERT INTO `dg_states` VALUES ('3366', '215', 'Kocaeli', 'KOC', '1');
INSERT INTO `dg_states` VALUES ('3367', '215', 'Konya', 'KON', '1');
INSERT INTO `dg_states` VALUES ('3368', '215', 'KÃƒÂ¼tahya', 'KUT', '1');
INSERT INTO `dg_states` VALUES ('3369', '215', 'Malatya', 'MAL', '1');
INSERT INTO `dg_states` VALUES ('3370', '215', 'Manisa', 'MAN', '1');
INSERT INTO `dg_states` VALUES ('3371', '215', 'Mardin', 'MAR', '1');
INSERT INTO `dg_states` VALUES ('3372', '215', 'Mersin', 'MER', '1');
INSERT INTO `dg_states` VALUES ('3373', '215', 'MuÃ„Å¸la', 'MUG', '1');
INSERT INTO `dg_states` VALUES ('3374', '215', 'MuÃ…Å¸', 'MUS', '1');
INSERT INTO `dg_states` VALUES ('3375', '215', 'NevÃ…Å¸ehir', 'NEV', '1');
INSERT INTO `dg_states` VALUES ('3376', '215', 'NiÃ„Å¸de', 'NIG', '1');
INSERT INTO `dg_states` VALUES ('3377', '215', 'Ordu', 'ORD', '1');
INSERT INTO `dg_states` VALUES ('3378', '215', 'Osmaniye', 'OSM', '1');
INSERT INTO `dg_states` VALUES ('3379', '215', 'Rize', 'RIZ', '1');
INSERT INTO `dg_states` VALUES ('3380', '215', 'Sakarya', 'SAK', '1');
INSERT INTO `dg_states` VALUES ('3381', '215', 'Samsun', 'SAM', '1');
INSERT INTO `dg_states` VALUES ('3382', '215', 'Ã…Å¾anlÃ„Â±urfa', 'SAN', '1');
INSERT INTO `dg_states` VALUES ('3383', '215', 'Siirt', 'SII', '1');
INSERT INTO `dg_states` VALUES ('3384', '215', 'Sinop', 'SIN', '1');
INSERT INTO `dg_states` VALUES ('3385', '215', 'Ã…Å¾Ã„Â±rnak', 'SIR', '1');
INSERT INTO `dg_states` VALUES ('3386', '215', 'Sivas', 'SIV', '1');
INSERT INTO `dg_states` VALUES ('3387', '215', 'TekirdaÃ„Å¸', 'TEL', '1');
INSERT INTO `dg_states` VALUES ('3388', '215', 'Tokat', 'TOK', '1');
INSERT INTO `dg_states` VALUES ('3389', '215', 'Trabzon', 'TRA', '1');
INSERT INTO `dg_states` VALUES ('3390', '215', 'Tunceli', 'TUN', '1');
INSERT INTO `dg_states` VALUES ('3391', '215', 'UÃ…Å¸ak', 'USK', '1');
INSERT INTO `dg_states` VALUES ('3392', '215', 'Van', 'VAN', '1');
INSERT INTO `dg_states` VALUES ('3393', '215', 'Yalova', 'YAL', '1');
INSERT INTO `dg_states` VALUES ('3394', '215', 'Yozgat', 'YOZ', '1');
INSERT INTO `dg_states` VALUES ('3395', '215', 'Zonguldak', 'ZON', '1');
INSERT INTO `dg_states` VALUES ('3396', '216', 'Ahal Welayaty', 'A', '1');
INSERT INTO `dg_states` VALUES ('3397', '216', 'Balkan Welayaty', 'B', '1');
INSERT INTO `dg_states` VALUES ('3398', '216', 'Dashhowuz Welayaty', 'D', '1');
INSERT INTO `dg_states` VALUES ('3399', '216', 'Lebap Welayaty', 'L', '1');
INSERT INTO `dg_states` VALUES ('3400', '216', 'Mary Welayaty', 'M', '1');
INSERT INTO `dg_states` VALUES ('3401', '217', 'Ambergris Cays', 'AC', '1');
INSERT INTO `dg_states` VALUES ('3402', '217', 'Dellis Cay', 'DC', '1');
INSERT INTO `dg_states` VALUES ('3403', '217', 'French Cay', 'FC', '1');
INSERT INTO `dg_states` VALUES ('3404', '217', 'Little Water Cay', 'LW', '1');
INSERT INTO `dg_states` VALUES ('3405', '217', 'Parrot Cay', 'RC', '1');
INSERT INTO `dg_states` VALUES ('3406', '217', 'Pine Cay', 'PN', '1');
INSERT INTO `dg_states` VALUES ('3407', '217', 'Salt Cay', 'SL', '1');
INSERT INTO `dg_states` VALUES ('3408', '217', 'Grand Turk', 'GT', '1');
INSERT INTO `dg_states` VALUES ('3409', '217', 'South Caicos', 'SC', '1');
INSERT INTO `dg_states` VALUES ('3410', '217', 'East Caicos', 'EC', '1');
INSERT INTO `dg_states` VALUES ('3411', '217', 'Middle Caicos', 'MC', '1');
INSERT INTO `dg_states` VALUES ('3412', '217', 'North Caicos', 'NC', '1');
INSERT INTO `dg_states` VALUES ('3413', '217', 'Providenciales', 'PR', '1');
INSERT INTO `dg_states` VALUES ('3414', '217', 'West Caicos', 'WC', '1');
INSERT INTO `dg_states` VALUES ('3415', '218', 'Nanumanga', 'NMG', '1');
INSERT INTO `dg_states` VALUES ('3416', '218', 'Niulakita', 'NLK', '1');
INSERT INTO `dg_states` VALUES ('3417', '218', 'Niutao', 'NTO', '1');
INSERT INTO `dg_states` VALUES ('3418', '218', 'Funafuti', 'FUN', '1');
INSERT INTO `dg_states` VALUES ('3419', '218', 'Nanumea', 'NME', '1');
INSERT INTO `dg_states` VALUES ('3420', '218', 'Nui', 'NUI', '1');
INSERT INTO `dg_states` VALUES ('3421', '218', 'Nukufetau', 'NFT', '1');
INSERT INTO `dg_states` VALUES ('3422', '218', 'Nukulaelae', 'NLL', '1');
INSERT INTO `dg_states` VALUES ('3423', '218', 'Vaitupu', 'VAI', '1');
INSERT INTO `dg_states` VALUES ('3424', '219', 'Kalangala', 'KAL', '1');
INSERT INTO `dg_states` VALUES ('3425', '219', 'Kampala', 'KMP', '1');
INSERT INTO `dg_states` VALUES ('3426', '219', 'Kayunga', 'KAY', '1');
INSERT INTO `dg_states` VALUES ('3427', '219', 'Kiboga', 'KIB', '1');
INSERT INTO `dg_states` VALUES ('3428', '219', 'Luwero', 'LUW', '1');
INSERT INTO `dg_states` VALUES ('3429', '219', 'Masaka', 'MAS', '1');
INSERT INTO `dg_states` VALUES ('3430', '219', 'Mpigi', 'MPI', '1');
INSERT INTO `dg_states` VALUES ('3431', '219', 'Mubende', 'MUB', '1');
INSERT INTO `dg_states` VALUES ('3432', '219', 'Mukono', 'MUK', '1');
INSERT INTO `dg_states` VALUES ('3433', '219', 'Nakasongola', 'NKS', '1');
INSERT INTO `dg_states` VALUES ('3434', '219', 'Rakai', 'RAK', '1');
INSERT INTO `dg_states` VALUES ('3435', '219', 'Sembabule', 'SEM', '1');
INSERT INTO `dg_states` VALUES ('3436', '219', 'Wakiso', 'WAK', '1');
INSERT INTO `dg_states` VALUES ('3437', '219', 'Bugiri', 'BUG', '1');
INSERT INTO `dg_states` VALUES ('3438', '219', 'Busia', 'BUS', '1');
INSERT INTO `dg_states` VALUES ('3439', '219', 'Iganga', 'IGA', '1');
INSERT INTO `dg_states` VALUES ('3440', '219', 'Jinja', 'JIN', '1');
INSERT INTO `dg_states` VALUES ('3441', '219', 'Kaberamaido', 'KAB', '1');
INSERT INTO `dg_states` VALUES ('3442', '219', 'Kamuli', 'KML', '1');
INSERT INTO `dg_states` VALUES ('3443', '219', 'Kapchorwa', 'KPC', '1');
INSERT INTO `dg_states` VALUES ('3444', '219', 'Katakwi', 'KTK', '1');
INSERT INTO `dg_states` VALUES ('3445', '219', 'Kumi', 'KUM', '1');
INSERT INTO `dg_states` VALUES ('3446', '219', 'Mayuge', 'MAY', '1');
INSERT INTO `dg_states` VALUES ('3447', '219', 'Mbale', 'MBA', '1');
INSERT INTO `dg_states` VALUES ('3448', '219', 'Pallisa', 'PAL', '1');
INSERT INTO `dg_states` VALUES ('3449', '219', 'Sironko', 'SIR', '1');
INSERT INTO `dg_states` VALUES ('3450', '219', 'Soroti', 'SOR', '1');
INSERT INTO `dg_states` VALUES ('3451', '219', 'Tororo', 'TOR', '1');
INSERT INTO `dg_states` VALUES ('3452', '219', 'Adjumani', 'ADJ', '1');
INSERT INTO `dg_states` VALUES ('3453', '219', 'Apac', 'APC', '1');
INSERT INTO `dg_states` VALUES ('3454', '219', 'Arua', 'ARU', '1');
INSERT INTO `dg_states` VALUES ('3455', '219', 'Gulu', 'GUL', '1');
INSERT INTO `dg_states` VALUES ('3456', '219', 'Kitgum', 'KIT', '1');
INSERT INTO `dg_states` VALUES ('3457', '219', 'Kotido', 'KOT', '1');
INSERT INTO `dg_states` VALUES ('3458', '219', 'Lira', 'LIR', '1');
INSERT INTO `dg_states` VALUES ('3459', '219', 'Moroto', 'MRT', '1');
INSERT INTO `dg_states` VALUES ('3460', '219', 'Moyo', 'MOY', '1');
INSERT INTO `dg_states` VALUES ('3461', '219', 'Nakapiripirit', 'NAK', '1');
INSERT INTO `dg_states` VALUES ('3462', '219', 'Nebbi', 'NEB', '1');
INSERT INTO `dg_states` VALUES ('3463', '219', 'Pader', 'PAD', '1');
INSERT INTO `dg_states` VALUES ('3464', '219', 'Yumbe', 'YUM', '1');
INSERT INTO `dg_states` VALUES ('3465', '219', 'Bundibugyo', 'BUN', '1');
INSERT INTO `dg_states` VALUES ('3466', '219', 'Bushenyi', 'BSH', '1');
INSERT INTO `dg_states` VALUES ('3467', '219', 'Hoima', 'HOI', '1');
INSERT INTO `dg_states` VALUES ('3468', '219', 'Kabale', 'KBL', '1');
INSERT INTO `dg_states` VALUES ('3469', '219', 'Kabarole', 'KAR', '1');
INSERT INTO `dg_states` VALUES ('3470', '219', 'Kamwenge', 'KAM', '1');
INSERT INTO `dg_states` VALUES ('3471', '219', 'Kanungu', 'KAN', '1');
INSERT INTO `dg_states` VALUES ('3472', '219', 'Kasese', 'KAS', '1');
INSERT INTO `dg_states` VALUES ('3473', '219', 'Kibaale', 'KBA', '1');
INSERT INTO `dg_states` VALUES ('3474', '219', 'Kisoro', 'KIS', '1');
INSERT INTO `dg_states` VALUES ('3475', '219', 'Kyenjojo', 'KYE', '1');
INSERT INTO `dg_states` VALUES ('3476', '219', 'Masindi', 'MSN', '1');
INSERT INTO `dg_states` VALUES ('3477', '219', 'Mbarara', 'MBR', '1');
INSERT INTO `dg_states` VALUES ('3478', '219', 'Ntungamo', 'NTU', '1');
INSERT INTO `dg_states` VALUES ('3479', '219', 'Rukungiri', 'RUK', '1');
INSERT INTO `dg_states` VALUES ('3480', '220', 'Cherkasy', 'CK', '1');
INSERT INTO `dg_states` VALUES ('3481', '220', 'Chernihiv', 'CH', '1');
INSERT INTO `dg_states` VALUES ('3482', '220', 'Chernivtsi', 'CV', '1');
INSERT INTO `dg_states` VALUES ('3483', '220', 'Crimea', 'CR', '1');
INSERT INTO `dg_states` VALUES ('3484', '220', 'Dnipropetrovs\'k', 'DN', '1');
INSERT INTO `dg_states` VALUES ('3485', '220', 'Donets\'k', 'DO', '1');
INSERT INTO `dg_states` VALUES ('3486', '220', 'Ivano-Frankivs\'k', 'IV', '1');
INSERT INTO `dg_states` VALUES ('3487', '220', 'Kharkiv Kherson', 'KL', '1');
INSERT INTO `dg_states` VALUES ('3488', '220', 'Khmel\'nyts\'kyy', 'KM', '1');
INSERT INTO `dg_states` VALUES ('3489', '220', 'Kirovohrad', 'KR', '1');
INSERT INTO `dg_states` VALUES ('3490', '220', 'Kiev', 'KV', '1');
INSERT INTO `dg_states` VALUES ('3491', '220', 'Kyyiv', 'KY', '1');
INSERT INTO `dg_states` VALUES ('3492', '220', 'Luhans\'k', 'LU', '1');
INSERT INTO `dg_states` VALUES ('3493', '220', 'L\'viv', 'LV', '1');
INSERT INTO `dg_states` VALUES ('3494', '220', 'Mykolayiv', 'MY', '1');
INSERT INTO `dg_states` VALUES ('3495', '220', 'Odesa', 'OD', '1');
INSERT INTO `dg_states` VALUES ('3496', '220', 'Poltava', 'PO', '1');
INSERT INTO `dg_states` VALUES ('3497', '220', 'Rivne', 'RI', '1');
INSERT INTO `dg_states` VALUES ('3498', '220', 'Sevastopol', 'SE', '1');
INSERT INTO `dg_states` VALUES ('3499', '220', 'Sumy', 'SU', '1');
INSERT INTO `dg_states` VALUES ('3500', '220', 'Ternopil\'', 'TE', '1');
INSERT INTO `dg_states` VALUES ('3501', '220', 'Vinnytsya', 'VI', '1');
INSERT INTO `dg_states` VALUES ('3502', '220', 'Volyn\'', 'VO', '1');
INSERT INTO `dg_states` VALUES ('3503', '220', 'Zakarpattya', 'ZK', '1');
INSERT INTO `dg_states` VALUES ('3504', '220', 'Zaporizhzhya', 'ZA', '1');
INSERT INTO `dg_states` VALUES ('3505', '220', 'Zhytomyr', 'ZH', '1');
INSERT INTO `dg_states` VALUES ('3506', '221', 'Abu Zaby', 'AZ', '1');
INSERT INTO `dg_states` VALUES ('3507', '221', '\'Ajman', 'AJ', '1');
INSERT INTO `dg_states` VALUES ('3508', '221', 'Al Fujayrah', 'FU', '1');
INSERT INTO `dg_states` VALUES ('3509', '221', 'Ash Shariqah', 'SH', '1');
INSERT INTO `dg_states` VALUES ('3510', '221', 'Dubayy', 'DU', '1');
INSERT INTO `dg_states` VALUES ('3511', '221', 'R\'as al Khaymah', 'RK', '1');
INSERT INTO `dg_states` VALUES ('3512', '221', 'Umm al Qaywayn', 'UQ', '1');
INSERT INTO `dg_states` VALUES ('3513', '222', 'Aberdeen', 'ABN', '1');
INSERT INTO `dg_states` VALUES ('3514', '222', 'Aberdeenshire', 'ABNS', '1');
INSERT INTO `dg_states` VALUES ('3515', '222', 'Anglesey', 'ANG', '1');
INSERT INTO `dg_states` VALUES ('3516', '222', 'Angus', 'AGS', '1');
INSERT INTO `dg_states` VALUES ('3517', '222', 'Argyll and Bute', 'ARY', '1');
INSERT INTO `dg_states` VALUES ('3518', '222', 'Bedfordshire', 'BEDS', '1');
INSERT INTO `dg_states` VALUES ('3519', '222', 'Berkshire', 'BERKS', '1');
INSERT INTO `dg_states` VALUES ('3520', '222', 'Blaenau Gwent', 'BLA', '1');
INSERT INTO `dg_states` VALUES ('3521', '222', 'Bridgend', 'BRI', '1');
INSERT INTO `dg_states` VALUES ('3522', '222', 'Bristol', 'BSTL', '1');
INSERT INTO `dg_states` VALUES ('3523', '222', 'Buckinghamshire', 'BUCKS', '1');
INSERT INTO `dg_states` VALUES ('3524', '222', 'Caerphilly', 'CAE', '1');
INSERT INTO `dg_states` VALUES ('3525', '222', 'Cambridgeshire', 'CAMBS', '1');
INSERT INTO `dg_states` VALUES ('3526', '222', 'Cardiff', 'CDF', '1');
INSERT INTO `dg_states` VALUES ('3527', '222', 'Carmarthenshire', 'CARM', '1');
INSERT INTO `dg_states` VALUES ('3528', '222', 'Ceredigion', 'CDGN', '1');
INSERT INTO `dg_states` VALUES ('3529', '222', 'Cheshire', 'CHES', '1');
INSERT INTO `dg_states` VALUES ('3530', '222', 'Clackmannanshire', 'CLACK', '1');
INSERT INTO `dg_states` VALUES ('3531', '222', 'Conwy', 'CON', '1');
INSERT INTO `dg_states` VALUES ('3532', '222', 'Cornwall', 'CORN', '1');
INSERT INTO `dg_states` VALUES ('3533', '222', 'Denbighshire', 'DNBG', '1');
INSERT INTO `dg_states` VALUES ('3534', '222', 'Derbyshire', 'DERBY', '1');
INSERT INTO `dg_states` VALUES ('3535', '222', 'Devon', 'DVN', '1');
INSERT INTO `dg_states` VALUES ('3536', '222', 'Dorset', 'DOR', '1');
INSERT INTO `dg_states` VALUES ('3537', '222', 'Dumfries and Galloway', 'DGL', '1');
INSERT INTO `dg_states` VALUES ('3538', '222', 'Dundee', 'DUND', '1');
INSERT INTO `dg_states` VALUES ('3539', '222', 'Durham', 'DHM', '1');
INSERT INTO `dg_states` VALUES ('3540', '222', 'East Ayrshire', 'ARYE', '1');
INSERT INTO `dg_states` VALUES ('3541', '222', 'East Dunbartonshire', 'DUNBE', '1');
INSERT INTO `dg_states` VALUES ('3542', '222', 'East Lothian', 'LOTE', '1');
INSERT INTO `dg_states` VALUES ('3543', '222', 'East Renfrewshire', 'RENE', '1');
INSERT INTO `dg_states` VALUES ('3544', '222', 'East Riding of Yorkshire', 'ERYS', '1');
INSERT INTO `dg_states` VALUES ('3545', '222', 'East Sussex', 'SXE', '1');
INSERT INTO `dg_states` VALUES ('3546', '222', 'Edinburgh', 'EDIN', '1');
INSERT INTO `dg_states` VALUES ('3547', '222', 'Essex', 'ESX', '1');
INSERT INTO `dg_states` VALUES ('3548', '222', 'Falkirk', 'FALK', '1');
INSERT INTO `dg_states` VALUES ('3549', '222', 'Fife', 'FFE', '1');
INSERT INTO `dg_states` VALUES ('3550', '222', 'Flintshire', 'FLINT', '1');
INSERT INTO `dg_states` VALUES ('3551', '222', 'Glasgow', 'GLAS', '1');
INSERT INTO `dg_states` VALUES ('3552', '222', 'Gloucestershire', 'GLOS', '1');
INSERT INTO `dg_states` VALUES ('3553', '222', 'Greater London', 'LDN', '1');
INSERT INTO `dg_states` VALUES ('3554', '222', 'Greater Manchester', 'MCH', '1');
INSERT INTO `dg_states` VALUES ('3555', '222', 'Gwynedd', 'GDD', '1');
INSERT INTO `dg_states` VALUES ('3556', '222', 'Hampshire', 'HANTS', '1');
INSERT INTO `dg_states` VALUES ('3557', '222', 'Herefordshire', 'HWR', '1');
INSERT INTO `dg_states` VALUES ('3558', '222', 'Hertfordshire', 'HERTS', '1');
INSERT INTO `dg_states` VALUES ('3559', '222', 'Highlands', 'HLD', '1');
INSERT INTO `dg_states` VALUES ('3560', '222', 'Inverclyde', 'IVER', '1');
INSERT INTO `dg_states` VALUES ('3561', '222', 'Isle of Wight', 'IOW', '1');
INSERT INTO `dg_states` VALUES ('3562', '222', 'Kent', 'KNT', '1');
INSERT INTO `dg_states` VALUES ('3563', '222', 'Lancashire', 'LANCS', '1');
INSERT INTO `dg_states` VALUES ('3564', '222', 'Leicestershire', 'LEICS', '1');
INSERT INTO `dg_states` VALUES ('3565', '222', 'Lincolnshire', 'LINCS', '1');
INSERT INTO `dg_states` VALUES ('3566', '222', 'Merseyside', 'MSY', '1');
INSERT INTO `dg_states` VALUES ('3567', '222', 'Merthyr Tydfil', 'MERT', '1');
INSERT INTO `dg_states` VALUES ('3568', '222', 'Midlothian', 'MLOT', '1');
INSERT INTO `dg_states` VALUES ('3569', '222', 'Monmouthshire', 'MMOUTH', '1');
INSERT INTO `dg_states` VALUES ('3570', '222', 'Moray', 'MORAY', '1');
INSERT INTO `dg_states` VALUES ('3571', '222', 'Neath Port Talbot', 'NPRTAL', '1');
INSERT INTO `dg_states` VALUES ('3572', '222', 'Newport', 'NEWPT', '1');
INSERT INTO `dg_states` VALUES ('3573', '222', 'Norfolk', 'NOR', '1');
INSERT INTO `dg_states` VALUES ('3574', '222', 'North Ayrshire', 'ARYN', '1');
INSERT INTO `dg_states` VALUES ('3575', '222', 'North Lanarkshire', 'LANN', '1');
INSERT INTO `dg_states` VALUES ('3576', '222', 'North Yorkshire', 'YSN', '1');
INSERT INTO `dg_states` VALUES ('3577', '222', 'Northamptonshire', 'NHM', '1');
INSERT INTO `dg_states` VALUES ('3578', '222', 'Northumberland', 'NLD', '1');
INSERT INTO `dg_states` VALUES ('3579', '222', 'Nottinghamshire', 'NOT', '1');
INSERT INTO `dg_states` VALUES ('3580', '222', 'Orkney Islands', 'ORK', '1');
INSERT INTO `dg_states` VALUES ('3581', '222', 'Oxfordshire', 'OFE', '1');
INSERT INTO `dg_states` VALUES ('3582', '222', 'Pembrokeshire', 'PEM', '1');
INSERT INTO `dg_states` VALUES ('3583', '222', 'Perth and Kinross', 'PERTH', '1');
INSERT INTO `dg_states` VALUES ('3584', '222', 'Powys', 'PWS', '1');
INSERT INTO `dg_states` VALUES ('3585', '222', 'Renfrewshire', 'REN', '1');
INSERT INTO `dg_states` VALUES ('3586', '222', 'Rhondda Cynon Taff', 'RHON', '1');
INSERT INTO `dg_states` VALUES ('3587', '222', 'Rutland', 'RUT', '1');
INSERT INTO `dg_states` VALUES ('3588', '222', 'Scottish Borders', 'BOR', '1');
INSERT INTO `dg_states` VALUES ('3589', '222', 'Shetland Islands', 'SHET', '1');
INSERT INTO `dg_states` VALUES ('3590', '222', 'Shropshire', 'SPE', '1');
INSERT INTO `dg_states` VALUES ('3591', '222', 'Somerset', 'SOM', '1');
INSERT INTO `dg_states` VALUES ('3592', '222', 'South Ayrshire', 'ARYS', '1');
INSERT INTO `dg_states` VALUES ('3593', '222', 'South Lanarkshire', 'LANS', '1');
INSERT INTO `dg_states` VALUES ('3594', '222', 'South Yorkshire', 'YSS', '1');
INSERT INTO `dg_states` VALUES ('3595', '222', 'Staffordshire', 'SFD', '1');
INSERT INTO `dg_states` VALUES ('3596', '222', 'Stirling', 'STIR', '1');
INSERT INTO `dg_states` VALUES ('3597', '222', 'Suffolk', 'SFK', '1');
INSERT INTO `dg_states` VALUES ('3598', '222', 'Surrey', 'SRY', '1');
INSERT INTO `dg_states` VALUES ('3599', '222', 'Swansea', 'SWAN', '1');
INSERT INTO `dg_states` VALUES ('3600', '222', 'Torfaen', 'TORF', '1');
INSERT INTO `dg_states` VALUES ('3601', '222', 'Tyne and Wear', 'TWR', '1');
INSERT INTO `dg_states` VALUES ('3602', '222', 'Vale of Glamorgan', 'VGLAM', '1');
INSERT INTO `dg_states` VALUES ('3603', '222', 'Warwickshire', 'WARKS', '1');
INSERT INTO `dg_states` VALUES ('3604', '222', 'West Dunbartonshire', 'WDUN', '1');
INSERT INTO `dg_states` VALUES ('3605', '222', 'West Lothian', 'WLOT', '1');
INSERT INTO `dg_states` VALUES ('3606', '222', 'West Midlands', 'WMD', '1');
INSERT INTO `dg_states` VALUES ('3607', '222', 'West Sussex', 'SXW', '1');
INSERT INTO `dg_states` VALUES ('3608', '222', 'West Yorkshire', 'YSW', '1');
INSERT INTO `dg_states` VALUES ('3609', '222', 'Western Isles', 'WIL', '1');
INSERT INTO `dg_states` VALUES ('3610', '222', 'Wiltshire', 'WLT', '1');
INSERT INTO `dg_states` VALUES ('3611', '222', 'Worcestershire', 'WORCS', '1');
INSERT INTO `dg_states` VALUES ('3612', '222', 'Wrexham', 'WRX', '1');
INSERT INTO `dg_states` VALUES ('3613', '223', 'Alabama', 'AL', '1');
INSERT INTO `dg_states` VALUES ('3614', '223', 'Alaska', 'AK', '1');
INSERT INTO `dg_states` VALUES ('3615', '223', 'American Samoa', 'AS', '1');
INSERT INTO `dg_states` VALUES ('3616', '223', 'Arizona', 'AZ', '1');
INSERT INTO `dg_states` VALUES ('3617', '223', 'Arkansas', 'AR', '1');
INSERT INTO `dg_states` VALUES ('3618', '223', 'Armed Forces Africa', 'AF', '1');
INSERT INTO `dg_states` VALUES ('3619', '223', 'Armed Forces Americas', 'AA', '1');
INSERT INTO `dg_states` VALUES ('3620', '223', 'Armed Forces Canada', 'AC', '1');
INSERT INTO `dg_states` VALUES ('3621', '223', 'Armed Forces Europe', 'AE', '1');
INSERT INTO `dg_states` VALUES ('3622', '223', 'Armed Forces Middle East', 'AM', '1');
INSERT INTO `dg_states` VALUES ('3623', '223', 'Armed Forces Pacific', 'AP', '1');
INSERT INTO `dg_states` VALUES ('3624', '223', 'California', 'CA', '1');
INSERT INTO `dg_states` VALUES ('3625', '223', 'Colorado', 'CO', '1');
INSERT INTO `dg_states` VALUES ('3626', '223', 'Connecticut', 'CT', '1');
INSERT INTO `dg_states` VALUES ('3627', '223', 'Delaware', 'DE', '1');
INSERT INTO `dg_states` VALUES ('3628', '223', 'District of Columbia', 'DC', '1');
INSERT INTO `dg_states` VALUES ('3629', '223', 'Federated States Of Micronesia', 'FM', '1');
INSERT INTO `dg_states` VALUES ('3630', '223', 'Florida', 'FL', '1');
INSERT INTO `dg_states` VALUES ('3631', '223', 'Georgia', 'GA', '1');
INSERT INTO `dg_states` VALUES ('3632', '223', 'Guam', 'GU', '1');
INSERT INTO `dg_states` VALUES ('3633', '223', 'Hawaii', 'HI', '1');
INSERT INTO `dg_states` VALUES ('3634', '223', 'Idaho', 'ID', '1');
INSERT INTO `dg_states` VALUES ('3635', '223', 'Illinois', 'IL', '1');
INSERT INTO `dg_states` VALUES ('3636', '223', 'Indiana', 'IN', '1');
INSERT INTO `dg_states` VALUES ('3637', '223', 'Iowa', 'IA', '1');
INSERT INTO `dg_states` VALUES ('3638', '223', 'Kansas', 'KS', '1');
INSERT INTO `dg_states` VALUES ('3639', '223', 'Kentucky', 'KY', '1');
INSERT INTO `dg_states` VALUES ('3640', '223', 'Louisiana', 'LA', '1');
INSERT INTO `dg_states` VALUES ('3641', '223', 'Maine', 'ME', '1');
INSERT INTO `dg_states` VALUES ('3642', '223', 'Marshall Islands', 'MH', '1');
INSERT INTO `dg_states` VALUES ('3643', '223', 'Maryland', 'MD', '1');
INSERT INTO `dg_states` VALUES ('3644', '223', 'Massachusetts', 'MA', '1');
INSERT INTO `dg_states` VALUES ('3645', '223', 'Michigan', 'MI', '1');
INSERT INTO `dg_states` VALUES ('3646', '223', 'Minnesota', 'MN', '1');
INSERT INTO `dg_states` VALUES ('3647', '223', 'Mississippi', 'MS', '1');
INSERT INTO `dg_states` VALUES ('3648', '223', 'Missouri', 'MO', '1');
INSERT INTO `dg_states` VALUES ('3649', '223', 'Montana', 'MT', '1');
INSERT INTO `dg_states` VALUES ('3650', '223', 'Nebraska', 'NE', '1');
INSERT INTO `dg_states` VALUES ('3651', '223', 'Nevada', 'NV', '1');
INSERT INTO `dg_states` VALUES ('3652', '223', 'New Hampshire', 'NH', '1');
INSERT INTO `dg_states` VALUES ('3653', '223', 'New Jersey', 'NJ', '1');
INSERT INTO `dg_states` VALUES ('3654', '223', 'New Mexico', 'NM', '1');
INSERT INTO `dg_states` VALUES ('3655', '223', 'New York', 'NY', '1');
INSERT INTO `dg_states` VALUES ('3656', '223', 'North Carolina', 'NC', '1');
INSERT INTO `dg_states` VALUES ('3657', '223', 'North Dakota', 'ND', '1');
INSERT INTO `dg_states` VALUES ('3658', '223', 'Northern Mariana Islands', 'MP', '1');
INSERT INTO `dg_states` VALUES ('3659', '223', 'Ohio', 'OH', '1');
INSERT INTO `dg_states` VALUES ('3660', '223', 'Oklahoma', 'OK', '1');
INSERT INTO `dg_states` VALUES ('3661', '223', 'Oregon', 'OR', '1');
INSERT INTO `dg_states` VALUES ('3662', '223', 'Palau', 'PW', '1');
INSERT INTO `dg_states` VALUES ('3663', '223', 'Pennsylvania', 'PA', '1');
INSERT INTO `dg_states` VALUES ('3664', '223', 'Puerto Rico', 'PR', '1');
INSERT INTO `dg_states` VALUES ('3665', '223', 'Rhode Island', 'RI', '1');
INSERT INTO `dg_states` VALUES ('3666', '223', 'South Carolina', 'SC', '1');
INSERT INTO `dg_states` VALUES ('3667', '223', 'South Dakota', 'SD', '1');
INSERT INTO `dg_states` VALUES ('3668', '223', 'Tennessee', 'TN', '1');
INSERT INTO `dg_states` VALUES ('3669', '223', 'Texas', 'TX', '1');
INSERT INTO `dg_states` VALUES ('3670', '223', 'Utah', 'UT', '1');
INSERT INTO `dg_states` VALUES ('3671', '223', 'Vermont', 'VT', '1');
INSERT INTO `dg_states` VALUES ('3672', '223', 'Virgin Islands', 'VI', '1');
INSERT INTO `dg_states` VALUES ('3673', '223', 'Virginia', 'VA', '1');
INSERT INTO `dg_states` VALUES ('3674', '223', 'Washington', 'WA', '1');
INSERT INTO `dg_states` VALUES ('3675', '223', 'West Virginia', 'WV', '1');
INSERT INTO `dg_states` VALUES ('3676', '223', 'Wisconsin', 'WI', '1');
INSERT INTO `dg_states` VALUES ('3677', '223', 'Wyoming', 'WY', '1');
INSERT INTO `dg_states` VALUES ('3678', '224', 'Baker Island', 'BI', '1');
INSERT INTO `dg_states` VALUES ('3679', '224', 'Howland Island', 'HI', '1');
INSERT INTO `dg_states` VALUES ('3680', '224', 'Jarvis Island', 'JI', '1');
INSERT INTO `dg_states` VALUES ('3681', '224', 'Johnston Atoll', 'JA', '1');
INSERT INTO `dg_states` VALUES ('3682', '224', 'Kingman Reef', 'KR', '1');
INSERT INTO `dg_states` VALUES ('3683', '224', 'Midway Atoll', 'MA', '1');
INSERT INTO `dg_states` VALUES ('3684', '224', 'Navassa Island', 'NI', '1');
INSERT INTO `dg_states` VALUES ('3685', '224', 'Palmyra Atoll', 'PA', '1');
INSERT INTO `dg_states` VALUES ('3686', '224', 'Wake Island', 'WI', '1');
INSERT INTO `dg_states` VALUES ('3687', '225', 'Artigas', 'AR', '1');
INSERT INTO `dg_states` VALUES ('3688', '225', 'Canelones', 'CA', '1');
INSERT INTO `dg_states` VALUES ('3689', '225', 'Cerro Largo', 'CL', '1');
INSERT INTO `dg_states` VALUES ('3690', '225', 'Colonia', 'CO', '1');
INSERT INTO `dg_states` VALUES ('3691', '225', 'Durazno', 'DU', '1');
INSERT INTO `dg_states` VALUES ('3692', '225', 'Flores', 'FS', '1');
INSERT INTO `dg_states` VALUES ('3693', '225', 'Florida', 'FA', '1');
INSERT INTO `dg_states` VALUES ('3694', '225', 'Lavalleja', 'LA', '1');
INSERT INTO `dg_states` VALUES ('3695', '225', 'Maldonado', 'MA', '1');
INSERT INTO `dg_states` VALUES ('3696', '225', 'Montevideo', 'MO', '1');
INSERT INTO `dg_states` VALUES ('3697', '225', 'Paysandu', 'PA', '1');
INSERT INTO `dg_states` VALUES ('3698', '225', 'Rio Negro', 'RN', '1');
INSERT INTO `dg_states` VALUES ('3699', '225', 'Rivera', 'RV', '1');
INSERT INTO `dg_states` VALUES ('3700', '225', 'Rocha', 'RO', '1');
INSERT INTO `dg_states` VALUES ('3701', '225', 'Salto', 'SL', '1');
INSERT INTO `dg_states` VALUES ('3702', '225', 'San Jose', 'SJ', '1');
INSERT INTO `dg_states` VALUES ('3703', '225', 'Soriano', 'SO', '1');
INSERT INTO `dg_states` VALUES ('3704', '225', 'Tacuarembo', 'TA', '1');
INSERT INTO `dg_states` VALUES ('3705', '225', 'Treinta y Tres', 'TT', '1');
INSERT INTO `dg_states` VALUES ('3706', '226', 'Andijon', 'AN', '1');
INSERT INTO `dg_states` VALUES ('3707', '226', 'Buxoro', 'BU', '1');
INSERT INTO `dg_states` VALUES ('3708', '226', 'Farg\'ona', 'FA', '1');
INSERT INTO `dg_states` VALUES ('3709', '226', 'Jizzax', 'JI', '1');
INSERT INTO `dg_states` VALUES ('3710', '226', 'Namangan', 'NG', '1');
INSERT INTO `dg_states` VALUES ('3711', '226', 'Navoiy', 'NW', '1');
INSERT INTO `dg_states` VALUES ('3712', '226', 'Qashqadaryo', 'QA', '1');
INSERT INTO `dg_states` VALUES ('3713', '226', 'Qoraqalpog\'iston Republikasi', 'QR', '1');
INSERT INTO `dg_states` VALUES ('3714', '226', 'Samarqand', 'SA', '1');
INSERT INTO `dg_states` VALUES ('3715', '226', 'Sirdaryo', 'SI', '1');
INSERT INTO `dg_states` VALUES ('3716', '226', 'Surxondaryo', 'SU', '1');
INSERT INTO `dg_states` VALUES ('3717', '226', 'Toshkent City', 'TK', '1');
INSERT INTO `dg_states` VALUES ('3718', '226', 'Toshkent Region', 'TO', '1');
INSERT INTO `dg_states` VALUES ('3719', '226', 'Xorazm', 'XO', '1');
INSERT INTO `dg_states` VALUES ('3720', '227', 'Malampa', 'MA', '1');
INSERT INTO `dg_states` VALUES ('3721', '227', 'Penama', 'PE', '1');
INSERT INTO `dg_states` VALUES ('3722', '227', 'Sanma', 'SA', '1');
INSERT INTO `dg_states` VALUES ('3723', '227', 'Shefa', 'SH', '1');
INSERT INTO `dg_states` VALUES ('3724', '227', 'Tafea', 'TA', '1');
INSERT INTO `dg_states` VALUES ('3725', '227', 'Torba', 'TO', '1');
INSERT INTO `dg_states` VALUES ('3726', '229', 'Amazonas', 'AM', '1');
INSERT INTO `dg_states` VALUES ('3727', '229', 'Anzoategui', 'AN', '1');
INSERT INTO `dg_states` VALUES ('3728', '229', 'Apure', 'AP', '1');
INSERT INTO `dg_states` VALUES ('3729', '229', 'Aragua', 'AR', '1');
INSERT INTO `dg_states` VALUES ('3730', '229', 'Barinas', 'BA', '1');
INSERT INTO `dg_states` VALUES ('3731', '229', 'Bolivar', 'BO', '1');
INSERT INTO `dg_states` VALUES ('3732', '229', 'Carabobo', 'CA', '1');
INSERT INTO `dg_states` VALUES ('3733', '229', 'Cojedes', 'CO', '1');
INSERT INTO `dg_states` VALUES ('3734', '229', 'Delta Amacuro', 'DA', '1');
INSERT INTO `dg_states` VALUES ('3735', '229', 'Dependencias Federales', 'DF', '1');
INSERT INTO `dg_states` VALUES ('3736', '229', 'Distrito Federal', 'DI', '1');
INSERT INTO `dg_states` VALUES ('3737', '229', 'Falcon', 'FA', '1');
INSERT INTO `dg_states` VALUES ('3738', '229', 'Guarico', 'GU', '1');
INSERT INTO `dg_states` VALUES ('3739', '229', 'Lara', 'LA', '1');
INSERT INTO `dg_states` VALUES ('3740', '229', 'Merida', 'ME', '1');
INSERT INTO `dg_states` VALUES ('3741', '229', 'Miranda', 'MI', '1');
INSERT INTO `dg_states` VALUES ('3742', '229', 'Monagas', 'MO', '1');
INSERT INTO `dg_states` VALUES ('3743', '229', 'Nueva Esparta', 'NE', '1');
INSERT INTO `dg_states` VALUES ('3744', '229', 'Portuguesa', 'PO', '1');
INSERT INTO `dg_states` VALUES ('3745', '229', 'Sucre', 'SU', '1');
INSERT INTO `dg_states` VALUES ('3746', '229', 'Tachira', 'TA', '1');
INSERT INTO `dg_states` VALUES ('3747', '229', 'Trujillo', 'TR', '1');
INSERT INTO `dg_states` VALUES ('3748', '229', 'Vargas', 'VA', '1');
INSERT INTO `dg_states` VALUES ('3749', '229', 'Yaracuy', 'YA', '1');
INSERT INTO `dg_states` VALUES ('3750', '229', 'Zulia', 'ZU', '1');
INSERT INTO `dg_states` VALUES ('3751', '230', 'An Giang', 'AG', '1');
INSERT INTO `dg_states` VALUES ('3752', '230', 'Bac Giang', 'BG', '1');
INSERT INTO `dg_states` VALUES ('3753', '230', 'Bac Kan', 'BK', '1');
INSERT INTO `dg_states` VALUES ('3754', '230', 'Bac Lieu', 'BL', '1');
INSERT INTO `dg_states` VALUES ('3755', '230', 'Bac Ninh', 'BC', '1');
INSERT INTO `dg_states` VALUES ('3756', '230', 'Ba Ria-Vung Tau', 'BR', '1');
INSERT INTO `dg_states` VALUES ('3757', '230', 'Ben Tre', 'BN', '1');
INSERT INTO `dg_states` VALUES ('3758', '230', 'Binh Dinh', 'BH', '1');
INSERT INTO `dg_states` VALUES ('3759', '230', 'Binh Duong', 'BU', '1');
INSERT INTO `dg_states` VALUES ('3760', '230', 'Binh Phuoc', 'BP', '1');
INSERT INTO `dg_states` VALUES ('3761', '230', 'Binh Thuan', 'BT', '1');
INSERT INTO `dg_states` VALUES ('3762', '230', 'Ca Mau', 'CM', '1');
INSERT INTO `dg_states` VALUES ('3763', '230', 'Can Tho', 'CT', '1');
INSERT INTO `dg_states` VALUES ('3764', '230', 'Cao Bang', 'CB', '1');
INSERT INTO `dg_states` VALUES ('3765', '230', 'Dak Lak', 'DL', '1');
INSERT INTO `dg_states` VALUES ('3766', '230', 'Dak Nong', 'DG', '1');
INSERT INTO `dg_states` VALUES ('3767', '230', 'Da Nang', 'DN', '1');
INSERT INTO `dg_states` VALUES ('3768', '230', 'Dien Bien', 'DB', '1');
INSERT INTO `dg_states` VALUES ('3769', '230', 'Dong Nai', 'DI', '1');
INSERT INTO `dg_states` VALUES ('3770', '230', 'Dong Thap', 'DT', '1');
INSERT INTO `dg_states` VALUES ('3771', '230', 'Gia Lai', 'GL', '1');
INSERT INTO `dg_states` VALUES ('3772', '230', 'Ha Giang', 'HG', '1');
INSERT INTO `dg_states` VALUES ('3773', '230', 'Hai Duong', 'HD', '1');
INSERT INTO `dg_states` VALUES ('3774', '230', 'Hai Phong', 'HP', '1');
INSERT INTO `dg_states` VALUES ('3775', '230', 'Ha Nam', 'HM', '1');
INSERT INTO `dg_states` VALUES ('3776', '230', 'Ha Noi', 'HI', '1');
INSERT INTO `dg_states` VALUES ('3777', '230', 'Ha Tay', 'HT', '1');
INSERT INTO `dg_states` VALUES ('3778', '230', 'Ha Tinh', 'HH', '1');
INSERT INTO `dg_states` VALUES ('3779', '230', 'Hoa Binh', 'HB', '1');
INSERT INTO `dg_states` VALUES ('3780', '230', 'Ho Chi Minh City', 'HC', '1');
INSERT INTO `dg_states` VALUES ('3781', '230', 'Hau Giang', 'HU', '1');
INSERT INTO `dg_states` VALUES ('3782', '230', 'Hung Yen', 'HY', '1');
INSERT INTO `dg_states` VALUES ('3783', '232', 'Saint Croix', 'C', '1');
INSERT INTO `dg_states` VALUES ('3784', '232', 'Saint John', 'J', '1');
INSERT INTO `dg_states` VALUES ('3785', '232', 'Saint Thomas', 'T', '1');
INSERT INTO `dg_states` VALUES ('3786', '233', 'Alo', 'A', '1');
INSERT INTO `dg_states` VALUES ('3787', '233', 'Sigave', 'S', '1');
INSERT INTO `dg_states` VALUES ('3788', '233', 'Wallis', 'W', '1');
INSERT INTO `dg_states` VALUES ('3789', '235', 'Abyan', 'AB', '1');
INSERT INTO `dg_states` VALUES ('3790', '235', 'Adan', 'AD', '1');
INSERT INTO `dg_states` VALUES ('3791', '235', 'Amran', 'AM', '1');
INSERT INTO `dg_states` VALUES ('3792', '235', 'Al Bayda', 'BA', '1');
INSERT INTO `dg_states` VALUES ('3793', '235', 'Ad Dali', 'DA', '1');
INSERT INTO `dg_states` VALUES ('3794', '235', 'Dhamar', 'DH', '1');
INSERT INTO `dg_states` VALUES ('3795', '235', 'Hadramawt', 'HD', '1');
INSERT INTO `dg_states` VALUES ('3796', '235', 'Hajjah', 'HJ', '1');
INSERT INTO `dg_states` VALUES ('3797', '235', 'Al Hudaydah', 'HU', '1');
INSERT INTO `dg_states` VALUES ('3798', '235', 'Ibb', 'IB', '1');
INSERT INTO `dg_states` VALUES ('3799', '235', 'Al Jawf', 'JA', '1');
INSERT INTO `dg_states` VALUES ('3800', '235', 'Lahij', 'LA', '1');
INSERT INTO `dg_states` VALUES ('3801', '235', 'Ma\'rib', 'MA', '1');
INSERT INTO `dg_states` VALUES ('3802', '235', 'Al Mahrah', 'MR', '1');
INSERT INTO `dg_states` VALUES ('3803', '235', 'Al Mahwit', 'MW', '1');
INSERT INTO `dg_states` VALUES ('3804', '235', 'Sa\'dah', 'SD', '1');
INSERT INTO `dg_states` VALUES ('3805', '235', 'San\'a', 'SN', '1');
INSERT INTO `dg_states` VALUES ('3806', '235', 'Shabwah', 'SH', '1');
INSERT INTO `dg_states` VALUES ('3807', '235', 'Ta\'izz', 'TA', '1');
INSERT INTO `dg_states` VALUES ('3812', '237', 'Bas-Congo', 'BC', '1');
INSERT INTO `dg_states` VALUES ('3813', '237', 'Bandundu', 'BN', '1');
INSERT INTO `dg_states` VALUES ('3814', '237', 'Equateur', 'EQ', '1');
INSERT INTO `dg_states` VALUES ('3815', '237', 'Katanga', 'KA', '1');
INSERT INTO `dg_states` VALUES ('3816', '237', 'Kasai-Oriental', 'KE', '1');
INSERT INTO `dg_states` VALUES ('3817', '237', 'Kinshasa', 'KN', '1');
INSERT INTO `dg_states` VALUES ('3818', '237', 'Kasai-Occidental', 'KW', '1');
INSERT INTO `dg_states` VALUES ('3819', '237', 'Maniema', 'MA', '1');
INSERT INTO `dg_states` VALUES ('3820', '237', 'Nord-Kivu', 'NK', '1');
INSERT INTO `dg_states` VALUES ('3821', '237', 'Orientale', 'OR', '1');
INSERT INTO `dg_states` VALUES ('3822', '237', 'Sud-Kivu', 'SK', '1');
INSERT INTO `dg_states` VALUES ('3823', '238', 'Central', 'CE', '1');
INSERT INTO `dg_states` VALUES ('3824', '238', 'Copperbelt', 'CB', '1');
INSERT INTO `dg_states` VALUES ('3825', '238', 'Eastern', 'EA', '1');
INSERT INTO `dg_states` VALUES ('3826', '238', 'Luapula', 'LP', '1');
INSERT INTO `dg_states` VALUES ('3827', '238', 'Lusaka', 'LK', '1');
INSERT INTO `dg_states` VALUES ('3828', '238', 'Northern', 'NO', '1');
INSERT INTO `dg_states` VALUES ('3829', '238', 'North-Western', 'NW', '1');
INSERT INTO `dg_states` VALUES ('3830', '238', 'Southern', 'SO', '1');
INSERT INTO `dg_states` VALUES ('3831', '238', 'Western', 'WE', '1');
INSERT INTO `dg_states` VALUES ('3832', '239', 'Bulawayo', 'BU', '1');
INSERT INTO `dg_states` VALUES ('3833', '239', 'Harare', 'HA', '1');
INSERT INTO `dg_states` VALUES ('3834', '239', 'Manicaland', 'ML', '1');
INSERT INTO `dg_states` VALUES ('3835', '239', 'Mashonaland Central', 'MC', '1');
INSERT INTO `dg_states` VALUES ('3836', '239', 'Mashonaland East', 'ME', '1');
INSERT INTO `dg_states` VALUES ('3837', '239', 'Mashonaland West', 'MW', '1');
INSERT INTO `dg_states` VALUES ('3838', '239', 'Masvingo', 'MV', '1');
INSERT INTO `dg_states` VALUES ('3839', '239', 'Matabeleland North', 'MN', '1');
INSERT INTO `dg_states` VALUES ('3840', '239', 'Matabeleland South', 'MS', '1');
INSERT INTO `dg_states` VALUES ('3841', '239', 'Midlands', 'MD', '1');
INSERT INTO `dg_states` VALUES ('3861', '105', 'Campobasso', 'CB', '1');
INSERT INTO `dg_states` VALUES ('3862', '105', 'Carbonia-Iglesias', 'CI', '1');
INSERT INTO `dg_states` VALUES ('3863', '105', 'Caserta', 'CE', '1');
INSERT INTO `dg_states` VALUES ('3864', '105', 'Catania', 'CT', '1');
INSERT INTO `dg_states` VALUES ('3865', '105', 'Catanzaro', 'CZ', '1');
INSERT INTO `dg_states` VALUES ('3866', '105', 'Chieti', 'CH', '1');
INSERT INTO `dg_states` VALUES ('3867', '105', 'Como', 'CO', '1');
INSERT INTO `dg_states` VALUES ('3868', '105', 'Cosenza', 'CS', '1');
INSERT INTO `dg_states` VALUES ('3869', '105', 'Cremona', 'CR', '1');
INSERT INTO `dg_states` VALUES ('3870', '105', 'Crotone', 'KR', '1');
INSERT INTO `dg_states` VALUES ('3871', '105', 'Cuneo', 'CN', '1');
INSERT INTO `dg_states` VALUES ('3872', '105', 'Enna', 'EN', '1');
INSERT INTO `dg_states` VALUES ('3873', '105', 'Ferrara', 'FE', '1');
INSERT INTO `dg_states` VALUES ('3874', '105', 'Firenze', 'FI', '1');
INSERT INTO `dg_states` VALUES ('3875', '105', 'Foggia', 'FG', '1');
INSERT INTO `dg_states` VALUES ('3876', '105', 'Forli-Cesena', 'FC', '1');
INSERT INTO `dg_states` VALUES ('3877', '105', 'Frosinone', 'FR', '1');
INSERT INTO `dg_states` VALUES ('3878', '105', 'Genova', 'GE', '1');
INSERT INTO `dg_states` VALUES ('3879', '105', 'Gorizia', 'GO', '1');
INSERT INTO `dg_states` VALUES ('3880', '105', 'Grosseto', 'GR', '1');
INSERT INTO `dg_states` VALUES ('3881', '105', 'Imperia', 'IM', '1');
INSERT INTO `dg_states` VALUES ('3882', '105', 'Isernia', 'IS', '1');
INSERT INTO `dg_states` VALUES ('3883', '105', 'L&#39;Aquila', 'AQ', '1');
INSERT INTO `dg_states` VALUES ('3884', '105', 'La Spezia', 'SP', '1');
INSERT INTO `dg_states` VALUES ('3885', '105', 'Latina', 'LT', '1');
INSERT INTO `dg_states` VALUES ('3886', '105', 'Lecce', 'LE', '1');
INSERT INTO `dg_states` VALUES ('3887', '105', 'Lecco', 'LC', '1');
INSERT INTO `dg_states` VALUES ('3888', '105', 'Livorno', 'LI', '1');
INSERT INTO `dg_states` VALUES ('3889', '105', 'Lodi', 'LO', '1');
INSERT INTO `dg_states` VALUES ('3890', '105', 'Lucca', 'LU', '1');
INSERT INTO `dg_states` VALUES ('3891', '105', 'Macerata', 'MC', '1');
INSERT INTO `dg_states` VALUES ('3892', '105', 'Mantova', 'MN', '1');
INSERT INTO `dg_states` VALUES ('3893', '105', 'Massa-Carrara', 'MS', '1');
INSERT INTO `dg_states` VALUES ('3894', '105', 'Matera', 'MT', '1');
INSERT INTO `dg_states` VALUES ('3895', '105', 'Medio Campidano', 'VS', '1');
INSERT INTO `dg_states` VALUES ('3896', '105', 'Messina', 'ME', '1');
INSERT INTO `dg_states` VALUES ('3897', '105', 'Milano', 'MI', '1');
INSERT INTO `dg_states` VALUES ('3898', '105', 'Modena', 'MO', '1');
INSERT INTO `dg_states` VALUES ('3899', '105', 'Napoli', 'NA', '1');
INSERT INTO `dg_states` VALUES ('3900', '105', 'Novara', 'NO', '1');
INSERT INTO `dg_states` VALUES ('3901', '105', 'Nuoro', 'NU', '1');
INSERT INTO `dg_states` VALUES ('3902', '105', 'Ogliastra', 'OG', '1');
INSERT INTO `dg_states` VALUES ('3903', '105', 'Olbia-Tempio', 'OT', '1');
INSERT INTO `dg_states` VALUES ('3904', '105', 'Oristano', 'OR', '1');
INSERT INTO `dg_states` VALUES ('3905', '105', 'Padova', 'PD', '1');
INSERT INTO `dg_states` VALUES ('3906', '105', 'Palermo', 'PA', '1');
INSERT INTO `dg_states` VALUES ('3907', '105', 'Parma', 'PR', '1');
INSERT INTO `dg_states` VALUES ('3908', '105', 'Pavia', 'PV', '1');
INSERT INTO `dg_states` VALUES ('3909', '105', 'Perugia', 'PG', '1');
INSERT INTO `dg_states` VALUES ('3910', '105', 'Pesaro e Urbino', 'PU', '1');
INSERT INTO `dg_states` VALUES ('3911', '105', 'Pescara', 'PE', '1');
INSERT INTO `dg_states` VALUES ('3912', '105', 'Piacenza', 'PC', '1');
INSERT INTO `dg_states` VALUES ('3913', '105', 'Pisa', 'PI', '1');
INSERT INTO `dg_states` VALUES ('3914', '105', 'Pistoia', 'PT', '1');
INSERT INTO `dg_states` VALUES ('3915', '105', 'Pordenone', 'PN', '1');
INSERT INTO `dg_states` VALUES ('3916', '105', 'Potenza', 'PZ', '1');
INSERT INTO `dg_states` VALUES ('3917', '105', 'Prato', 'PO', '1');
INSERT INTO `dg_states` VALUES ('3918', '105', 'Ragusa', 'RG', '1');
INSERT INTO `dg_states` VALUES ('3919', '105', 'Ravenna', 'RA', '1');
INSERT INTO `dg_states` VALUES ('3920', '105', 'Reggio Calabria', 'RC', '1');
INSERT INTO `dg_states` VALUES ('3921', '105', 'Reggio Emilia', 'RE', '1');
INSERT INTO `dg_states` VALUES ('3922', '105', 'Rieti', 'RI', '1');
INSERT INTO `dg_states` VALUES ('3923', '105', 'Rimini', 'RN', '1');
INSERT INTO `dg_states` VALUES ('3924', '105', 'Roma', 'RM', '1');
INSERT INTO `dg_states` VALUES ('3925', '105', 'Rovigo', 'RO', '1');
INSERT INTO `dg_states` VALUES ('3926', '105', 'Salerno', 'SA', '1');
INSERT INTO `dg_states` VALUES ('3927', '105', 'Sassari', 'SS', '1');
INSERT INTO `dg_states` VALUES ('3928', '105', 'Savona', 'SV', '1');
INSERT INTO `dg_states` VALUES ('3929', '105', 'Siena', 'SI', '1');
INSERT INTO `dg_states` VALUES ('3930', '105', 'Siracusa', 'SR', '1');
INSERT INTO `dg_states` VALUES ('3931', '105', 'Sondrio', 'SO', '1');
INSERT INTO `dg_states` VALUES ('3932', '105', 'Taranto', 'TA', '1');
INSERT INTO `dg_states` VALUES ('3933', '105', 'Teramo', 'TE', '1');
INSERT INTO `dg_states` VALUES ('3934', '105', 'Terni', 'TR', '1');
INSERT INTO `dg_states` VALUES ('3935', '105', 'Torino', 'TO', '1');
INSERT INTO `dg_states` VALUES ('3936', '105', 'Trapani', 'TP', '1');
INSERT INTO `dg_states` VALUES ('3937', '105', 'Trento', 'TN', '1');
INSERT INTO `dg_states` VALUES ('3938', '105', 'Treviso', 'TV', '1');
INSERT INTO `dg_states` VALUES ('3939', '105', 'Trieste', 'TS', '1');
INSERT INTO `dg_states` VALUES ('3940', '105', 'Udine', 'UD', '1');
INSERT INTO `dg_states` VALUES ('3941', '105', 'Varese', 'VA', '1');
INSERT INTO `dg_states` VALUES ('3942', '105', 'Venezia', 'VE', '1');
INSERT INTO `dg_states` VALUES ('3943', '105', 'Verbano-Cusio-Ossola', 'VB', '1');
INSERT INTO `dg_states` VALUES ('3944', '105', 'Vercelli', 'VC', '1');
INSERT INTO `dg_states` VALUES ('3945', '105', 'Verona', 'VR', '1');
INSERT INTO `dg_states` VALUES ('3946', '105', 'Vibo Valentia', 'VV', '1');
INSERT INTO `dg_states` VALUES ('3947', '105', 'Vicenza', 'VI', '1');
INSERT INTO `dg_states` VALUES ('3948', '105', 'Viterbo', 'VT', '1');
INSERT INTO `dg_states` VALUES ('3949', '222', 'County Antrim', 'ANT', '1');
INSERT INTO `dg_states` VALUES ('3950', '222', 'County Armagh', 'ARM', '1');
INSERT INTO `dg_states` VALUES ('3951', '222', 'County Down', 'DOW', '1');
INSERT INTO `dg_states` VALUES ('3952', '222', 'County Fermanagh', 'FER', '1');
INSERT INTO `dg_states` VALUES ('3953', '222', 'County Londonderry', 'LDY', '1');
INSERT INTO `dg_states` VALUES ('3954', '222', 'County Tyrone', 'TYR', '1');
INSERT INTO `dg_states` VALUES ('3955', '222', 'Cumbria', 'CMA', '1');
INSERT INTO `dg_states` VALUES ('3956', '190', 'Pomurska', '1', '1');
INSERT INTO `dg_states` VALUES ('3957', '190', 'Podravska', '2', '1');
INSERT INTO `dg_states` VALUES ('3958', '190', 'KoroÃ…Â¡ka', '3', '1');
INSERT INTO `dg_states` VALUES ('3959', '190', 'Savinjska', '4', '1');
INSERT INTO `dg_states` VALUES ('3960', '190', 'Zasavska', '5', '1');
INSERT INTO `dg_states` VALUES ('3961', '190', 'Spodnjeposavska', '6', '1');
INSERT INTO `dg_states` VALUES ('3962', '190', 'Jugovzhodna Slovenija', '7', '1');
INSERT INTO `dg_states` VALUES ('3963', '190', 'Osrednjeslovenska', '8', '1');
INSERT INTO `dg_states` VALUES ('3964', '190', 'Gorenjska', '9', '1');
INSERT INTO `dg_states` VALUES ('3965', '190', 'Notranjsko-kraÃ…Â¡ka', '10', '1');
INSERT INTO `dg_states` VALUES ('3966', '190', 'GoriÃ…Â¡ka', '11', '1');
INSERT INTO `dg_states` VALUES ('3967', '190', 'Obalno-kraÃ…Â¡ka', '12', '1');
INSERT INTO `dg_states` VALUES ('3968', '33', 'Ruse', '', '1');
INSERT INTO `dg_states` VALUES ('3969', '101', 'Alborz', 'ALB', '1');
INSERT INTO `dg_states` VALUES ('3970', '21', 'Brussels-Capital Region', 'BRU', '1');
INSERT INTO `dg_states` VALUES ('3971', '138', 'Aguascalientes', 'AG', '1');
INSERT INTO `dg_states` VALUES ('3972', '222', 'Isle of Man', 'IOM', '1');
INSERT INTO `dg_states` VALUES ('3973', '242', 'Andrijevica', '01', '1');
INSERT INTO `dg_states` VALUES ('3974', '242', 'Bar', '02', '1');
INSERT INTO `dg_states` VALUES ('3975', '242', 'Berane', '03', '1');
INSERT INTO `dg_states` VALUES ('3976', '242', 'Bijelo Polje', '04', '1');
INSERT INTO `dg_states` VALUES ('3977', '242', 'Budva', '05', '1');
INSERT INTO `dg_states` VALUES ('3978', '242', 'Cetinje', '06', '1');
INSERT INTO `dg_states` VALUES ('3979', '242', 'Danilovgrad', '07', '1');
INSERT INTO `dg_states` VALUES ('3980', '242', 'Herceg-Novi', '08', '1');
INSERT INTO `dg_states` VALUES ('3981', '242', 'KolaÃ…Â¡in', '09', '1');
INSERT INTO `dg_states` VALUES ('3982', '242', 'Kotor', '10', '1');
INSERT INTO `dg_states` VALUES ('3983', '242', 'Mojkovac', '11', '1');
INSERT INTO `dg_states` VALUES ('3984', '242', 'NikÃ…Â¡iÃ„â€¡', '12', '1');
INSERT INTO `dg_states` VALUES ('3985', '242', 'Plav', '13', '1');
INSERT INTO `dg_states` VALUES ('3986', '242', 'Pljevlja', '14', '1');
INSERT INTO `dg_states` VALUES ('3987', '242', 'PluÃ…Â¾ine', '15', '1');
INSERT INTO `dg_states` VALUES ('3988', '242', 'Podgorica', '16', '1');
INSERT INTO `dg_states` VALUES ('3989', '242', 'RoÃ…Â¾aje', '17', '1');
INSERT INTO `dg_states` VALUES ('3990', '242', 'Ã…Â avnik', '18', '1');
INSERT INTO `dg_states` VALUES ('3991', '242', 'Tivat', '19', '1');
INSERT INTO `dg_states` VALUES ('3992', '242', 'Ulcinj', '20', '1');
INSERT INTO `dg_states` VALUES ('3993', '242', 'Ã…Â½abljak', '21', '1');
INSERT INTO `dg_states` VALUES ('3994', '243', 'Belgrade', '00', '1');
INSERT INTO `dg_states` VALUES ('3995', '243', 'North BaÃ„Âka', '01', '1');
INSERT INTO `dg_states` VALUES ('3996', '243', 'Central Banat', '02', '1');
INSERT INTO `dg_states` VALUES ('3997', '243', 'North Banat', '03', '1');
INSERT INTO `dg_states` VALUES ('3998', '243', 'South Banat', '04', '1');
INSERT INTO `dg_states` VALUES ('3999', '243', 'West BaÃ„Âka', '05', '1');
INSERT INTO `dg_states` VALUES ('4000', '243', 'South BaÃ„Âka', '06', '1');
INSERT INTO `dg_states` VALUES ('4001', '243', 'Srem', '07', '1');
INSERT INTO `dg_states` VALUES ('4002', '243', 'MaÃ„Âva', '08', '1');
INSERT INTO `dg_states` VALUES ('4003', '243', 'Kolubara', '09', '1');
INSERT INTO `dg_states` VALUES ('4004', '243', 'Podunavlje', '10', '1');
INSERT INTO `dg_states` VALUES ('4005', '243', 'BraniÃ„Âevo', '11', '1');
INSERT INTO `dg_states` VALUES ('4006', '243', 'Ã…Â umadija', '12', '1');
INSERT INTO `dg_states` VALUES ('4007', '243', 'Pomoravlje', '13', '1');
INSERT INTO `dg_states` VALUES ('4008', '243', 'Bor', '14', '1');
INSERT INTO `dg_states` VALUES ('4009', '243', 'ZajeÃ„Âar', '15', '1');
INSERT INTO `dg_states` VALUES ('4010', '243', 'Zlatibor', '16', '1');
INSERT INTO `dg_states` VALUES ('4011', '243', 'Moravica', '17', '1');
INSERT INTO `dg_states` VALUES ('4012', '243', 'RaÃ…Â¡ka', '18', '1');
INSERT INTO `dg_states` VALUES ('4013', '243', 'Rasina', '19', '1');
INSERT INTO `dg_states` VALUES ('4014', '243', 'NiÃ…Â¡ava', '20', '1');
INSERT INTO `dg_states` VALUES ('4015', '243', 'Toplica', '21', '1');
INSERT INTO `dg_states` VALUES ('4016', '243', 'Pirot', '22', '1');
INSERT INTO `dg_states` VALUES ('4017', '243', 'Jablanica', '23', '1');
INSERT INTO `dg_states` VALUES ('4018', '243', 'PÃ„Âinja', '24', '1');
INSERT INTO `dg_states` VALUES ('4019', '243', 'Kosovo', 'KM', '1');
INSERT INTO `dg_states` VALUES ('4020', '245', 'Bonaire', 'BO', '1');
INSERT INTO `dg_states` VALUES ('4021', '245', 'Saba', 'SA', '1');
INSERT INTO `dg_states` VALUES ('4022', '245', 'Sint Eustatius', 'SE', '1');
INSERT INTO `dg_states` VALUES ('4023', '248', 'Central Equatoria', 'EC', '1');
INSERT INTO `dg_states` VALUES ('4024', '248', 'Eastern Equatoria', 'EE', '1');
INSERT INTO `dg_states` VALUES ('4025', '248', 'Jonglei', 'JG', '1');
INSERT INTO `dg_states` VALUES ('4026', '248', 'Lakes', 'LK', '1');
INSERT INTO `dg_states` VALUES ('4027', '248', 'Northern Bahr el-Ghazal', 'BN', '1');
INSERT INTO `dg_states` VALUES ('4028', '248', 'Unity', 'UY', '1');
INSERT INTO `dg_states` VALUES ('4029', '248', 'Upper Nile', 'NU', '1');
INSERT INTO `dg_states` VALUES ('4030', '248', 'Warrap', 'WR', '1');
INSERT INTO `dg_states` VALUES ('4031', '248', 'Western Bahr el-Ghazal', 'BW', '1');
INSERT INTO `dg_states` VALUES ('4032', '248', 'Western Equatoria', 'EW', '1');

-- ----------------------------
-- Table structure for `dg_users`
-- ----------------------------
DROP TABLE IF EXISTS `dg_users`;
CREATE TABLE `dg_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `group` varchar(1) NOT NULL DEFAULT '1',
  `send_email` tinyint(4) DEFAULT '0',
  `register_date` datetime NOT NULL,
  `lastvisitdate` datetime NOT NULL,
  `activation` varchar(100) NOT NULL,
  `params` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_users
-- ----------------------------
INSERT INTO `dg_users` VALUES ('1', 'admin', 'admin', 't_tuan_thanh@yahoo.com.vn', '77cf7227ac9db66167f0e8630a36f0cde260dcc475836bb6f7292d769158ca925e5047be4c6ec79372a97f78277bbfab8c2e19d79d0414b77a9b8664577ddab3', '0', '1', '0', '2015-11-18 08:26:31', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `dg_users` VALUES ('2', 'ad', 'ad', 'admin@admin.com', '01da41a750f7889d20a9efa96bda366d6e3174c7beb75815596ab37bd985ad8cfee4b9811dc71523a8ebcd0344a7350c3d9b67450cd263db8cff6f7a304a9597', '0', '1', '0', '2015-12-03 03:04:20', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `dg_users` VALUES ('3', 'teevision', 'teevision', 'teevision@gmail.com', '91bf7cf3731930f5f20ff4c3d5efe2fcef6916c75171c3126765aa614b55ba3320696928ff24631f96df0dfd0da616da1a821c71b9b89b62224cb588a93d5107', '0', '2', '0', '2016-01-08 15:15:24', '0000-00-00 00:00:00', '1', '0');

-- ----------------------------
-- Table structure for `dg_users_designs`
-- ----------------------------
DROP TABLE IF EXISTS `dg_users_designs`;
CREATE TABLE `dg_users_designs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `design_id` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `product_options` text NOT NULL,
  `vectors` longtext NOT NULL,
  `fonts` text NOT NULL,
  `teams` text NOT NULL,
  `image` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_users_designs
-- ----------------------------
INSERT INTO `dg_users_designs` VALUES ('1', '', '', 'B2568FB43E86887', '2', '0', '1', 'CC7722', '{\"front\":{}}', '', '\"\\\"\\\"\"', 'media/assets/system/2016/01/front_1452258264.png', '2016-01-08 14:06:06', '0000-00-00 00:00:00');
INSERT INTO `dg_users_designs` VALUES ('2', '', '', '14522622755433', '2', '0', '1', 'FF0000', '{\"front\":{}}', '', '{}', 'media/assets/system/2016/01/14522622755433.png', '2016-01-08 15:11:15', '0000-00-00 00:00:00');
INSERT INTO `dg_users_designs` VALUES ('3', '', '', '14524871111943517854', '1', '0', '1', 'FF0000', '{\"front\":{\"0\":{\"type\":\"text\",\"width\":\"55px\",\"height\":\"24px\",\"top\":\"18px\",\"left\":\"32px\",\"zIndex\":\"1\",\"svg\":\"<svg width=\\\"55\\\" height=\\\"24\\\" viewBox=\\\"0 0 55 24\\\" xmlns=\\\"http://www.w3.org/2000/svg\\\" xmlns:xlink=\\\"http://www.w3.org/1999/xlink\\\"><g id=\\\"0.05859087221324444\\\"><text fill=\\\"#FF0000\\\" stroke=\\\"none\\\" stroke-width=\\\"0\\\" stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\" x=\\\"27\\\" y=\\\"20\\\" text-anchor=\\\"middle\\\" font-size=\\\"24px\\\" font-family=\\\"arial\\\"><tspan x=\\\"50%\\\" dy=\\\"0\\\">Hello</tspan></text></g></svg>\",\"rotate\":0,\"text\":\"Hello\",\"color\":\"#FF0000\",\"fontFamily\":\"arial\",\"align\":\"center\",\"outlineC\":\"none\",\"outlineW\":0}}}', '', '{}', 'media/assets/system/2016/01/14524871111943517854.png', '2016-01-11 04:38:31', '0000-00-00 00:00:00');
INSERT INTO `dg_users_designs` VALUES ('4', '', '', '1452487165456802856', '1', '0', '1', 'FF0000', '{\"front\":{\"0\":{\"type\":\"text\",\"width\":\"55px\",\"height\":\"24px\",\"top\":\"18px\",\"left\":\"32px\",\"zIndex\":\"1\",\"svg\":\"<svg width=\\\"55\\\" height=\\\"24\\\" viewBox=\\\"0 0 55 24\\\" xmlns=\\\"http://www.w3.org/2000/svg\\\" xmlns:xlink=\\\"http://www.w3.org/1999/xlink\\\"><g id=\\\"0.05859087221324444\\\"><text fill=\\\"#FF0000\\\" stroke=\\\"none\\\" stroke-width=\\\"0\\\" stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\" x=\\\"27\\\" y=\\\"20\\\" text-anchor=\\\"middle\\\" font-size=\\\"24px\\\" font-family=\\\"arial\\\"><tspan x=\\\"50%\\\" dy=\\\"0\\\">Hello</tspan></text></g></svg>\",\"rotate\":0,\"text\":\"Hello\",\"color\":\"#FF0000\",\"fontFamily\":\"arial\",\"align\":\"center\",\"outlineC\":\"none\",\"outlineW\":0}}}', '', '{}', 'media/assets/system/2016/01/1452487165456802856.png', '2016-01-11 04:39:25', '0000-00-00 00:00:00');
INSERT INTO `dg_users_designs` VALUES ('5', '', '', 'A056AF1DFC5B07F', '1', '0', '1', '000000', '{\"front\":{}}', '', '\"\\\"\\\"\"', 'media/assets/system/2016/02/front_1454316869.png', '2016-02-01 09:57:32', '0000-00-00 00:00:00');
INSERT INTO `dg_users_designs` VALUES ('6', '', '', '8756B3229028557', '1', '0', '1', '000000', '{\"front\":{\"0\":{\"type\":\"clipart\",\"width\":\"100px\",\"height\":\"69px\",\"top\":\"157px\",\"left\":\"71px\",\"zIndex\":\"16\",\"svg\":\"<svg xmlns=\\\"http://www.w3.org/2000/svg\\\" xml:space=\\\"preserve\\\" xmlns:xlink=\\\"http://www.w3.org/1999/xlink\\\"><g><image x=\\\"0\\\" y=\\\"0\\\" width=\\\"100\\\" height=\\\"69\\\" xlink:href=\\\"http://localhost/tshirt/media/assets/uploaded/2016/02/anh1_1_thumb.jpg\\\"></image></g></svg>\",\"rotate\":0,\"change_color\":0,\"title\":\"anh1_1\",\"file_name\":\"anh1_1.jpg\",\"file\":{\"type\":\"image\"},\"thumb\":\"http://localhost/tshirt/media/assets/uploaded/2016/02/anh1_1_thumb.jpg\",\"url\":\"http://localhost/tshirt/media/assets/uploaded/2016/02/anh1_1.jpg\"}}}', '', '\"\\\"\\\"\"', 'media/assets/system/2016/02/front_1454580354.png', '2016-02-04 11:06:08', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dg_users_temp`
-- ----------------------------
DROP TABLE IF EXISTS `dg_users_temp`;
CREATE TABLE `dg_users_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `key` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_users_temp
-- ----------------------------
INSERT INTO `dg_users_temp` VALUES ('1', 'toaicv', 'nhn.toaicv@gmail.com', '5b797112eaf260ae0847275e49f62807cf1ce06af4afbb9928c04d3bd432c68582c65bc33b5d9c7b8a69015227ecce447af06d24006a524addd59e065c41e519', '18157965412469608debea124f0a1a9f', '2015-11-18 08:56:55', '');

-- ----------------------------
-- Table structure for `dg_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `dg_user_groups`;
CREATE TABLE `dg_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `default` varchar(1) NOT NULL DEFAULT '0',
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dg_user_groups
-- ----------------------------
INSERT INTO `dg_user_groups` VALUES ('1', 'admin', '0', '[\"edit_user\",\"ajax\",\"art\",\"categories\",\"coupon\",\"custom\",\"dashboard\",\"design\",\"idea\",\"layout\",\"media\",\"menu\",\"module\",\"orders\",\"page\",\"products\",\"settings\",\"update\",\"users\"]');
INSERT INTO `dg_user_groups` VALUES ('2', 'manager', '0', '[\"custom\",\"dashboard\",\"settings\",\"users\"]');
INSERT INTO `dg_user_groups` VALUES ('4', 'customer', '1', 'false');
