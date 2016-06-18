var setActive = function() {
    window.setTimeout(function() {
        document.getElementsByTagName('body')[0].className = document.getElementsByTagName('body')[0].className.replace('noJS', 'active');
    }, 300);
};

module.exports = setActive;
