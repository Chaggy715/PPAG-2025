const express = require("express");
const path = require("path");
const bodyParser = require("body-parser");
const mysql = require("mysql2");

const app = express();
const port = 3000;

//motor de plantillas ejs
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

// Configurar el middleware para poder leer los datos del formulario
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// Middleware para analizar datos del formulario
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, "public")));
app.use(express.urlencoded({ extended: true }));

// Crear la conexión a la base de datos MySQL
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "ppag", // Nombre de tu base de datos
});

app.get("/", (req, res) => {
  res.render("home");
});

app.get("/g", (req, res) => {
  res.render("general");
});

app.get("/c", (req, res) => {
  res.render("contactos");
});

app.get("/r", (req, res) => {
  res.render("registro");
});

app.get("/l", (req, res) => {
  res.render("login");
});

app.get("/ue", (req, res) => {
  res.render("user-exists");
});

// Ruta para manejar la validación de login
app.post("/login", (req, res) => {
  const { username, password } = req.body;

  const query = "SELECT * FROM usuarios WHERE username = ? AND password = ?";
  connection.query(query, [username, password], (err, results) => {
    if (err) {
      console.error("Error en la consulta:", err);
      res.status(500).send("Error en el servidor");
      return;
    }

    if (results.length > 0) {
      const user = results[0]; // Usuario encontrado en la base de datos
      const userType = user.user_type;

      // Redirigir según el tipo de usuario
      if (userType === "Admin") {
        res.redirect("/i");
      } else if (userType === "User") {
        res.redirect("/g");
      } else {
        res.send("No tienes un rol asignado.");
      }
    } else {
      // Login fallido
      res.render("login", {
        errorMessage: "Usuario o contraseña incorrectos.",
      });
    }
  });
});

// Ruta para manejar el envío del formulario
app.post("/register", (req, res) => {
  const { username, password } = req.body;

  // Verificar si el email ya está registrado
  const checkUserQuery = "SELECT * FROM usuarios WHERE username = ?";
  connection.query(checkUserQuery, [username], (err, results) => {
    if (err) {
      console.error("Error al consultar la base de datos:", err);
      return res.status(500).send("Hubo un error al verificar el usuario");
    }

    if (results.length > 0) {
      // Renderiza una vista con el mensaje y el botón
      return res.render("user-exists", {
        message:
          "El usuario o correo electrónico ya está registrado. Inicia sesión para continuar.",
        loginUrl: "/", // Ruta de la página de inicio de sesión
      });
    }

    // Definir el user_type predefinido
    const userType = "User"; // Cambia 'regular' según el tipo predeterminado que desees

    // Insertar el usuario con el user_type predefinido
    const insertQuery =
      "INSERT INTO usuarios (username, password, user_type) VALUES (?, ?, ?)";
    connection.query(
      insertQuery,
      [username, password, userType],
      (err, results) => {
        if (err) {
          console.error("Error al insertar los datos:", err);
          return res.status(500).send("Hubo un error al registrar al usuario");
        }

        // Redirigir al usuario a la página de inicio de sesión o de éxito
        res.redirect("/l");
      }
    );
  });
});

app.use((req, res, next) => {
  res.status(404).render("404", {
    titulo: "404",
    descripcion: "Página no encontrada o inexistente",
  });
});

// Configura el servidor para escuchar en el puerto 3000
app.listen(3000, () => {
  console.log("Servidor corriendo en http://localhost:3000");
});
