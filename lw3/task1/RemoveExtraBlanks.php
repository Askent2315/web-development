<?php
  if ($_GET['text'] <> '')
    $str = $_GET['text'];
  else
    $str = 'invalid text';
  $str = preg_replace('/\s+/', ' ', $str);
  $str = trim($str, ' '); 
  header('Content-Type: text/plain');
  echo $str;
?>
