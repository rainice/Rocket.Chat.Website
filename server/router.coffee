Router.route '/stats', ->
	console.log this.request.body
	this.response.end(JSON.stringify { success: true })
, { where: 'server' }