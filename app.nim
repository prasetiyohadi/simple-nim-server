import asynchttpserver, asyncdispatch

var server = newAsyncHttpServer()
proc cb(req: Request) {.async} =
    await req.respond(Http200, "Hello World!\n", newHttpHeaders())

waitFor server.serve(Port(8080), cb)
