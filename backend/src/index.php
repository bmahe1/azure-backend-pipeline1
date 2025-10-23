<?php
require 'config/app.php';
header('Content-Type: application/json');
echo json_encode(['app' => APP_NAME, 'status' => 'ok']);
