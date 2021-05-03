<?php
  require_once "/usr/local/lib/php/vendor/autoload.php";

  include("scripts/bd.php");

  $loader = new \Twig\Loader\FilesystemLoader('templates');
  $twig = new \Twig\Environment($loader);

  function startsWith($string, $query){
    return substr($string, 0, strlen($query)) === $query;
  }

  $uri = $_SERVER['REQUEST_URI'];

  $events = getEventos();

  if(startsWith($uri, "/evento")){
    include("scripts/evento.php");
  }else{
    echo $twig->render('index.html', ['eventos' => $events]);
  }
?>