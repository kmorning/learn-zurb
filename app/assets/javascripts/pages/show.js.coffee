go_back_after = (delay) ->
  setTimeout((-> history.go(-1)), delay)

ready = ->
  id = $('body').attr('id')
  console.log "Loaded page #{id}" 
  console.log "Do something different here." if id == "maintenance"
  go_back_after(8000) if id == "maintenance"

$(document).ready(ready)
#$(document).on('page:load', ready)

