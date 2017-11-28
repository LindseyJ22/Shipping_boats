# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	$(document).on 'ajax:success', '.remove_booking', ->
		count = $(this).closest('.booking').data('count')
		count2 = $(this).closest('.booking').data('job_id')
		job_count = $('#' + count2 + "_container")
		newNumber = parseInt(job_count.html()) + count
		job_count.html(newNumber)
		$(this).closest('.booking').remove()

	$('.job_boat_form').on 'submit', ->
		window.job_section = $(this).closest('.job').attr('id')