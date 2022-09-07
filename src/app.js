import express from 'express'
import bodyParser from 'body-parser'
import initWebRoutes from './routes'
import cors from 'cors'
require('dotenv').config()

let app = express();

app.use(cors())
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
    extended: true
}))

initWebRoutes(app)

let port = process.env.PORT
app.listen(port, () => {
    console.log('Backend run on http://localhost:' + port)
})