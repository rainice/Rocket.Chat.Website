UI.registerHelper 'loading', ->
	return Session.get('loading') is true