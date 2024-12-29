const express = require('express');
const mongodb = require('mongoose');
const app = express();
const {getuser,createuser} = require("./controller/user");
app.use(express.json());
const {getproduct,creatprouct} = require("./controller/product");
var port = 3000;
const db = 'mongodb+srv://muhammadsajiddh:erHOP4fGYqo4QYEJ@cluster0.nldz3iy.mongodb.net/EcomerceApplication';
mongodb.connect(db).then(()=>{
    console.log('Connected to the database');
}).catch(err => console.log(err));

app.get('/user',getuser);
app.post('/createuser',createuser);
app.get('/product',getproduct);
app.post('/createproduct',creatprouct);
app.listen(port);
