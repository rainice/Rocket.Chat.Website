Router.configure
	layoutTemplate: 'master'
	notFoundTemplate: 'error'
	onBeforeAction: ->
		@next()
	onAfterAction: ->
		unless isPhantomJS?
			dataLayer.push({'event':'pageview'}) if dataLayer?

Router.route '/',
	name: "index"
	data: {}
	action: ->
		this.render 'index'

Router.route '/privacy',
	name: "privacy"
	data: {}
	action: ->
		this.render 'privacy'
