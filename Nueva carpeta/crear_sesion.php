<?php
header('Content-Type: application/json');

// 1. Cargar Stripe y Errores
require __DIR__ . '/vendor/autoload.php';
\Stripe\Stripe::setApiKey('sk_test_51SSfoX0bwADDhpsjVaCzXrac4CubT7Q6gVVQv1jvQzVWUmkxblZbIdLxFJrZ0seJ5XVRAeCnMSTgTAsRSc3xdRwi00IF5238rm');

try {
    // 2. Leer JSON del Frontend
    $inputJSON = file_get_contents('php://input');
    $input = json_decode($inputJSON, true);

    if (!$input) throw new Exception('No se recibió información del carrito.');

    // 3. Guardar en Base de Datos
    $conn = new mysqli("localhost", "root", "", "tienda"); // Ajusta el nombre de tu BD aquí
    if ($conn->connect_error) throw new Exception("Error BD: " . $conn->connect_error);

    $nombre = $conn->real_escape_string($input['nombre']);
$calle  = $conn->real_escape_string($input['calle']);
$ciudad = $conn->real_escape_string($input['ciudad']);
$cp     = $conn->real_escape_string($input['cp']);

// Ajusta esta línea a los nombres EXACTOS de tus columnas en MySQL
$sql = "INSERT INTO direcciones_envio (nombre_receptor, calle_numero, ciudad, codigo_postal) 
        VALUES ('$nombre', '$calle', '$ciudad', '$cp')";

if (!$conn->query($sql)) {
    throw new Exception("Error en la base de datos: " . $conn->error);
}
    // 4. Preparar productos para Stripe
    $line_items = [];
    foreach ($input['productos'] as $producto) {
        $line_items[] = [
            'price_data' => [
                'currency' => 'mxn',
                'product_data' => [
                    'name' => $producto['nombre'],
                ],
                'unit_amount' => $producto['precio'] * 100, // Stripe usa centavos
            ],
            'quantity' => 1,
        ];
    }

    // 5. Crear Sesión de Stripe
    $session = \Stripe\Checkout\Session::create([
        'payment_method_types' => ['card'],
        'line_items' => $line_items,
        'mode' => 'payment',
        'success_url' => 'http://localhost/proyecto5/success.html',
        'cancel_url'  => 'http://localhost/proyecto5/cancel.html',
    ]);

    echo json_encode(['id' => $session->id]);

} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}