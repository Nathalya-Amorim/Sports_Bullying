<?php

    require_once('./ContactModel.php');

    header("Access-Control-Allow-Origin: *");
    header('Content-Type: application/json');

    $formData = json_decode(file_get_contents('php://input'), true);

    $model = new ContactModel();
    $model->create($formData['name'], $formData['email'], $formData['message']);

    echo "NAME: ".$formData['name'].", EMAIL:".$formData['email'].", MESSAGE: ".$formData['message'];

?>