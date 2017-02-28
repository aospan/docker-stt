# Speech to text service (STT) 

## Description
Dockerfile for speech to text (STT) based on Kaldi ASR (http://kaldi-asr.org/)
Kaldi's 'chain' models (type of DNN-HMM model) used
Model released by api.ai team (https://github.com/api-ai/api-ai-english-asr-model)

## Usage
In the command line run following commands
```
docker build -t stt .
docker run -it stt
```
file in.wav will be processed and output should contain following text:
```
/opt/in/in.wav HELLO THIS IS SPEECH TO TEXT RECOGNITION FOR JOKER PROJECT 
```
output also contains a lot of debug messages (ignore it).

## Provide your own audio (wav) file
Record your file first with following command (works under Linux)
```
mkdir in
arecord -d 10 -fS16_LE -r 16000 -c 1 in/in.wav 
```
or you can prepare in.wav in any other software. File format: `16 bit, mono 16000 Hz`

now you can run docker container:
```
docker run -it -v `pwd`/in:/opt/in stt
```

(c) Abylay Ospan <aospan@jokersys.com>, 2017
https://jokersys.com
