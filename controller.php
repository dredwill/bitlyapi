<?php

spl_autoload_register(function ($class) {
    include $class . '.php';
});

if ($_POST) {
    $bitly = new Convertation;
    $url = $_POST['url'];

    switch ($_POST['select']) {
        case "longToShort":
            $response = $bitly->longToShort($url);
            $status = (isset($response->data->url))? "success" : "danger";
            break;
        case "shortToLong":
            $response = $bitly->shortToLong($url);
            $status = (isset($response->data->url))? "success" : "danger";
            break;
    }
}