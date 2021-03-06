class App.Views.EditNote extends Backbone.View
	template: JST['notes/edit']

	events:
		'submit': 'saveModel'

	tagName: 'form'

	render: ->
		@$el.html(@template(note: @model))
		this

	saveModel: (e) ->
		e.preventDefault()

		@model.set
			title: @$('.note-title').val()
			content: @$('.note-content').val()
		Backbone.history.navigate('/', trigger: true)
