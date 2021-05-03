<?php

    $resto = substr($uri, 8);

    $idEv = intval($resto);

    $evento = getEvento($idEv);
    $comentarios = getComentarios($idEv);
    $palabras = getPalabras();
    $fotos = getFotos($idEv);

    echo $twig->render('evento.html', ['evento' => $evento, 'comments' => $comentarios, 'palabras' => $palabras, 'fotos' => $fotos]);
?>