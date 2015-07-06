module.exports = {
showInterstitial: function () {
    cordova.exec(null, null, "LNAdsMogo", "showInterstitial", []);
},
cancelShow: function () {
    cordova.exec(null, null, "LNAdsMogo", "cancelShow", []);
},
}