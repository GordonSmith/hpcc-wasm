var process = require('process')
var express = require('express');
var app = express();

app.get('/random', function (req, res) {
    res.send(`${Math.random()}`);
});

app.get('/', function (req, res) {
    res.send(`Action '/' unsported, try /random`);
});

app.listen(3000, function () {
    console.log('Example app listening on port 3000!');
});

process.on('SIGINT', () => {
    process.exit(0)
})