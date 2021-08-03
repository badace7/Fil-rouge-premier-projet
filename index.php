<?php
session_start();
$entite = filter_input(INPUT_GET, 'entite', FILTER_SANITIZE_SPECIAL_CHARS);
$action = filter_input(INPUT_GET, 'action', FILTER_SANITIZE_SPECIAL_CHARS);


switch($entite) {

    case 'home' :
        $view = 'app/view/accueil/accueil';
    break;

    case 'actualite' :
        $view = 'app/view/actualite/actualite';
    break;

    case 'contact' :
        $view = 'app/view/contact/contact';
    break;

    case 'services' :
        $view = 'app/view/services/services';
    break;

    case 'connect':
        $view = 'app/view/connect/connect';
        /*include 'controller/connect_controller.php';*/
    break;

    default: 
        $view = 'app/view/accueil/accueil';
    break;
}

include 'app/view/template.php';