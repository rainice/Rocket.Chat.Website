@cdnHost = (url="") ->
	if document.location.hostname is 'localhost' or document.location.hostname.indexOf('local-') is 0 or document.location.hostname.indexOf('192.168.') is 0
		return "" + url
	else
		return "//cdn-#{document.location.hostname}" + url

UI.registerHelper 'cdnHost', (url) ->
	return cdnHost url