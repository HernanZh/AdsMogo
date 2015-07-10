module.exports = {
showInterstitial: function () {
    cordova.exec(null, null, "LNAdsMogo", "showInterstitial", []);
},
cancelShow: function () {
    cordova.exec(null, null, "LNAdsMogo", "cancelShow", []);
},
interstitialLoaded: function (callback) {
    cordova.exec(callback, null, "LNAdsMogo", "interstitialLoaded", []);
},
interstitialClosed: function (callback) {
    cordova.exec(callback, null, "LNAdsMogo", "interstitialClosed", []);
}
}