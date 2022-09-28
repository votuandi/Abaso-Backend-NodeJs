import e from 'express';
import productServices from './../services/service.product'

//GET /
let getAll = async (req, res) => {
    let products = await productServices.getAll()
    if (products) {
        res.status(200)
        res.setHeader('Content-Type', 'application/json');
        res.send(JSON.stringify(products))
    } else {
        res.status(500)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
}

//GET /home-products
let getHomeProduct = async (req, res) => {
    let products = await productServices.getHomeProduct()
    if (products) {
        res.status(200)
        res.setHeader('Content-Type', 'application/json');
        res.send(JSON.stringify(products))
    } else {
        res.status(500)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
}

//GET /product
let getProductById = async (req, res) => {
    let productId = req.query.pid
    if (!productId) {
        res.status(202)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }

    let product = await productServices.getProductById((productId))
    if (product) {
        res.status(200)
        res.setHeader('Content-Type', 'application/json');
        res.send(JSON.stringify(product))
    } else {
        res.status(500)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
}

//POST /product/
let createProduct = async (req, res) => {
    let newProduct = req.body.newProduct
    let isSuccess = false
    if (newProduct) {
        isSuccess = await productServices.createProduct(newProduct)
    }
    if (isSuccess) {
        res.setHeader('Content-Type', 'application/json');
        res.status(201)
        return res.send(JSON.stringify({
            message: "success",
        }));
    } else {
        res.setHeader('Content-Type', 'application/json');
        res.status(202)
        return res.send(JSON.stringify({
            message: "failded",
        }));
    }
}

// PUT product/
let editProduct = async (req, res) => {
    let product = req.body.newData
    let isSuccess = false
    if (product) {
        isSuccess = await productServices.editProduct(product)
    }
    if (isSuccess) {
        res.setHeader('Content-Type', 'application/json');
        res.status(201)
        return res.send(JSON.stringify({
            message: "success",
        }));
    } else {
        res.setHeader('Content-Type', 'application/json');
        res.status(202)
        return res.send(JSON.stringify({
            message: "failded",
        }));
    }
}

//GET /subproduct/count-by-productid
let countSpByPid = async (req, res) => {
    let productId = req.query.pid
    let result = null
    if (productId) {
        result = await productServices.countSpByPid(productId)
    }
    if (result) {
        res.setHeader('Content-Type', 'application/json');
        res.status(201)
        return res.send(JSON.stringify({
            amount: result
        }));
    } else {
        res.setHeader('Content-Type', 'application/json');
        res.status(202)
        return res.send(JSON.stringify({
            amount: null,
        }));
    }
}

//GET /subproduct/get-by-productid
let getSpByPid = async (req, res) => {
    let productId = req.query.pid
    if (!productId) {
        res.setHeader('Content-Type', 'application/json');
        res.status(202)
        return res.send(null);
    }

    let product = null
    if (productId) {
        product = await productServices.getSpByPid(productId)
    }
    if (product) {
        res.setHeader('Content-Type', 'application/json');
        res.status(200)
        return res.send(JSON.stringify(product));
    } else {
        res.setHeader('Content-Type', 'application/json');
        res.status(500)
        return res.send(null);
    }
}

//POST sub-product/
let createSubProduct = async (req, res) => {
    let newSubProduct = req.body.newData
    let isSuccess = false
    if (sub) {
        isSuccess = await productServices.createSubProduct(newSubProduct)
    }
    if (isSuccess) {
        res.setHeader('Content-Type', 'application/json');
        res.status(201)
        return res.send(JSON.stringify({
            message: "success",
        }));
    } else {
        res.setHeader('Content-Type', 'application/json');
        res.status(202)
        return res.send(JSON.stringify({
            message: "failded",
        }));
    }
}

// PUT sub-product/
let editSubProduct = async (req, res) => {
    let sub = req.body.newData
    let isSuccess = false
    if (sub) {
        isSuccess = await productServices.editSubProduct(sub)
    }
    if (isSuccess) {
        res.setHeader('Content-Type', 'application/json');
        res.status(201)
        return res.send(JSON.stringify({
            message: "success",
        }));
    } else {
        res.setHeader('Content-Type', 'application/json');
        res.status(202)
        return res.send(JSON.stringify({
            message: "failded",
        }));
    }
}

//DELETE /subproduct/remove-by-sid
let removeSubProductById = async (req, res) => {
    let subProductId = req.query.sid
    let isSuccess = false
    if (subProductId) {
        isSuccess = await productServices.removeSubProductById(subProductId)
    }
    if (isSuccess) {
        res.setHeader('Content-Type', 'application/json');
        res.status(201)
        return res.send(JSON.stringify({
            message: "success",
        }));
    } else {
        res.setHeader('Content-Type', 'application/json');
        res.status(202)
        return res.send(JSON.stringify({
            message: "failded",
        }));
    }
}

//DELETE /subproduct/remove-by-pid
let removeSubProductByProductId = async (req, res) => {
    let productId = req.query.pid
    let isSuccess = false
    if (productId) {
        isSuccess = await productServices.removeSubProductByProductId(productId)
    }
    if (isSuccess) {
        res.setHeader('Content-Type', 'application/json');
        res.status(201)
        return res.send(JSON.stringify({
            message: "success",
        }));
    } else {
        res.setHeader('Content-Type', 'application/json');
        res.status(202)
        return res.send(JSON.stringify({
            message: "failded",
        }));
    }
}

//DELETE /product/remove-by-pid
let removeProductById = async (req, res) => {
    let productId = req.query.pid
    let isSuccess = false
    if (productId) {
        isSuccess = await productServices.removeProductById(productId)
    }
    if (isSuccess) {
        res.setHeader('Content-Type', 'application/json');
        res.status(201)
        return res.send(JSON.stringify({
            message: "success",
        }));
    } else {
        res.setHeader('Content-Type', 'application/json');
        res.status(202)
        return res.send(JSON.stringify({
            message: "failded",
        }));
    }
}

module.exports = {
    getAll: getAll,
    getHomeProduct: getHomeProduct,
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