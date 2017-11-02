var mysql = require('mysql');
//连接数据库
// var pool = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password: '',
//     database:'csx'
// });

// 创建连接池
var pool = mysql.createPool({
  host     : '10.3.131.8',
  user     : 'root',
  password : '',
  database: 'order'
});


module.exports = {
    // 增
    add: function(tsql, collback){
        pool.query(tsql, function(error, result){
            if (error) throw error;
            // callback(result)
            console.log(result)
        })
    },
    // 删
    delete: function(tsql, callback){
        pool.query(tsql, function(error, result){
            if (error) throw error;
            console.log(result)
        })
    },
    // 查
    select: function(tsql, callback){
    	console.log(88);
        pool.query(tsql, function(error, _data){
            if (error) throw error;
            callback(_data)
        })
    },
    // 改
    update: function(tsql, callback){
        pool.query(tsql, function(error, result){
            if (error) throw error;
            callback(result)
        })
    }
}


// pool.connect();
// //查询
// pool.query('SELECT 1 + 1 AS solution', function(err, rows, fields) {
//     if (err) throw err;
//     console.log('The solution is: ', rows[0].solution);
// });
// //关闭连接
// pool.end();
