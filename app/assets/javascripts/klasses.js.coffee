jQuery ->
  $('#topic_id').parent().hide()
  topics = $('#topic_id').html()
  $('#programme_id').change ->
    programme = $('#programme_id :selected').text()
    escaped_programme = programme.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(topics).filter("optgroup[label='#{escaped_programme}']").html()
    if options
      $('#topic_id').html(options)
      $('#topic_id').parent().show()
    else
      $('#topic_id').empty()
      $('#topic_id').parent().hide()

  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()      