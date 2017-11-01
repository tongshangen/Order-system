var io = require('socket.io')();
io.on("connection", function(client){
    client.on('help', function(data){
        io.emit('clientTips',JSON.stringify(data));
        console.log(data)
    })
})
io.listen(777)