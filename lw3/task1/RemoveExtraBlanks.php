<?php
  header('Content-Type: text/plain');
  if ($_GET['text'] <> '')
    $str = $_GET['text'];
  else
  {
    $str = 'invalid text';
    exit;
  }
  $str = preg_replace('/\s+/', ' ', $str);
  $str = trim($str, ' '); 
  echo $str;
?>
