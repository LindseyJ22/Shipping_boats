# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	$('.destroy_boat').on 'ajax:success', ->
		$(this).closest('.boat_wrapper').remove()

	$('.job_boat_form').on 'submit', ->
		window.job_section = $(this).closest('.boat').attr('id')
