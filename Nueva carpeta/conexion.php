<?php
// Configuración de conexión
$conn = new mysqli("localhost", "root", "", "tienda_envios");

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Limpiar y recibir datos para evitar inyecciones SQL
$nombre = $conn->real_escape_string($_POST['nombre']);
$calle  = $conn->real_escape_string($_POST['calle']);
$ciudad = $conn->real_escape_string($_POST['ciudad']);
$cp     = $conn->real_escape_string($_POST['cp']);
$ref    = $conn->real_escape_string($_POST['referencias']);

$sql = "INSERT INTO direcciones_envio (nombre_receptor, calle_numero, ciudad, codigo_postal, referencias) 
        VALUES ('$nombre', '$calle', '$ciudad', '$cp', '$ref')";

if ($conn->query($sql) === TRUE) {
    // Obtenemos el ID de la dirección que se acaba de guardar
    $id_direccion = $conn->insert_id; 

    // REDIRECCIÓN A STRIPE
    // Aquí pegas la URL de tu archivo de Stripe o tu Checkout Link
    header("Location: checkout_stripe.php?id_ref=" . $id_direccion); 
    exit();
} else {
    echo "Error: " . $conn->error;
}
?>
