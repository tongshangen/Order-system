var io = require('socket.io')();
io.on("connection", function(client){
    client.on('help', function(data){
        io.emit('clientTips',JSON.stringify(data));
        console.log(data)
    })
    // 菜单传输
    client.on('menu_cd', function(data){
        console.log(777)
        io.emit("menu_over", data);
    })
})

io.listen(777)