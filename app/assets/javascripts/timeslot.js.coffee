jQuery ->
  $('#timeslot_starts_at').datepicker
    dateFormat: 'yy-mm-dd'

  $("input.datetimepicker").each (i) ->
    $(this).datetimepicker
      dateFormat: "yy-mm-dd"
      timeFormat: "h:mm TT"
      altFieldTimeOnly: false
      altFormat: "yy-mm-dd"
      altTimeFormat: "HH:mm"
      altField: $(this).next()