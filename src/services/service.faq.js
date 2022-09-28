import queryString from '../utilities/queryString'
import excuteQuery from '../utilities/excuteQuery';
import Faq from '../models/Faq';

let getAll = async () => {
    try {
        let faqs = await excuteQuery(queryString.SELECT_ALL_FAQS)
        return Object.values(JSON.parse(JSON.stringify(faqs)))
    } catch {
        return null
    }
}

let getFaqById = async (_fid) => {
    try {
        let query = `CALL getFaqsById(${_fid})`
        let faq = {
            ...(await excuteQuery(query))[0][0]
        }
        return new Faq(faq)
    } catch {
        return null
    }
}

let createFaq = async (_newFaq) => {
    try {
        //INSERT FAQ
        console.log('--------------');
        console.log('_newFaq');
        console.log(_newFaq);
        let query = ` CALL createFaq('${_newFaq.question}', '${_newFaq.answer}', @inserted_id); SELECT @inserted_id;`

        //EXCUTE INSERT FAQ
        let newFaqId = (await excuteQuery(query))[1][0]['@inserted_id']
        if (newFaqId == null) {
            console.log('Error when creating new Product');
            return null
        }
        return newFaqId
    } catch {
        return null
    }
}

let editFaq = async (_faq) => {
    try {
        //UPDATE FAQ
        let query = `CALL editFaq(${_faq.id} ,'${_faq.question}', '${_faq.answer}');`

        //EXCUTE UPDATE FAQ
        let res = await excuteQuery(query)
        if (res == null) {
            console.log('Error when editing Faq');
            return null
        }
        return res
    } catch {
        return null
    }
}

let removeFaqById = async (_fid) => {
    try {
        //REMOVE FAQ BY ID
        let query = `CALL removeFaqById(${_fid})`

        //EXCUTE
        let res = await excuteQuery(query)
        if (res == null) {
            console.log('Error when removing Faq');
        }
    } catch {
        return null
    }
}

let searchFaq = async (_keyword) => {
    try {
        //SEARCH FAQ
        let query = queryString.SEARCH_FAQ.replace('<$keyword>', _keyword)
        console.log(query);

        //EXCUTE SEARCH FAQ
        let res = await excuteQuery(query)
        if (res == null) {
            console.log('Error when search Faq');
        }
        return res
    } catch {
        return null
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