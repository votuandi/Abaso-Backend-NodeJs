import faqServices from './../services/service.faq'

//GET /
let getAll = async (req, res) => {
    let faqs = await faqServices.getAll()
    if (faqs) {
        res.status(200)
        res.setHeader('Content-Type', 'application/json');
        res.send(JSON.stringify(faqs))
    } else {
        res.status(500)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
}

//GET /faq
let getFaqById = async (req, res) => {
    let faqId = req.query.fid
    if (!faqId) {
        res.status(202)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }

    let faq = await faqServices.getFaqById(faqId)
    if (faq) {
        res.status(200)
        res.setHeader('Content-Type', 'application/json');
        res.send(JSON.stringify(faq))
    } else {
        res.status(500)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
}

//POST /faq/
let createFaq = async (req, res) => {
    let newFaq = req.body
    let isSuccess = false
    if (newFaq) {
        isSuccess = await faqServices.createFaq(newFaq)
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

// PUT /faq/
let editFaq = async (req, res) => {
    let newData = req.body
    let isSuccess = false
    if (newData) {
        isSuccess = await faqServices.editFaq(newData)
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

//DELETE /faq
let removeFaqById = async (req, res) => {
    let fid = req.query.fid
    let isSuccess = false
    if (fid) {
        isSuccess = await faqServices.removeFaqById(fid)
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

//SERACH /search-faq
let searchFaq = async (req, res) => {
    let keyword = req.query.keyword
    let result = await faqServices.searchFaq(keyword)
    if (result) {
        res.status(200)
        res.setHeader('Content-Type', 'application/json');
        res.send(JSON.stringify(result))
    } else {
        res.status(500)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
}


module.exports = {
    getAll: getAll,
    getFaqById: getFaqById,
    createFaq: createFaq,
    editFaq: editFaq,
    removeFaqById: removeFaqById,
    searchFaq: searchFaq
}