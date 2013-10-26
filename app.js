var express = require('express');
var PORT = 8080;
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World\n');
});

app.listen(PORT, 'localhost');
console.log('Running on http://localhost:' + PORT);
