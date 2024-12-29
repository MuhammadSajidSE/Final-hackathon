const products = require('../model/product');
const getproduct = async (req, res) => {
    const product = await products.find();
    res.json(product);
}
const creatprouct = async (req, res) => {
    const newproduct = new products({
        name: 'mobile',
        price: 900,
        quantity: 5
    });
    const product = products.create(newproduct);
    res.json(product);
}
module.exports = {getproduct, creatprouct}