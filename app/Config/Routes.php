<?php

use CodeIgniter\Router\RouteCollection;

use App\Controllers\News; // Add this line
use App\Controllers\Pages;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');


$routes->get('yummy', 'Yummy\YummyController::index');
$routes->get('contactus', 'Yummy\ContactController::contactus');
$routes->get('booktable', 'Yummy\BookingController::booktable');
$routes->match(['get', 'post'], 'contactus', 'Yummy\ContactController::mailing');
$routes->match(['get', 'post'], 'booktable', 'Yummy\BookingController::booking');
$routes->get('booktable/reservation_verification/(:alphanum)', 'Yummy\BookingController::verifyreservation/$myid');
