<?php

  $user = "coronavirus";
  $pass = "covid19";

  function getEvento($idEv) {
    global $user;
    global $pass;

    $nombre = "Default";
    $org = "Default";
    $fecha = "Default";
    $cabecera = "Default";
    $foto = "Default";
    $tituloFoto = "Default";
    $autorFoto = "Default";
    $descripcion = "Default";
    $enlaces = "Default";
    $titulosEnlaces = "Default";

    $mysqli = new mysqli("mysql", $user, $pass, "SIBW");
    if ($mysqli->connect_errno) {
      echo ("Fallo al conectar: " . $mysqli->connect_error);
    }

    $res = $mysqli->query("SELECT * FROM eventos WHERE id=" . $idEv);
    
    $evento = array('nombre' => $nombre, 'org' => $org,
    'fecha' => $fecha, 'cabecera' => $cabecera, 'foto' => $foto,
    'tituloFoto' => $tituloFoto, 'autorFoto' => $autorFoto,
    'descripcion' => $descripcion, 'enlaces' => $enlaces,
    'titulosEnlaces' => $titulosEnlaces);
    
    if ($res->num_rows > 0) {
      $row = $res->fetch_assoc();
      $nombre =   $row["nombre"];
      $org =      $row["org"];
      $fecha =    $row["fecha"];
      $cabecera = $row["cabecera"];
      $foto =     $row["foto"];
      $tituloFoto=$row["tituloFoto"];
      $autorFoto= $row["autorFoto"];
      $descripcion=$row["descripcion"];
      $enlaces =  $row["enlaces"];
      $titulosEnlaces = $row["titulosEnlaces"];
      
      $evento = array('nombre' => $nombre, 'org' => $org,
      'fecha' => $fecha, 'cabecera' => $cabecera, 'foto' => $foto,
      'tituloFoto' => $tituloFoto, 'autorFoto' => $autorFoto,
      'descripcion' => $descripcion, 'enlaces' => $enlaces,
      'titulosEnlaces' => $titulosEnlaces);
    }
    
    return $evento;
  }

  function getPalabras() {
    global $user;
    global $pass;

    $mysqli = new mysqli("mysql",$user, $pass, "SIBW");
    if ($mysqli->connect_errno) {
      echo ("Fallo al conectar: " . $mysqli->connect_error);
    }

    $res = $mysqli->query("SELECT palabra FROM prohibidas");
    
    $palabras = array();
    
    if ($res->num_rows > 0) {
      while($row = $res->fetch_array()){
        $palabras[] = $row[0];  
      }
    }
    
    return $palabras;
  }

  function getEventos() {
    global $user;
    global $pass;

    $mysqli = new mysqli("mysql", $user, $pass, "SIBW");
    if ($mysqli->connect_errno) {
      echo ("Fallo al conectar: " . $mysqli->connect_error);
    }

    $res = $mysqli->query("SELECT nombre, fecha, cabecera FROM eventos");
    
    $eventos = array();
    
    if ($res->num_rows > 0) {
      while($row = $res->fetch_array()){
        $evento = array();
        $count = 0;
        foreach($row as $elem){
          if($count % 2 != 1)
          $evento[] = $elem;
          $count++;
        }
        $eventos[] = $evento;
      }
    }
    
    return $eventos;
  }

  function getComentarios($idEv) {
    global $user;
    global $pass;

    $mysqli = new mysqli("mysql", $user, $pass, "SIBW");
    if ($mysqli->connect_errno) {
      echo ("Fallo al conectar: " . $mysqli->connect_error);
    }

    $res = $mysqli->query("SELECT * FROM comentarios WHERE idEvento=" . $idEv);
    
    $comentarios = array();
    
    if ($res->num_rows > 0) {
      while($row = $res->fetch_array()){
        $evento = array();
        $count = 0;
        foreach($row as $elem){
          if($count % 2 != 1)
          $evento[] = $elem;
          $count++;
        }
        $eventos[] = $evento;
      }
    }
    
    return $eventos;
  }

  function getFotos($idEv) {
    global $user;
    global $pass;

    $mysqli = new mysqli("mysql", $user, $pass, "SIBW");
    if ($mysqli->connect_errno) {
      echo ("Fallo al conectar: " . $mysqli->connect_error);
    }

    $res = $mysqli->query("SELECT * FROM fotos WHERE idEvento=" . $idEv);
    
    $fotos = array();
    
    if ($res->num_rows > 0) {
      while($row = $res->fetch_array()){
        $foto = array();
        $count = 0;
        foreach($row as $elem){
          if($count % 2 != 1)
          $foto[] = $elem;
          $count++;
        }
        $fotos[] = $foto;
      }
    }
    
    return $fotos;
  }
?>
