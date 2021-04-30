'use strict'

const logo = require('asciiart-logo')

module.exports = function (config) {
  console.log(logo(config).render())
}
