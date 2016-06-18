var addDateToFooter = function() {
    var dateElement = document.getElementById('dateNow');
    if (dateElement) {
        var tempDate = new Date();
        dateElement.innerHTML = tempDate.getFullYear();
    }
};

module.exports = addDateToFooter;
