let array2Object = (arr) => {
    let result = {}
    if (arr == null) {
        result = null
    } else {
        arr.forEach((p, ind) => {
            result[ind] = p
        });
    }
    return result
}

let parseDataToArray = (_data) => {
    try {
        let res = Object.values(JSON.parse(_data))
        return res
    } catch (err) {
        return _data === 'null' ? null : _data
    }
}

let getCurrentDate = () => {
    let today = new Date()
    return today.toISOString().split('T')[0]
}

module.exports = {
    array2Object: array2Object,
    parseDataToArray: parseDataToArray,
    getCurrentDate: getCurrentDate
}