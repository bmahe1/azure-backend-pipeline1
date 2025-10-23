<?php
header('Content-Type: application/json');

$courses = [
  ['id' => 1, 'title' => 'Intro to DevOps'],
  ['id' => 2, 'title' => 'Kubernetes Basics']
];

echo json_encode($courses);
