go_back_after = (s) ->
  delay = s * 1000
  setTimeout((-> history.go(-1)), delay)
  for i in [s..1] by -1
    do (i) -> 
      setTimeout((-> console.log("#{i} second(s) left")), 1000)

ready = ->
  id = $('body').attr('id')
  console.log "Loaded page #{id}" 
  console.log "Do something different here." if id == "maintenance"
  go_back_after(8) if id == "maintenance"

$(document).ready(ready)
#$(document).on('page:load', ready)

