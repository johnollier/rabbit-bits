from threading import Thread
from async_producer import AsyncPublisher
from queue import Queue
import time


class Producer:

    def __init__(self, message_queue):
        self._running = True
        self.message_queue = message_queue
        self.url = 'amqp://guest:guest@localhost:5672/%2F?connection_attempts=3'
        self.publisher = AsyncPublisher(self.url, self.message_queue)

    def run(self):
        self.publisher.run()

    def terminate(self):
        self.publisher.stop()


messages = Queue()
producer = Producer(messages)
producer_thread = Thread(target=producer.run)
producer_thread.start()

for i in range(100):
    message = "message" + str(i)
    messages.put(message)

print('added messages')

print('sleeping')
time.sleep(10)

producer.terminate()
print('terminated')
producer_thread.join()
print('joined')
