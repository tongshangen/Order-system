var express = require('express');
var app = express();

var router = require('./router/MainRouter.js');
router.Register(app);
app.listen(666);
