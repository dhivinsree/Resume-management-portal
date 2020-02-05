<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Blueprint: Multi-Level Menu</title>
	<meta name="description" content="Blueprint: A basic template for a responsive multi-level menu" />
	<meta name="keywords" content="blueprint, template, html, css, menu, responsive, mobile-friendly" />
	<meta name="author" content="Codrops" />
	<link rel="shortcut icon" href="favicon.ico">
	
	<!-- demo styles -->
	<link rel="stylesheet" type="text/css" href="/css/kgisl/demo.css" />
	<!-- menu styles -->
	<link rel="stylesheet" type="text/css" href="/css/kgisl/components.css" />
	<script src="/js/kgisl/modernizr-custom.js"></script>
	<script src="/js/kgisl/classie.js"></script>
	<script src="/js/kgisl/dummydata.js"></script>
	<script src="/js/kgisl/main.js"></script>
	<script>
	(function() {
		var menuEl = document.getElementById('ml-menu'),
			mlmenu = new MLMenu(menuEl, {
				// breadcrumbsCtrl : true, // show breadcrumbs
				// initialBreadcrumb : 'all', // initial breadcrumb text
				backCtrl : false, // show back button
				// itemsDelayInterval : 60, // delay between each menu item sliding animation
				onItemClick: loadDummyData // callback: item that doesn´t have a submenu gets clicked - onItemClick([event], [inner HTML of the clicked item])
			});

		// mobile menu toggle
		var openMenuCtrl = document.querySelector('.action--open'),
			closeMenuCtrl = document.querySelector('.action--close');

		openMenuCtrl.addEventListener('click', openMenu);
		closeMenuCtrl.addEventListener('click', closeMenu);

		function openMenu() {
			classie.add(menuEl, 'menu--open');
			closeMenuCtrl.focus();
		}

		function closeMenu() {
			classie.remove(menuEl, 'menu--open');
			openMenuCtrl.focus();
		}

		// simulate grid content loading
		var gridWrapper = document.querySelector('.content');

		function loadDummyData(ev, itemName) {
			ev.preventDefault();

			closeMenu();
			gridWrapper.innerHTML = '';
			classie.add(gridWrapper, 'content--loading');
			setTimeout(function() {
				classie.remove(gridWrapper, 'content--loading');
				gridWrapper.innerHTML = '<ul class="products">' + dummyData[itemName] + '<ul>';
			}, 700);
		}
	})();
	</script>
