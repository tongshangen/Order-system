var io = require('socket.io')();
io.on("connection", function(client){
    client.on('help', function(data){
        io.emit('clientTips',JSON.stringify(data));
        console.log(data)
    });
    client.on('serving', function(data){
        io.emit('serving_msg',data);
        console.log(data);
    });
    client.on('menu_cd', function(data){
        io.emit('menu_msg',data);
        console.log(data);
    })
})
io.listen(777)