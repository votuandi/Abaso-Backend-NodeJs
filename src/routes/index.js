import express from 'express'
import cors from 'cors'
import productController from './../controllers/controller.product'

let router = express.Router()

let routes = (app) => {
    //index
    router.get('/', cors(), (req, res, next) => {
        return res.send('Abaso API Backend')
    })

    //PRODUCT
    //GET AllProducts
    router.get('/all-products', cors(), productController.getAll)

    //POST Create Product
    router.post('/product', cors(), productController.createProduct)

    //PUT Edit Product
    router.put('/product', cors(), productController.editProduct)


    //SUB-PRODUCT
    //GET Count Sub-Product By ProductID
    router.get('/subproduct/count-by-productid', cors(), productController.countSpByPid)

    //GET Count Sub-Product By ProductID
    router.get('/subproduct/get-by-productid', cors(), productController.getSpByPid)

    //POST Create Sub-Product
    router.post('/sub-product', cors(), productController.createSubProduct)

    //PUT Edit Sub-Product
    router.put('/sub-product', cors(), productController.editSubProduct)

    //DELETE Sub-Product By Id
    router.delete('/subproduct/remove-by-sid', cors(), productController.removeSubProductById)

    //DELETE Sub-Product By ProductId
    router.delete('/subproduct/remove-by-pid', cors(), productController.removeSubProductByProductId)

    //DELETE Product By Id
    router.delete('/product/remove-by-pid', cors(), productController.removeProductById)

    return app.use('/', router)
}

module.exports = routes