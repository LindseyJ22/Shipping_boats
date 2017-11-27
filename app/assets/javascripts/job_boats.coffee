# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	$('.remove_booking').on 'ajax:success', ->
		count = $(this.closest('.booking')).data('count')
		count2 = $(this.closest('.booking')).data('job_id')
		job_count = $('#' + count2 + "_container")
		newNumber = parseInt(job_count.html()) + count
		job_count.html(newNumber)
		$(this).closest('.booking').remove()