# import logging
from pyrogram import Client, idle

app = Client("tgvc")
# logging.basicConfig(level=logging.INFO)
app.start()
print('>>> XZONE STARTED')
idle()
app.stop()
print('\n>>> XZONE STOPPED')
