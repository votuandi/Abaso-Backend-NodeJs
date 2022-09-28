import authService from './../services/service.auth'

//LOGIN
let login = async (req, res) => {
    let input = req.body
    if (!input) {
        res.status(202)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
    let resUser = await authService.login(input)
    if (!resUser) {
        res.status(202)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    } else {
        res.status(200)
        res.setHeader('Authorization', resUser.jwt)
        res.setHeader('Content-Type', 'application/json');
        res.send({
            status: 'OK',
            user: {
                id: resUser.user.id,
                username: resUser.user.username
            },
            token: resUser.jwt
        })
    }
}

//VERiFY
let verifyToken = async (req, res) => {
    let token = req.body.token
    if (!token) {
        res.status(202)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
    let result = await authService.verifyToken(token)
    if (!result) {
        res.status(500)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    } else {
        res.status(200)
        res.setHeader('Content-Type', 'application/json');
        res.send({
            status: result ? 'OK' : 'Can not login',
            isTrueToken: result
        })
    }
}

module.exports = {
    login: login,
    verifyToken: verifyToken
}