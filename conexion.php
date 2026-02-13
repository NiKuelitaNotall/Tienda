<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "tienda"; // Nombre que aparece en tu SQL

$conexion = mysqli_connect($host, $user, $pass);

if (!$conexion) {
    die("Error de conexión: " . mysqli_connect_error());
}

// Intentar entrar a la base de datos
$db_selected = mysqli_select_db($conexion, $db);

if (!$db_selected) {
    echo "<div style='background:#ffdddd; padding:20px; border:1px solid red; font-family:sans-serif;'>";
    echo "<h2>⚠️ Base de Datos no detectada</h2>";
    echo "Para que la tienda funcione en esta PC:<br><br>";
    echo "1. Ve a <b>http://localhost/phpmyadmin</b><br>";
    echo "2. Crea una base de datos nueva llamada: <b>$db</b><br>";
    echo "3. Importa el archivo <b>datos_tienda.sql</b> que está en tu carpeta.";
    echo "</div>";
    exit;
}

mysqli_set_charset($conexion, "utf8mb4");
?>