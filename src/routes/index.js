import express from 'express'
import cors from 'cors'
import productController from './../controllers/controller.product'
import faqController from './../controllers/controller.faq'
import blogController from './../controllers/controller.blog'
import authController from './../controllers/controller.auth'

let router = express.Router()

let routes = (app) => {
    //index
    router.get('/', cors(), (req, res, next) => {
        return res.send('Abaso API Backend')
    })

    //PRODUCT
    //GET AllProducts
    router.get('/all-products', cors(), productController.getAll)

    //GET HomeProducts
    router.get('/home-products', cors(), productController.getHomeProduct)

    //GET Product By Id
    router.get('/product', cors(), productController.getProductById)

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


    //FAQ
    //GET AllFaqs
    router.get('/all-faqs', cors(), faqController.getAll)

    //GET Faq By Id
    router.get('/faq', cors(), faqController.getFaqById)

    //GET Search Faq
    router.get('/search-faq', cors(), faqController.searchFaq)

    //POST Create Faq
    router.post('/faq', cors(), faqController.createFaq)

    //PUT Edit Faq
    router.put('/faq', cors(), faqController.editFaq)

    //DELETE Remove Faq
    router.delete('/faq', cors(), faqController.removeFaqById)


    //BLOG
    //GET AllBlogs
    router.get('/all-blogs', cors(), blogController.getAll)

    //GET Blog On Home Page
    router.get('/home-blogs', cors(), blogController.getHomeBlog)

    //GET Blog By Id
    router.get('/blog', cors(), blogController.getBlogById)

    //POST Create Blog
    router.post('/blog', cors(), blogController.createBlog)

    //PUT Edit Blog
    router.put('/blog', cors(), blogController.editBlog)

    //DELETE Remove Blog
    router.delete('/blog', cors(), blogController.removeBlogById)


    //AUTHENTICATION
    //LOGIN
    router.post('/login', cors(), authController.login)

    //VERITY
    router.post('/verity-token', cors(), authController.verifyToken)


    return app.use('/', router)
}

module.exports = routes