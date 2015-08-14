Template.master.rendered = ->
	$('html').addClass("scroll").removeClass "noscroll"
	window.pJSDom = []
	particlesJS.load 'particles-js', '/scripts/particles.json', ->
