<?php

    require_once('./QAModel.php');

    $model = new QAModel();
    $qas = $model->getAllByInterviewId($_GET['id']);

    echo json_encode($qas);

?>