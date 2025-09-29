<?php
header("Content-Type: application/json");
require "db.php"; // include database connection

$method = $_SERVER['REQUEST_METHOD'];
$id = isset($_GET['id']) ? intval($_GET['id']) : null;

switch ($method) {

    // ================= GET =================
    case 'GET':
        if ($id) {
            $result = $conn->query("SELECT * FROM products WHERE id=$id");
            echo json_encode($result->fetch_assoc());
        } else {
            $result = $conn->query("SELECT * FROM products");
            echo json_encode($result->fetch_all(MYSQLI_ASSOC));
        }
        break;

    // ================= POST =================
    case 'POST':
        $data = json_decode(file_get_contents("php://input"), true);
        if ($data) {
            $stmt = $conn->prepare("INSERT INTO products (title, price, description, category, image) VALUES (?, ?, ?, ?, ?)");
            $stmt->bind_param("sdsss", $data['title'], $data['price'], $data['description'], $data['category'], $data['image']);
            $stmt->execute();
            echo json_encode(["id" => $stmt->insert_id]);
        } else {
            echo json_encode(["error" => "No data provided"]);
        }
        break;

    // ================= PUT =================
    case 'PUT':
        if ($id) {
            $data = json_decode(file_get_contents("php://input"), true);
            if ($data) {
                $stmt = $conn->prepare("UPDATE products SET title=?, price=?, description=?, category=?, image=? WHERE id=?");
                $stmt->bind_param("sdsssi", $data['title'], $data['price'], $data['description'], $data['category'], $data['image'], $id);
                $stmt->execute();
                echo json_encode(["updated" => $stmt->affected_rows]);
            } else {
                echo json_encode(["error" => "No data provided"]);
            }
        } else {
            echo json_encode(["error" => "Missing product ID for PUT"]);
        }
        break;

    // ================= DELETE =================
    case 'DELETE':
        if ($id) {
            $stmt = $conn->prepare("DELETE FROM products WHERE id=?");
            $stmt->bind_param("i", $id);
            $stmt->execute();
            echo json_encode(["deleted" => $stmt->affected_rows]);
        } else {
            echo json_encode(["error" => "Missing product ID for DELETE"]);
        }
        break;

    // ================= METHOD NOT ALLOWED =================
    default:
        echo json_encode(["error" => "Method not allowed"]);
        break;
}
?>
