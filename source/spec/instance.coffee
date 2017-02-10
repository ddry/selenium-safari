'use strict'

main = require './main'

module.exports = main.apply
  only: [ 'instance' ]
