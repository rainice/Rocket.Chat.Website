Router.route '/stats', ->
	statistics = this.request.body
	console.log "Received Client Statistics: #{statistics?.uniqueId}"
	
	unless statistics?
		return this.response.end(JSON.stringify { success: false })


	Meteor.defer ->
		statistics = _.pick statistics, [ "uniqueId", "version", "versionDate", "totalUsers", "activeUsers", "nonActiveUsers", "onlineUsers", "awayUsers", "offlineUsers", "totalRooms", "totalChannels", "totalPrivateGroups", "totalDirect", "totalMessages", "maxRoomUsers", "avgChannelUsers", "avgPrivateGroupUsers", "os", "createdAt" ]
	
		for strField in [ "uniqueId", "version", "versionDate" ]
			if statistics[strField]? and not _.isString statistics[strField]
				delete statistics[strField]

		for numField in [ "totalUsers", "activeUsers", "nonActiveUsers", "onlineUsers", "awayUsers", "offlineUsers", "totalRooms", "totalChannels", "totalPrivateGroups", "totalDirect", "totalMessages", "maxRoomUsers", "avgChannelUsers", "avgPrivateGroupUsers" ]
			if statistics[numField]? and not _.isNumber statistics[numField]
				delete statistics[numField]

		# @TODO: validate os and createdAt

		ClientStatistics.insert statistics
	
	return this.response.end(JSON.stringify { success: true })

, { where: 'server' }