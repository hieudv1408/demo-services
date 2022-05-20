const express = require("express");
var cors = require('cors');
const app = express();

app.use(express.json())
app.use(cors())
app.listen(3001, () => {
  console.log("Application started and Listening on port 3001");
});

app.get("/", async (req, res) => {
  res.send({
    serviceName: "sct-service",
    version: '1.0.0'
  })
});
