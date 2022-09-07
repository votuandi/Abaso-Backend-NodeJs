import con from '../configs/mySqlConnect'

module.exports = async (queryStr = '', para = null) => {
    let res = await new Promise((resolve, reject) => {
        con.query(queryStr, (err, result) => {
            if (err) {
                reject(err)
            }
            resolve(result)
        })
    })
    return res
}