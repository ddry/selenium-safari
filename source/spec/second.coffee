'use strict'

main = require './main'

module.exports = main.apply
  only: [ 'safari' ]
  methods:
    safari:
      only: [ 'spec_02' ]