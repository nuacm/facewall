window.env = require 'env'
window.utils = require 'utils'
window.constants = require 'constants'
window.app = require 'application'

_.mixin _.string.exports()

$ -> app.initialize()