</head>
<body>
	<!-- Main container -->
	<div class="container">
		<!-- Blueprint header -->
		<header class="bp-header cf">
			<div class="dummy-logo">
				<div class="dummy-icon foodicon foodicon--coconut"></div>
				<font color="white">KGISL</font>
			</div>
			<div class="bp-header__main">
				
				
			
			</div>
		</header>
		<button class="action action--open" aria-label="Open Menu"><span class="icon icon--menu"></span></button>
		<nav id="ml-menu" class="menu">
			<button class="action action--close" aria-label="Close Menu"><span class="icon icon--cross"></span></button>
			<div class="menu__wrap">
				<ul data-menu="main" class="menu__level" tabindex="-1" role="menu" aria-label="TRUST">
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-1" aria-owns="submenu-1" href="#">KITE</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2" aria-owns="submenu-2" href="#">KGCAS</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-3" aria-owns="submenu-3" href="#">KGISL-IIM</a></li>
					
				</ul>
				<!-- Submenu 1 -->
				<ul data-menu="submenu-1" id="submenu-1" class="menu__level" tabindex="-1" role="menu" aria-label="Vegetables">
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-1" aria-owns="submenu-1-1" href="#" href="#">ECE</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-2" aria-owns="submenu-1-2" href="#" href="#">COMPUTER SCIENCE</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-3" ;Karia-owns="submenu-1-3" href="#" href="#">MECHANICAL</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-4" aria-owns="submenu-1-4" href="#" href="#">CIVIL</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-5" aria-owns="submenu-1-5" href="#" href="#">EEE</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-6" aria-owns="submenu-1-6" href="#" href="#">B.TECH</a></li>
				</ul>
				<!-- Submenu 1-1 -->
				<ul>
					<ul data-menu="submenu-1-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="ECE">
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-1-1" aria-owns="submenu-1-1-1" href="#" href="#">1 ECE</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-1-2" aria-owns="submenu-1-1-2" href="#" href="#">2 ECE</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-1-3" aria-owns="submenu-1-1-3" href="#" href="#">3 ECE</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-1-4" aria-owns="submenu-1-1-4" href="#" href="#">4 ECE</a></li>
				</ul>
				<!-- Submenu 1-1-1 -->
				<ul>
					<ul data-menu="submenu-1-1-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="1 ECE">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>

				<!-- Submenu 1-1-2 -->
				<ul>
					<ul data-menu="submenu-1-1-2" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="2 ECE">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-1-3 -->
				<ul>
					<ul data-menu="submenu-1-1-3" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="3 ECE">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-1-4 -->
				<ul>
					<ul data-menu="submenu-1-1-4" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="4 ECE">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
                <!-- Submenu 1-2 -->
				<ul>
					<ul data-menu="submenu-1-2" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="COMPUTER SCIENCE">
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-2-1" aria-owns="submenu-1-2-1" href="#" href="#">1 CS</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-2-2" aria-owns="submenu-1-2-2" href="#" href="#">2 CS</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-2-3" aria-owns="submenu-1-2-3" href="#" href="#">3 CS</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-2-4" aria-owns="submenu-1-2-4" href="#" href="#">4 CS</a></li>
				</ul>
				<!-- Submenu 1-2-1 -->
				<ul>
					<ul data-menu="submenu-1-2-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="1 CS">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-2-2 -->
				<ul>
					<ul data-menu="submenu-1-2-2" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="2 CS">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-2-3 -->
				<ul>
					<ul data-menu="submenu-1-2-3" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="3 CS">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-2-4 -->
				<ul>
					<ul data-menu="submenu-1-2-4" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="4 CS">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
                  <!-- Submenu 1-3 -->
				<ul>
					<ul data-menu="submenu-1-3" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="MECHANICAL">
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-1-3-1" aria-owns="submenu-1-3-1" href="#"href="#">1 MECH</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-3-2" aria-owns="submenu-1-3-2" href="#" href="#">2 MECH</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-3-3" aria-owns="submenu-1-3-3" href="#" href="#">3 MECH</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-1-3-4" aria-owns="submenu-1-3-4" href="#"href="#">4 MECH</a></li>
				</ul>
				<!-- Submenu 1-3-1-->
				<ul>
					<ul data-menu="submenu-1-3-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="1 MECH ">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-3-2-->
				<ul>
					<ul data-menu="submenu-1-3-2" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="2 MECH">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-3-3-->
				<ul>
					<ul data-menu="submenu-1-3-3" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="3 MECH">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-3-4-->
				<ul>
					<ul data-menu="submenu-1-3-4" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="4 MECH">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
                 <!-- Submenu 1-4 -->
				  <ul>
					<ul data-menu="submenu-1-4" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="CIVIL">
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-4-1" aria-owns="submenu-1-4-1" href="#" href="#">1 CIVIL</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-4-2" aria-owns="submenu-1-4-2" href="#" href="#">2 CIVIL</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-4-3" aria-owns="submenu-1-4-3" href="#" href="#">3 CIVIL</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-4-4" aria-owns="submenu-1-4-4" href="#" href="#">4 CIVIL</a></li>
				</ul>
				<!-- Submenu 1-4-1 -->
				<ul>
					<ul data-menu="submenu-1-4-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="1 CIVIL">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-4-2-->
				<ul>
					<ul data-menu="submenu-1-4-2" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="2 CIVIL">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-4-3 -->
				<ul>
					<ul data-menu="submenu-1-4-3" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="3 CIVIL">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-4-4 -->
				<ul>
					<ul data-menu="submenu-1-4-4" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="4 CIVIL">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
                <!-- Submenu 1-5 -->
				<ul>
					<ul data-menu="submenu-1-5" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="EEE">
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-5-1" aria-owns="submenu-1-5-1" href="#" href="#">1 EEE</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-5-2" aria-owns="submenu-1-5-2" href="#" href="#">2 EEE</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-5-3" aria-owns="submenu-1-5-3" href="#" href="#">3 EEE</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-5-4" aria-owns="submenu-1-5-4" href="#" href="#">4 EEE</a></li>
				</ul>
				<!-- Submenu 1-5 -1-->
				00
				<ul>
					<ul data-menu="submenu-1-5-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="1 EEE">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-5 -2-->
				<ul>
					<ul data-menu="submenu-1-4-4" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="2 EEE">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-5 -3-->
				<ul>
					<ul data-menu="submenu-1-5-3" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="3 EEE">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-5 -4-->
				<ul>
					<ul data-menu="submenu-1-5-4" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="4 EEE">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>

				<!-- Submenu 1-6 -->
				<ul>
					<ul data-menu="submenu-1-6" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="EEE">
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-6-1" aria-owns="submenu-1-6-1" href="#" href="#">1 TECH</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-6-2" aria-owns="submenu-1-6-2" href="#" href="#">2 TECH</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-6-3" aria-owns="submenu-1-6-3" href="#" href="#">3 TECH</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-1-6-4" aria-owns="submenu-1-6-4" href="#" href="#">4 TECH</a></li>
				</ul>
				<!-- Submenu 1-6 -1-->
				<ul>
					<ul data-menu="submenu-1-6-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="1 TECH">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-6-2 -->
				<ul>
					<ul data-menu="submenu-1-6-2" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="2 TECH">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-6-3 -->
				<ul>
					<ul data-menu="submenu-1-6-3" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="3 TECH">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 1-6-4 -->
				<ul>
					<ul data-menu="submenu-1-6-4" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="4 TECH">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				
