const selectAllProducts = `SELECT * FROM product`

const selectHomeProducts = `SELECT * FROM product LIMIT 2`

const selectAllFaqs = `SELECT * FROM faq`

const selectAllBlogs = `SELECT * FROM blog`

const selectHomeBlogs = `SELECT * FROM blog LIMIT 3`

const createProduct = `USE learn_nodejs; DELIMITER $$ DROP PROCEDURE IF EXISTS createProduct $$ CREATE PROCEDURE createProduct(IN __name varchar(255), __version varchar(255), __intro LONGTEXT, __property_names LONGTEXT, __details LONGTEXT, __additional_information LONGTEXT ) BEGIN DECLARE _name varchar(255) DEFAULT __name; DECLARE _version varchar(255)  DEFAULT __version; DECLARE _intro LONGTEXT DEFAULT __intro; DECLARE _property_names LONGTEXT DEFAULT __property_names; DECLARE _details LONGTEXT DEFAULT __details; DECLARE _additional_information LONGTEXT DEFAULT __additional_information; INSERT INTO product (name, version, intro, property_names, details, additional_information) VALUES (_name, _version, _intro, _property_names, _details, _additional_information); END $$ DELIMITER ;`

const searchFaq = `SELECT * FROM faq WHERE question LIKE '%<$keyword>%'`

module.exports = {
    CREATE_PRODUCT: createProduct,
    SELECT_ALL_PRODUCTS: selectAllProducts,
    SELECT_HOME_PRODUCTS: selectHomeProducts,
    SELECT_ALL_FAQS: selectAllFaqs,
    SELECT_ALL_BLOGS: selectAllBlogs,
    SELECT_HOME_BLOGS: selectHomeBlogs,
    SEARCH_FAQ: searchFaq
}