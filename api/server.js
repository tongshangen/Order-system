var express = require('express');
var app = express();

var router = require('./router/MainRouter.js');
var http = require('http').Server(app);
var io = require('socket.io')(http);
router.Register(app);
app.listen(666);
