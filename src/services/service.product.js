import queryString from '../utilities/queryString'
import solvaData from '../utilities/solveData'
import excuteQuery from '../utilities/excuteQuery';
import Product from '../models/Product'


let getAll = async () => {
    try {
        let products = await excuteQuery(queryString.SELECT_ALL_PRODUCTS)
        products = Object.values(JSON.parse(JSON.stringify(products)))
        let res = []
        // console.log(products);
        for (const product of products) {
            let subProducts = await getSpByPid(product.id)
            res.push(new Product(product, subProducts))
        }
        return res
    } catch {
        return null
    }
}

let getHomeProduct = async () => {
    try {
        let products = await excuteQuery(queryString.SELECT_HOME_PRODUCTS)
        products = Object.values(JSON.parse(JSON.stringify(products)))
        let res = []
        // console.log(products);
        for (const product of products) {
            let subProducts = await getSpByPid(product.id)
            res.push(new Product(product, subProducts))
        }
        return res
    } catch {
        return null
    }
}

let getProductById = async (_pid) => {
    try {
        let query = `CALL getProductById(${_pid})`
        let product = {
            ...(await excuteQuery(query))[0][0]
        }
        let subProducts = await getSpByPid(product.id)

        product = new Product(product, subProducts)
        return product
    } catch {
        return null
    }
}

let createProduct = async (_newProduct) => {
    try {
        //INSERT PRODUCT
        //PREPARE PRODUCT DATA
        let propertyNames = solvaData.array2Object(_newProduct.property_names)
        _newProduct.detail.videos = solvaData.array2Object(_newProduct.detail.videos)
        _newProduct.detail.images = solvaData.array2Object(_newProduct.detail.images)

        let query = ` CALL createProduct('${_newProduct.name}', '${_newProduct.version}', '${_newProduct.intro}', '${JSON.stringify(propertyNames)}', '${JSON.stringify(_newProduct.detail)}', '${JSON.stringify(_newProduct.additional_information)}', @inserted_id); SELECT @inserted_id;`

        //EXCUTE INSERT PRODUCT
        let newProductId = (await excuteQuery(query))[1][0]['@inserted_id']
        if (newProductId == null) {
            console.log('Error when creating new Product');
            return false
        }

        //PREPARE SUB-PRODUCT DATA
        let subIntro = solvaData.array2Object(_newProduct.sub.intro)
        let subProperties = solvaData.array2Object(_newProduct.sub.properties)
        let subInfo = solvaData.array2Object(_newProduct.sub.info)

        query = `CALL createSubProduct('${newProductId}', '${_newProduct.sub.code}', '${_newProduct.sub.name}', '${_newProduct.sub.src}', '${JSON.stringify(subIntro)}', '${JSON.stringify(subProperties)}', '${JSON.stringify(subInfo)}', ${_newProduct.sub.price.origin}, ${_newProduct.sub.price.final}, @_insertedId); SELECT @_insertedId;`

        //EXCUTE INSERT SUB-PRODUCT
        let newSubProductId = (await excuteQuery(query))[1][0]['@_insertedId']
        if (newSubProductId == null) {
            console.log('Error when creating SubProduct')
            return false
        }
        return true
    } catch {
        return false
    }
}

let editProduct = async (_product) => {
    try {
        //UPDATE PRODUCT
        //PREPARE PRODUCT DATA
        let propertyNames = solvaData.array2Object(_product.property_names)
        _product.details.videos = solvaData.array2Object(_product.details.videos)
        _product.details.images = solvaData.array2Object(_product.details.images)

        let query = `CALL editProduct(${_product.id}, '${_product.name}', '${_product.version}', '${_product.intro}', '${JSON.stringify(propertyNames)}', '${JSON.stringify(_product.details)}', '${JSON.stringify(_product.additional_information)}');`

        //EXCUTE UPDATE PRODUCT
        let res = (await excuteQuery(query))
        if (res == null) {
            console.log('Error when creating Product');
            return false
        }
        return true
    } catch {
        return false
    }
}

