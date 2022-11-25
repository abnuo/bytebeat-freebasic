#include "bass.bi"

screenres 256,256
windowtitle "ByteBeat"
dim t as integer
BASS_Init(-1,8000,0,0,0)
dim as HSTREAM stream = BASS_StreamCreate(8000,1,BASS_SAMPLE_8BITS,STREAMPROC_PUSH,0)
dim expr as string = ""
BASS_ChannelPlay(stream,0)
do
for y as integer=0 to 256
for x as integer=0 to 256
if inkey="e" then end
dim buf(0) as ubyte
buf(0)=t and t shr 8
BASS_StreamPutData(stream,@buf(0),1)
pset (x,y),buf(0)
t+=1
next x
next y
loop
