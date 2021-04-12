<?php
  header("Content-Type: text/plain");
  $ident = $_GET['identifier'];
  if (!ctype_alnum ($ident))
    echo "Identifier should contains letters or digits";
  elseif (!ctype_alpha ($ident[0]))
    echo "The first cymbol is always letter";
  else
    echo "OK";  