import blogServices from './../services/service.blog'

//GET /
let getAll = async (req, res) => {
    let blogs = await blogServices.getAll()
    if (blogs) {
        res.status(200)
        res.setHeader('Content-Type', 'application/json');
        res.send(JSON.stringify(blogs))
    } else {
        res.status(500)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
}

//GET /
let getHomeBlog = async (req, res) => {
    let blogs = await blogServices.getHomeBlog()
    if (blogs) {
        res.status(200)
        res.setHeader('Content-Type', 'application/json');
        res.send(JSON.stringify(blogs))
    } else {
        res.status(500)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
}

//GET /blog
let getBlogById = async (req, res) => {
    let blogId = req.query.bid
    if (!blogId) {
        res.status(202)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
    let blog = await blogServices.getBlogById(blogId)
    if (blog) {
        res.status(200)
        res.setHeader('Content-Type', 'application/json');
        res.send(JSON.stringify(blog))
    } else {
        res.status(500)
        res.setHeader('Content-Type', 'application/json');
        res.send(null)
    }
}

//POST /blog/
let createBlog = (req, res) => {
    let newBlog = req.body
    let isSuccess = false
    if (newBlog) {
        isSuccess = blogServices.createBlog(newBlog)
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

// PUT /blog/
let editBlog = async (req, res) => {
    let blog = req.body

    let isSuccess = false
    if (newData) {
        isSuccess = await blogServices.editBlog(blog)
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

//DELETE /blog
let removeBlogById = async (req, res) => {
    let bid = req.query.bid
    let isSuccess = false
    if (fid) {
        isSuccess = await blogServices.removeBlogById(bid)
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


module.exports = {
    getAll: getAll,
    getHomeBlog: getHomeBlog,
    getBlogById: getBlogById,
    createBlog: createBlog,
    editBlog: editBlog,
    removeBlogById: removeBlogById
}