let countSpByPid = async (productId) => {
    try {
        let query = `CALL countSPbyP(${productId});`
        let result = await excuteQuery(query)
        return result == null ? null : Object.values(result[0][0])[0].toString()
    } catch {
        return null
    }
}

let getSpByPid = async (productId) => {
    try {
        let query = `CALL getSPbyP(${productId});`
        let result = (await excuteQuery(query))[0]
        if (result == null) {
            return null
        }
        result.forEach(r => {
            r.intro = solvaData.parseDataToArray(r.intro)
            r.properties = solvaData.parseDataToArray(r.properties)
            r.infor = solvaData.parseDataToArray(r.infor)
        });
        return result
    } catch {
        return null
    }
}

let createSubProduct = async (_newSub) => {
    try {
        //INSERT SUB-PRODUCT
        //PREPARE SUB-PRODUCT DATA
        let subIntro = solvaData.array2Object(_newSub.intro)
        let subProperties = solvaData.array2Object(_newSub.properties)
        let subInfo = solvaData.array2Object(_newSub.info)

        let query = `CALL createSubProduct('${_newSub.productId}', '${_newSub.code}', '${_newSub.name}', '${_newSub.src}', '${JSON.stringify(subIntro)}', '${JSON.stringify(subProperties)}', '${JSON.stringify(subInfo)}', ${_newSub.price.origin}, ${_newSub.price.final}, @_insertedId); SELECT @_insertedId;`

        //EXCUTE INSERT SUB-PRODUCT
        let newSubProductId = (await excuteQuery(query))[1][0]['@_insertedId']
        if (newSubProductId == null) {
            console.log('Error when creating SubProduct')
            return null
        }

        return newSubProductId
    } catch {
        return null
    }
}

let editSubProduct = async (_sub) => {
    try {
        //UPDATE SUB-PRODUCT
        //PREPARE SUB-PRODUCT DATA
        let subIntro = solvaData.array2Object(_sub.intro)
        let subProperties = solvaData.array2Object(_sub.properties)
        let subInfo = solvaData.array2Object(_sub.info)

        let query = `CALL editSubProduct(${_sub.id} ,"${_sub.code}", "${_sub.name}", "${_sub.src}", '${JSON.stringify(subIntro)}', '${JSON.stringify(subProperties)}', '${JSON.stringify(subInfo)}', ${_sub.price.origin}, ${_sub.price.final});`

        //EXCUTE UPDATE PRODUCT
        let res = await excuteQuery(query)
        if (res == null) {
            console.log('Error when editing SubProduct');
            return null
        }
        return res
    } catch {
        return null
    }
}

let removeSubProductById = async (_sid) => {
    try {
        //REMOVE SUB-PRODUCT BY SUB-PRODUCT-ID
        let query = `CALL removeSubProductById(${_sid})`

        //EXCUTE
        let res = await excuteQuery(query)
        if (res == null) {
            console.log('Error when removing SubProduct');
        }
    } catch {
        return null
    }
}

let removeSubProductByProductId = async (_pid) => {
    try {
        //REMOVE SUB-PRODUCT BY PRODUCT-ID
        let query = `CALL removeSubProductByProductId(${_pid})`

        //EXCUTE
        let res = await excuteQuery(query)
        if (res == null) {
            console.log('Error when removing SubProduct');
        }
    } catch {
        return null
    }
}

let removeProductById = async (_pid) => {
    try {
        //REMOVE ALL SUB-PRODUCTS OF THE PRODUCT
        await removeSubProductByProductId(_pid)

        //REMOVE PRODUCT BY PRODUCT-ID
        let query = `CALL removeProductById(${_pid})`

        //EXCUTE
        let res = await excuteQuery(query)
        if (res == null) {
            console.log('Error when removing Product');
        }
    } catch {
        return null
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