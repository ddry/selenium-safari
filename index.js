// Generated by CoffeeScript 1.12.3
(function() {
  'use strict';
  var Driver, safari, selenium;

  selenium = require('selenium-webdriver');

  safari = function(platform) {
    var customGecko, geckodriver;
    if (platform === 'darwin') {
      return new selenium.Builder().withCapabilities(selenium.Capabilities.safari()).build();
    }
    geckodriver = require('geckodriver').path;
    customGecko = selenium.Capabilities.phantomjs();
    customGecko.set("firefox.binary.path", geckodriver);
    return new selenium.Builder().withCapabilities(customGecko).build();
  };

  Driver = function() {
    this.use = safari(process.platform);
    return true;
  };

  Driver.prototype.close = function() {
    return this.use.quit();
  };

  module.exports = Driver;

}).call(this);
