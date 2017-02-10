'use strict'

spec = require('ddry/modular')

module.exports = spec
  title: 'Selenium Safari testing'
  spec: 'spec'
  matchers: 'ddry-selenium-matchers'
  moduleTitles:
    safari: 'Selenium Safari testing'
    instance: 'Safari driver as it is'
  outside:
    safari: 'index'
    instance: 'index'
  use: [ 'safari' ]
  initial:
    instance: []
