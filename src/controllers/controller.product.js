import productServices from './../services/service.product'

//GET /
let getAll = async (req, res) => {
    let products = await productServices.getAll()
    res.setHeader('Content-Type', 'application/json');
    res.send(JSON.stringify(products))
}

//GET /product
let getProductById = async (req, res) => {
    let productId = req.query.pid
    let product = await productServices.getProductById((productId))
    res.setHeader('Content-Type', 'application/json');
    res.send(JSON.stringify(product))
}

//POST product/
let createProduct = (req, res) => {
    console.log('CREATE PRODUCT');
    let newProduct = req.body.body

    productServices.createProduct(newProduct)
    res.setHeader('Content-Type', 'application/json');
    return res.send(JSON.stringify({
        status: "success",
        data: 'ok'
    }));
}

// PUT sub-product/
let editSubProduct = (req, res) => {
    console.log('EDIT SUB');
    let sub = req.body.body

    productServices.editSubProduct(sub)
    res.setHeader('Content-Type', 'application/json');
    return res.send(JSON.stringify({
        status: "success",
        data: 'ok'
    }));
}

//POST sub-product/
let createSubProduct = (req, res) => {
    let newSubProduct = req.body.body

    productServices.createSubProduct(newSubProduct)
    res.setHeader('Content-Type', 'application/json');
    return res.send(JSON.stringify({
        status: "success",
        data: 'ok'
    }));
}

// PUT product/
let editProduct = (req, res) => {
    let product = req.body.body

    productServices.editProduct(product)
    res.setHeader('Content-Type', 'application/json');
    return res.send(JSON.stringify({
        status: "success",
        data: 'ok'
    }));
}

//GET /subproduct/count-by-productid
let countSpByPid = async (req, res) => {
    let productId = req.query.pid
    let result = await productServices.countSpByPid(productId)
    res.send(result)
}

//GET /subproduct/get-by-productid
let getSpByPid = async (req, res) => {
    let productId = req.query.pid
    let result = await productServices.getSpByPid(productId)
    res.send(result)
}

//DELETE /subproduct/remove-by-sid
let removeSubProductById = async (req, res) => {
    let subProductId = req.query.sid
    let result = await productServices.removeSubProductById(subProductId)
    res.send(result)
}

//DELETE /subproduct/remove-by-pid
let removeSubProductByProductId = async (req, res) => {
    let productId = req.query.pid
    let result = await productServices.removeSubProductByProductId(productId)
    res.send(result)
}

//DELETE /product/remove-by-pid
let removeProductById = async (req, res) => {
    let productId = req.query.pid
    let result = await productServices.removeProductById(productId)
    res.send(result)
}

module.exports = {
    getAll: getAll,
    createProduct: createProduct,
    countSpByPid: countSpByPid,
    getSpByPid: getSpByPid,
    editProduct: editProduct,
    createSubProduct: createSubProduct,
    editSubProduct: editSubProduct,
    removeSubProductById: removeSubProductById,
    removeSubProductByProductId: removeSubProductByProductId,
    removeProductById: removeProductById,
    getProductById: getProductById
}