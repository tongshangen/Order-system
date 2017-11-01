var bodyparser = require("body-parser");
var db = require("../MySQL.js");


module.exports = {
    Register: function(app){
        // 接收json请求
        app.use(bodyparser.json());
        // 解析utf-8
        app.use(bodyparser.urlencoded({ extended: false }));


        
//      // post请求--查找用户
        app.post("/login", function(request, response){
        	console.log(777);
        	console.log(request.body);
            // select 查询， from 找哪个库, test 库名 ， limit 查找条数 10条
            db.select('select * from user',function(returnData){
                // console.log(returnData)
                response.send(returnData);
            })
        });
        
    }

}