Router.route '/stats', ->
	statistics = this.request.body
	Meteor.defer ->
		ClientStatistics.insert statistics
		console.log "Received Client Statistics: #{statistics.uniqueId}"
	this.response.end(JSON.stringify { success: true })
, { where: 'server' }