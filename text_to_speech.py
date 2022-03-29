from gtts import gTTS  # google text to speech
from sys import argv, stdin
import os

# This module is imported so that we can
# play the converted audio

my_text = "".join(argv[1:])

# Language in which you want to convert
language = 'es'

# Passing the text and language to the engine,
# here we have marked slow=False. Which tells
# the module that the converted audio should
# have a high speed
myobj = gTTS(text=my_text, lang=language, slow=False)
myobj.save("audio.mp3")

# Playing the converted file
os.system("play audio.mp3 > /dev/null 2>&1")
os.system("rm audio.mp3 > /dev/null 2>&1")
