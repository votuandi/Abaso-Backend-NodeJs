import SubProduct from './SubProduct'
import solveData from '../utilities/solveData'

class Product {
    constructor(_product, _subProducts) {
        this.id = _product.id
        this.name = _product.name
        this.version = _product.version
        this.intro = _product.intro
        this.property_names = solveData.parseDataToArray(_product.property_names)
        this.details = this.setDetails(_product.details)
        this.additional_information = JSON.parse(_product.additional_information)
        this.sub = _subProducts.map(sp => new SubProduct(sp))
    }

    setDetails = (_details) => {
        let res = JSON.parse(_details)
        res.videos = Object.values(res.videos)
        res.images = Object.values(res.images)
        return res
    }
}

module.exports = Product