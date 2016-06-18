var scrollEvents = function(callback) {
    var doc = document.documentElement;
    var top = (window.pageYOffset || doc.scrollTop) - (doc.clientTop || 0);
    if (callback) {
        return callback(top);
    }
    return false;
};

module.exports = scrollEvents;
