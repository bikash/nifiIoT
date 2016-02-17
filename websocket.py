import tornado.httpserver
import tornado.websocket
import tornado.ioloop
import tornado.web

class WSHandler(tornado.websocket.WebSocketHandler):

  def open(self):
    print 'user is connected.\n'

  def on_message(self, message):
    print 'received message: %s\n' %message
    self.write_message(message + ' OK')

  def on_close(self):
    print 'connection closed\n'

application = tornado.web.Application([(r'/ws', WSHandler),])

if __name__ == "__main__":
  http_server = tornado.httpserver.HTTPServer(application)
  http_server.listen(5555)
  tornado.ioloop.IOLoop.instance().start()