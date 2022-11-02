//Nodule to connect to data sources (MySQL, )
var mysql= require('mysql');

var MySQLcon=mysql.createConnection({
    hots: "localhost",
    user: "crus_node.js",
    password: "test1234"
})

Comment.connect(function(err)
{
    if(err)throw err;
    console.log("connected!");
})


/*$npm init -y 
$npm install mysqul
$npm install express bycrptjs

passport passport-local 
mongoose
(mongodb)
*/