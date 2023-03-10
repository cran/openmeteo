structure(list(
  url = "https://api.open-meteo.com/v1/forecast?latitude=45.46427&longitude=9.18951&timezone=Europe/Rome&hourly=lksdfj",
  status_code = 400L, headers = structure(list(
    date = "Thu, 09 Mar 2023 03:29:15 GMT",
    `content-type` = "application/json; charset=utf-8", `content-length` = "106",
    `content-encoding` = "deflate"
  ), class = c(
    "insensitive",
    "list"
  )), all_headers = list(list(
    status = 400L, version = "HTTP/2",
    headers = structure(list(
      date = "Thu, 09 Mar 2023 03:29:15 GMT",
      `content-type` = "application/json; charset=utf-8",
      `content-length` = "106", `content-encoding` = "deflate"
    ), class = c(
      "insensitive",
      "list"
    ))
  )), cookies = structure(list(
    domain = logical(0),
    flag = logical(0), path = logical(0), secure = logical(0),
    expiration = structure(numeric(0), class = c(
      "POSIXct",
      "POSIXt"
    )), name = logical(0), value = logical(0)
  ), row.names = integer(0), class = "data.frame"),
  content = charToRaw("{\"error\":true,\"reason\":\"Cannot initialize ForecastSurfaceVariable from invalid String value lksdfj for key hourly\"}"),
  date = structure(1678332555, class = c("POSIXct", "POSIXt"), tzone = "GMT"), times = c(
    redirect = 0, namelookup = 0.001215,
    connect = 0.342676, pretransfer = 1.315257, starttransfer = 1.686029,
    total = 1.686112
  )
), class = "response")
