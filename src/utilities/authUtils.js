import JWT from 'jsonwebtoken'
import * as dotenv from 'dotenv'
dotenv.config()

exports.encodedToken = async (username) => {
    return await JWT.sign({
        iss: 'Divt - Vo Tuan Di',
        sub: username,
        iat: new Date().getTime(),
        exp: new Date().setDate(new Date().getDate() + 3)
    }, process.env.JWT_SCRIPT)
}

exports.verifyToken = async (token) => {
    try {
        let decoded = await JWT.verify(token, process.env.JWT_SCRIPT)
        return decoded
    } catch {
        return null
    }
}