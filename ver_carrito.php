<?php
session_start();
include 'conexion.php'; // Asegúrate de tener tu conexión aquí

// 🔹 Verificar si llega un ID de producto por GET
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    // 🔹 Consultar el producto en la base de datos
    $sql = "SELECT * FROM productos WHERE id = $id LIMIT 1";
    $result = $mysqli->query($sql);
    $producto = $result->fetch_assoc();

    if ($producto) {
        // 🔹 Si no existe el carrito, lo creamos
        if (!isset($_SESSION['carrito'])) {
            $_SESSION['carrito'] = [];
        }

        // 🔹 Agregamos el producto al carrito (con ID incluido)
        $_SESSION['carrito'][] = [
            'id' => $producto['id'],              // 👈 CLAVE: agregamos el ID
            'nombre' => $producto['nombre'],
            'precio' => $producto['precio']
        ];

        echo "<p>✅ Producto agregado: " . htmlspecialchars($producto['nombre']) . "</p>";
    } else {
        echo "<p>❌ Producto no encontrado.</p>";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Producto agregado</title>
</head>
<body>

<h1>🛍️ Producto agregado al carrito</h1>

<p><a href="ver_carrito.php">Ver carrito</a></p>
<p><a href="index.php">Seguir comprando</a></p>

</body>
</html>

