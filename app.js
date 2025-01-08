const express = require("express");

const app = express();
const port = 3000;

//motor de plantillas ejs
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

app.get("/", (req, res) => {
  res.render("index");
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
