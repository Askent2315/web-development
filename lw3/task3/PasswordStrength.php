<?php
  $count = 0;
  $pas = $_GET['password'];
  $len = strlen($pas);                     /*����� ������*/
  $num = preg_match_all('/[0-9]/', $pas);  /*���������� ����*/    
  $up = preg_match_all('/[A-Z]/', $pas);   /*���������� ��������� ����*/
  $low = preg_match_all('/[a-z]/', $pas);  /*���������� �������� ����*/
  if (!ctype_alnum ($pas) or $len==0)
    {
      echo "Password should contains letters or digits";
      exit;
    }
  $count = ($len * 4) + ($num * 4);
  if ($low <> 0)
    $count += ($len - $low) * 2;
  if ($up <> 0)
    $count += ($len - $up) * 2;
  if (ctype_alpha($pas))
    $count -= $len;
  if (ctype_digit($pas))
    $count -= $len;
  $array = array_merge(range('A','Z'), range('a','z'), range('0', '9'));
  foreach ($array as $code)
    {
      $LetCount = preg_match_all('/' . $code  . '/', $pas);
      if ($LetCount > 1)
        {
          $count -= $LetCount;
        }
    }      
  echo $count;
