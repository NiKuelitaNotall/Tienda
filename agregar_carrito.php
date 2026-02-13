<?php
session_start();

// Verifica si ya existe el carrito
if (!isset($_SESSION['carrito'])) {
    $_SESSION['carrito'] = [];
}

// Obtiene los datos del producto enviados por POST
if (isset($_POST['nombre']) && isset($_POST['precio'])) {
    $producto = [
        'nombre' => $_POST['nombre'],
        'precio' => $_POST['precio']
    ];

    // Agrega el producto al carrito
   $_SESSION['carrito'][] = [
    'id' => $producto['id'],           // 👈 Asegúrate de incluir esto
    'nombre' => $producto['nombre'],
    'precio' => $producto['precio']
];

}

// Redirige de vuelta a la página anterior
header('Location: ' . $_SERVER['HTTP_REFERER']);
exit;
?>
