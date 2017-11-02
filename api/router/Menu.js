var bodyparser = require("body-parser");
var db = require("../MySQL.js");


module.exports = {
    Register: function(app){
        // 接收json请求
        app.use(bodyparser.json());
        // 解析utf-8
        app.use(bodyparser.urlencoded({ extended: false }));


        // 客户确认菜单增add{id: 1, idx: value值, name: 菜名, price: 99 , number: 菜品数量, allprice: 菜品总价}
        app.post("/menuadd", function(request, response){
          
            db.add(`insert into menuadd (idx, name, price, number, allprice, url) values('${request.body.idx}', '${request.body.name}', '${request.body.price}' ,'${request.body.number}' , '${request.body.allprice}', '${request.body.url}')` , function(result){
                console.log(result)
            })
        })
        // 菜单查询
        app.post("/menuSelect", function(request, response){
          
            db.select('select * from menuadd',function(returnData){
                 // console.log(returnData)
                 response.send(returnData);
             })
        })


        // 删
        app.post("/del", function(request, response){
            db.delete("delete from menuadd where name='csx'" , function(result){
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