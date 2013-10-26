var express = require('express');
var PORT = 8080;
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World\n');
});

app.listen(PORT, '127.0.0.1');
console.log('Running on http://localhost:' + PORT);
