'use strict'

selenium = require 'selenium-webdriver'

safari = (platform) ->
  if platform is 'darwin'
    return new selenium.Builder()
      .withCapabilities(selenium.Capabilities.safari())
      .build()
  geckodriver = require('geckodriver').path
  customGecko = selenium.Capabilities.phantomjs()
  customGecko.set "firefox.binary.path", geckodriver
  return new selenium.Builder()
    .withCapabilities customGecko
    .build()

Driver = ->
  @.use = safari process.platform
  true

Driver.prototype.close = ->
  @.use.quit()

module.exports = Driver
