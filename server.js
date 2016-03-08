var vertx = require('vertx');
vertx.createHttpServer().requestHandler(function(r) {
r.response.end("test 1\n");}).listen(5555);
