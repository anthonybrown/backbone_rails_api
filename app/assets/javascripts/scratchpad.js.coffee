window.ScratchPad =
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}
	initialize: ->
		@AllNotes = [
			new @Models.Note(id: 1, title: 'Backbone on Rails', content: 'A workshop on using Backbone and Rails!')
			new @Models.Note(id: 2, title: 'Mr.Potatoe gets burned', content: 'A run in with a frialator')
			new @Models.Note(id: 3, title: 'World Views', content: 'When the cost of a war can feed the world\'s hungry\n'+
			'for 30 years, and we are not doing anything about\nthat situation, something is terrible wrong in this thinking.')
		]
		new @Routers.ScratchPadRouter
		Backbone.history.start(pushState: true)

window.App = window.ScratchPad

$(document).ready ->
	console.log 'DOM ready mofo\'s '
	ScratchPad.initialize()
