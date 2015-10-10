var mink = require('cucumber-mink');

// Local Chrome
var parameters = {
  driver: {
    logLevel: 'silent',
    desiredCapabilities: {
      browserName: 'chrome'
    },
    port: 4444
  }
};

//NOTE: need to do angular wait
// https://github.com/Adezandee/cucumber-mink/issues/26
// https://github.com/Adezandee/cucumber-mink/pull/29
// https://github.com/Adezandee/cucumber-mink/compare/feature/angularjs-support
// http://cucumber-mink.js.org/steps/#wait

module.exports = function () {
  mink.init(this, parameters);
};

