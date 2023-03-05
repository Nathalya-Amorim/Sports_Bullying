<?php

    require_once('./InterviewModel.php');

    $model = new InterviewModel();

    if(isset($_GET['id']) && $_GET['id'] == 'all') {
        $interviews = $model->getAll();
        echo json_encode($interviews);
    } else if (isset($_GET['id'])) {
        $interview = $model->getOne($_GET['id']);
        echo json_encode($interview);
    }

?>