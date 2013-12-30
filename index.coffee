###

    Friendly Dragon Middleware

                    __                  __
                   ( _)                ( _)
                  / / \\              / /\_\_
                 / /   \\            / / | \ \
                / /     \\          / /  |\ \ \
               /  /   ,  \ ,       / /   /|  \ \
              /  /    |\_ /|      / /   / \   \_\
             /  /  |\/ _ '_| \   / /   /   \    \\
            |  /   |/  0 \0\    / |    |    \    \\
            |    |\|      \_\_ /  /    |     \    \\
            |  | |/    \.\ o\o)  /      \     |    \\
            \    |     /\\`v-v  /        |    |     \\
             | \/    /_| \\_|  /         |    | \    \\
             | |    /__/_     /   _____  |    |  \    \\
             \|    [__]  \_/  |_________  \   |   \    ()
              /    [___] (    \         \  |\ |   |   //
             |    [___]                  |\| \|   /  |/
            /|    [____]                  \  |/\ / / ||
           (  \   [____ /     ) _\      \  \    \| | ||
            \  \  [_____|    / /     __/    \   / / //
            |   \ [_____/   / /        \    |   \/ //
            |   /  '----|   /=\____   _/    |   / //
         __ /  /        |  /   ___/  _/\    \  | ||
        (/-(/-\)       /   \  (/\/\)/  |    /  | /
                      (/\/\)           /   /   //
                             _________/   /    /
                            \____________/    (

###
'use strict'

_ = require 'lodash'
debug = require 'debug'
logger = debug 'FDMiddleware'

module.exports = (app, options = {}) ->
	logger 'middlware %s %s', app, options
	app.use require('./middleware/logger.coffee')(app,options)
	logger 'Loaded Basic Middleware: Logger (Sessions, Body Parser)'
	return
