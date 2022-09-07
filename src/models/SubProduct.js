import solveData from "../utilities/solveData";

class SubProduct {
    constructor(_sub) {
        this.id = _sub.id
        this.product_id = _sub.product_id
        this.code = _sub.code
        this.name = _sub.name
        this.src = _sub.src
        this.intro = solveData.parseDataToArray(_sub.intro)
        this.properties = solveData.parseDataToArray(_sub.properties)
        this.infor = solveData.parseDataToArray(_sub.infor)
        this.origin_price = _sub.origin_price
        this.final_price = _sub.final_price
    }
}

module.exports = SubProduct