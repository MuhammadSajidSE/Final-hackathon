const user = require("../model/user");

const getuser =async (req,resp) =>{
    const users = await user.find();
    resp.send(users);
}
const createuser = async (req,resp) =>{
    const newuser = new user({
        firstName : 'Muhammad',
        lastName: 'Sajid',
        email: 'email@example.com',
        password: 'password123',
    })
    const users = await user.create(newuser);
    resp.send(users);
}
module.exports = {getuser,createuser};