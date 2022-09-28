class User {
    constructor(_user) {
        console.log('---------------');
        console.log(_user);
        console.log('---------------');
        this.id = _user.id
        this.username = _user.username
        this.password = _user.password
    }
}

module.exports = User