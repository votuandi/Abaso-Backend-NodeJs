import User from "../models/User";
import excuteQuery from '../utilities/excuteQuery';
import authUtils from '../utilities/authUtils'

let login = async (_input) => {
    try {
        let query = `CALL login('${_input.username}', '${_input.password}')`
        let user = (await excuteQuery(query))[0][0]
        user = new User(user)
        let jwt = await authUtils.encodedToken(user.username)
        return {
            user,
            jwt
        }
    } catch {
        return null
    }
}

let verifyToken = async (_token) => {
    try {
        let decoded = await authUtils.verifyToken(_token)
        if (decoded != null) {
            return true
        }
        return false
    } catch {
        return null
    }
}

module.exports = {
    login: login,
    verifyToken: verifyToken
}