#include "/usr/local/Superpowered/SuperpoweredAnalyzer.h"
#include "CLANG_SuperpoweredAnalyzer.h"
unsigned char * SuperpoweredWaveform_getresult(void * class_handler,int* size)
{
  SuperpoweredWaveform * real_class_handler = (SuperpoweredWaveform *)class_handler;
  return real_class_handler->getresult(size);
}

void SuperpoweredWaveform_process(void * class_handler,float* input, unsigned int numberOfFrames, int lengthSeconds)
{
  SuperpoweredWaveform * real_class_handler = (SuperpoweredWaveform *)class_handler;
  return real_class_handler->process(input,numberOfFrames,lengthSeconds);
}

void * SuperpoweredWaveform_new(unsigned int samplerate, int lengthSeconds)
{
  return (void*)(new SuperpoweredWaveform(samplerate,lengthSeconds));
}

void SuperpoweredWaveform_delete(void * class_handler)
{
  delete (SuperpoweredWaveform *)class_handler;
}

void SuperpoweredAnalyzer_getresults(void * class_handler,unsigned char** averageWaveform, unsigned char** peakWaveform, unsigned char** lowWaveform, unsigned char** midWaveform, unsigned char** highWaveform, unsigned char** notes, int* waveformSize, char** overviewWaveform, int* overviewSize, float* averageDecibel, float* loudpartsAverageDecibel, float* peakDecibel, float* bpm, float* beatgridStartMs, int* keyIndex, float previousBpm)
{
  SuperpoweredAnalyzer * real_class_handler = (SuperpoweredAnalyzer *)class_handler;
  return real_class_handler->getresults(averageWaveform,peakWaveform,lowWaveform,midWaveform,highWaveform,notes,waveformSize,overviewWaveform,overviewSize,averageDecibel,loudpartsAverageDecibel,peakDecibel,bpm,beatgridStartMs,keyIndex,previousBpm);
}

void * SuperpoweredAnalyzer_new(unsigned int samplerate, float bpm, int lengthSeconds, float minimumBpm, float maximumBpm)
{
  return (void*)(new SuperpoweredAnalyzer(samplerate,bpm,lengthSeconds,minimumBpm,maximumBpm));
}

void SuperpoweredAnalyzer_process(void * class_handler,float* input, unsigned int numberOfFrames, int lengthSeconds)
{
  SuperpoweredAnalyzer * real_class_handler = (SuperpoweredAnalyzer *)class_handler;
  return real_class_handler->process(input,numberOfFrames,lengthSeconds);
}

void SuperpoweredAnalyzer_delete(void * class_handler)
{
  delete (SuperpoweredAnalyzer *)class_handler;
}

void SuperpoweredLiveAnalyzer_delete(void * class_handler)
{
  delete (SuperpoweredLiveAnalyzer *)class_handler;
}

void SuperpoweredLiveAnalyzer_setSamplerate(void * class_handler,unsigned int samplerate)
{
  SuperpoweredLiveAnalyzer * real_class_handler = (SuperpoweredLiveAnalyzer *)class_handler;
  return real_class_handler->setSamplerate(samplerate);
}

void SuperpoweredLiveAnalyzer_process(void * class_handler,float* input, unsigned int numberOfFrames)
{
  SuperpoweredLiveAnalyzer * real_class_handler = (SuperpoweredLiveAnalyzer *)class_handler;
  return real_class_handler->process(input,numberOfFrames);
}

void * SuperpoweredLiveAnalyzer_new(unsigned int samplerate)
{
  return (void*)(new SuperpoweredLiveAnalyzer(samplerate));
}

float SuperpoweredLiveAnalyzer_bpm(void * class_handler)
{
  SuperpoweredLiveAnalyzer * real_class_handler = (SuperpoweredLiveAnalyzer *)class_handler;
  return real_class_handler->bpm;
}

int SuperpoweredLiveAnalyzer_keyIndex(void * class_handler)
{
  SuperpoweredLiveAnalyzer * real_class_handler = (SuperpoweredLiveAnalyzer *)class_handler;
  return real_class_handler->keyIndex;
}

int SuperpoweredLiveAnalyzer_silence(void * class_handler)
{
  SuperpoweredLiveAnalyzer * real_class_handler = (SuperpoweredLiveAnalyzer *)class_handler;
  return real_class_handler->silence;
}

