$(document).ready ->
  success_callback =
    (e, data, status, xhr) -> $("#result").html(xhr.responseText)
  error_callback =
    (e, xhr, status, error) -> $("#result").html("ERROR")
  $("form").
    on("ajax:success", success_callback).
    on("ajax:error", error_callback)
