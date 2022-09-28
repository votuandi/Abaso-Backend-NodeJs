import queryString from '../utilities/queryString'
import excuteQuery from '../utilities/excuteQuery';
import Blog from '../models/Blog';
import solveData from '../utilities/solveData';

let getAll = async () => {
    try {
        let blogs = await excuteQuery(queryString.SELECT_ALL_BLOGS)
        return Object.values(JSON.parse(JSON.stringify(blogs)))
    } catch {
        return null
    }
}

let getHomeBlog = async () => {
    try {
        let blogs = await excuteQuery(queryString.SELECT_HOME_BLOGS)
        return Object.values(JSON.parse(JSON.stringify(blogs)))
    } catch {
        return null
    }
}

let getBlogById = async (_bid) => {
    try {
        let query = `CALL getBlogById(${_bid})`
        let blog = {
            ...(await excuteQuery(query))[0][0]
        }
        return new Blog(blog)
    } catch {
        return null
    }
}

let createBlog = async (_newBlog) => {
    try {
        //INSERT BLOG
        let createDate = solveData.getCurrentDate()
        let query = ` CALL createBlog('${_newBlog.title}', '${_newBlog.sapo}', '${_newBlog.pdf}', '${_newBlog.img}', '${createDate}',@inserted_id); SELECT @inserted_id;`

        //EXCUTE INSERT BLOG
        let newBlogId = (await excuteQuery(query))[1][0]['@inserted_id']
        if (newBlogId == null) {
            console.log('Error when creating new Product');
            return null
        }
        return newBlogId
    } catch {
        return null
    }
}

let editBlog = async (_blog) => {
    try {
        //UPDATE BLOG
        let createDate = solveData.getCurrentDate()
        let query = `CALL editBlog(${_blog.id} ,'${_blog.title}', '${_blog.sapo}', '${_blog.pdf}', '${_blog.img}', '${createDate}');`

        //EXCUTE UPDATE BLOG
        let res = await excuteQuery(query)
        if (res == null) {
            console.log('Error when editing Blog');
            return null
        }
        return res
    } catch {
        return null
    }
}

let removeBlogById = async (_bid) => {
    try {
        //REMOVE BLOG BY ID
        let query = `CALL removeBlogById(${_bid})`

        //EXCUTE
        let res = await excuteQuery(query)
        if (res == null) {
            console.log('Error when removing Blog');
        }
    } catch {
        return null
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