<!-- Submenu 2 -->
				<ul data-menu="submenu-2" id="submenu-2" class="menu__level" tabindex="-1" role="menu" aria-label="Fruits">
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2-1" aria-owns="submenu-2-1" href="#"href="#">B.COM (CA)</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2-2" aria-owns="submenu-2-2" href="#">B.SC</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2-3" aria-owns="submenu-2-3" href="#">BBA</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2-4" aria-owns="submenu-2-4" href="#">B.COM</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2-5" aria-owns="submenu-2-5" href="#">BCA</a></li>
				</ul>
				<!-- Submenu 2-1 -->
				<ul>
					<ul data-menu="submenu-2-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="B.COM(CA)">
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-2-1-1" aria-owns="submenu-2-1-1" href="#" href="#">1 ca</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-2-1-2" aria-owns="submenu-2-1-2" href ="#" href="#">2 ca</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-2-1-3" aria-owns="submenu-2-1-3" href="#" href="#">3 ca</a></li>
				</ul>

				<!-- Submenu 2-1-1-->
				<ul>
					<ul data-menu="submenu-2-1-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="1 ca">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 2-1-2-->
				<ul>
					<ul data-menu="submenu-2-1-2" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="2 ca">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<!-- Submenu 2-1-3-->
				<ul>
					<ul data-menu="submenu-2-1-3" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="3 ca">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>

				

				<ul data-menu="submenu-2-2" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="B.SC">
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2-1-1" aria-owns="submenu-2-1-1" href="#">CS</a></li>

					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2-1-2" aria-owns="submenu-2-1-2" href="#">CT</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2-1-3" aria-owns="submenu-2-1-3" href="#">IT</a></li>
				</ul>
				
				<ul>
							<ul data-menu="submenu-2-1-1" id="submenu-2-1-1"class="menu__level"tabindex="-1"role="menu" aria-label="CS">
							<li class="menu__item" role="menuitem"><a class="menu__link" href="#">1 cs</a></li>
							<li class="menu__item" role="menuitem"><a class="menu__link" href="#">2 cs</a></li>
							<li class="menu__item" role="menuitem"><a class="menu__link" href="#">3 cs</a></li>
							</ul>
				
							<ul data-menu="submenu-2-1-2" id="submenu-2-1-2"class="menu__level"tabindex="-1"role="menu" aria-label="CT">
							<li class="menu__item" role="menuitem"><a class="menu__link" href="#">1 ct</a></li>
							<li class="menu__item" role="menuitem"><a class="menu__link" href="#">2 ct</a></li>
							<li class="menu__item" role="menuitem"><a class="menu__link" href="#">3 ct</a></li>
							</ul>

							<ul data-menu="submenu-2-1-3" id="submenu-2-1-3"class="menu__level"tabindex="-1"role="menu" aria-label="IT">
							<li class="menu__item" role="menuitem"><a class="menu__link" href="#">1 it</a></li>
							<li class="menu__item" role="menuitem"><a class="menu__link" href="#">2 it</a></li>
							<li class="menu__item" role="menuitem"><a class="menu__link" href="#">3 it</a></li>
							</ul>
					
				
				</ul>
				<ul data-menu="submenu-2-3" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="BBA">
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-2-3-1" aria-owns="submenu-2-3-1" href="#">1 bba</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-2-3-2" aria-owns="submenu-2-3-2" href="#">2 bba</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-2-3-3" aria-owns="submenu-2-3-3" href="#">3 bba</a></li>
				</ul>
				<ul>
					<ul data-menu="submenu-2-3-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="1 bba">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<ul>
					<ul data-menu="submenu-2-3-2" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="2 bba">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<ul>
					<ul data-menu="submenu-2-3-3" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="3 bba">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>

                 <ul data-menu="submenu-2-4" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="B.COM">
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2-1-3" aria-owns="submenu-2-1-3"href="#">1 r</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2-1-3" aria-owns="submenu-2-1-3"href="#">2 r</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-2-1-3" aria-owns="submenu-2-1-3" href="#">3 r</a></li>
				</ul>
				<ul data-menu="submenu-2-5" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="BCA">
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-2-1-3" aria-owns="submenu-2-1-3"data-submenu="submenu-2-1-3" aria-owns="submenu-2-1-3"data-submenu="submenu-2-1-3" aria-owns="submenu-2-1-3"href="#">1 bca</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-2-1-3" aria-owns="submenu-2-1-3"data-submenu="submenu-2-1-3" aria-owns="submenu-2-1-3" href="#">2 bca</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-2-1-3" aria-owns="submenu-2-1-3" href="#">3 bca</a></li>
				</ul>
			</ul>

					
			<!-- Submenu 3 -->
				<ul data-menu="submenu-3" id="submenu-3" class="menu__level" tabindex="-1" role="menu" aria-label="Grains">
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-3-1" aria-owns="submenu-3-1" href="#" href="#">MCA</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" data-submenu="submenu-3-22" aria-owns="submenu-3-2" href="#"href="#">M.PHIL</a></li>
					</ul>
			 <!-- Submenu 3-1 -->
					<ul>
					<ul data-menu="submenu-3-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="MCA">
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-3-1-1" aria-owns="submenu-3-1-1" href="#" href="#">1 MCA</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-3-1=2" aria-owns="submenu-3-1-2" href="#" href="#">2 MCA</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link"data-submenu="submenu-3-1-3" aria-owns="submenu-3-1-3" href="#" href="#">3 MCA</a></li>
				</ul>
				<ul>
					<ul data-menu="submenu-3-1-1" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="1 MCA">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<ul>
					<ul data-menu="submenu-3-1-2" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="2 MCA">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<ul>
					<ul data-menu="submenu-3-1-3" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="2 MCA">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>
				<ul>
					<ul data-menu="submenu-3-2" id="submenu-2"class="menu__level"tabindex="-1"role="menu" aria-label="M.PHIL">
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 1</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 2</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 3</a></li>
					<li class="menu__item" role="menuitem"><a class="menu__link" href="#">STUDENT NAME 4</a></li>
				</ul>

    <!-- /view -->

</body>

</html>
