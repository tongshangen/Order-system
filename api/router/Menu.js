var bodyparser = require("body-parser");
var db = require("../MySQL.js");


module.exports = {
    Register: function(app){
        // 接收json请求
        app.use(bodyparser.json());
        // 解析utf-8
        app.use(bodyparser.urlencoded({ extended: false }));


        // 客户确认菜单增add
        app.post("/add", function(request, response){
            db.add("insert into test (name, miaos) values('csx', '123456')" , function(result){
                console.log(result)
            })
        })
        // 删
        app.post("/del", function(request, response){
            db.delete("delete from test where name='csx'" , function(result){
                console.log(result)
            })
        })
        // post请求--查
        app.post("/select", function(request, response){
            // select 查询， from 找哪个库, test 库名 ， limit 查找条数 10条
            db.select('select * from menu',function(returnData){
                // console.log(returnData)
                response.send(returnData);
            })
        });
        // 改
        app.post("/update", function(request, response){
            db.update("update test set cost='3' where name='csx'" , function(result){
                console.log(result)
            })
        });
        
       
    }

}