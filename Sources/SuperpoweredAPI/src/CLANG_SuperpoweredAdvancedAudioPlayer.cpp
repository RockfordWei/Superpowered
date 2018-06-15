#include "/usr/local/Superpowered/SuperpoweredAdvancedAudioPlayer.h"
#include "CLANG_SuperpoweredAdvancedAudioPlayer.h"

// READ-ONLY
double SuperpoweredAdvancedAudioPlayer_positionMs(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->positionMs;
}

float SuperpoweredAdvancedAudioPlayer_positionPercent(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->positionPercent;
}

int SuperpoweredAdvancedAudioPlayer_positionSeconds(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->positionSeconds;
}

double SuperpoweredAdvancedAudioPlayer_displayPositionMs(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->displayPositionMs;
}

unsigned int SuperpoweredAdvancedAudioPlayer_durationMs(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->durationMs;
}

unsigned int SuperpoweredAdvancedAudioPlayer_durationSeconds(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->durationSeconds;
}

int SuperpoweredAdvancedAudioPlayer_waitingForBuffering(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->waitingForBuffering;
}

int SuperpoweredAdvancedAudioPlayer_playing(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->playing;
}

double SuperpoweredAdvancedAudioPlayer_waitingForSyncMs(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->waitingForSyncMs;
}

double SuperpoweredAdvancedAudioPlayer_willSyncMs(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->willSyncMs;
}

double SuperpoweredAdvancedAudioPlayer_audioStartMs(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->audioStartMs;
}


double SuperpoweredAdvancedAudioPlayer_tempo(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->tempo;
}

int SuperpoweredAdvancedAudioPlayer_masterTempo(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->masterTempo;
}

int SuperpoweredAdvancedAudioPlayer_pitchShift(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->pitchShift;
}

int SuperpoweredAdvancedAudioPlayer_pitchShiftCents(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->pitchShiftCents;
}

double SuperpoweredAdvancedAudioPlayer_bpm(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->bpm;
}

double SuperpoweredAdvancedAudioPlayer_currentBpm(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->currentBpm;
}


int SuperpoweredAdvancedAudioPlayer_slip(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->slip;
}

int SuperpoweredAdvancedAudioPlayer_scratching(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->scratching;
}

int SuperpoweredAdvancedAudioPlayer_reverse(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->reverse;
}

int SuperpoweredAdvancedAudioPlayer_looping(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->looping;
}


double SuperpoweredAdvancedAudioPlayer_firstBeatMs(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->firstBeatMs;
}

double SuperpoweredAdvancedAudioPlayer_msElapsedSinceLastBeat(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->msElapsedSinceLastBeat;
}

double SuperpoweredAdvancedAudioPlayer_phase(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->phase;
}

double SuperpoweredAdvancedAudioPlayer_quantum(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->quantum;
}

double SuperpoweredAdvancedAudioPlayer_bendMsOffset(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->bendMsOffset;
}

float SuperpoweredAdvancedAudioPlayer_beatIndex(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->beatIndex;
}


float SuperpoweredAdvancedAudioPlayer_bufferStartPercent(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->bufferStartPercent;
}

float SuperpoweredAdvancedAudioPlayer_bufferEndPercent(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->bufferEndPercent;
}

int SuperpoweredAdvancedAudioPlayer_currentBps(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->currentBps;
}

int SuperpoweredAdvancedAudioPlayer_loadErrorCode(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->loadErrorCode;
}


char * SuperpoweredAdvancedAudioPlayer_fullyDownloadedFilePath(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->fullyDownloadedFilePath;
}

char * SuperpoweredAdvancedAudioPlayer_tempFolderPath(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return SuperpoweredAdvancedAudioPlayer::tempFolderPath;
}

// READ-WRITE
int SuperpoweredAdvancedAudioPlayer_syncMode_get(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->syncMode;
}
void SuperpoweredAdvancedAudioPlayer_syncMode_set(void * class_handler, int newValue)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  real_class_handler->syncMode = (SuperpoweredAdvancedAudioPlayerSyncMode) newValue;
}

int SuperpoweredAdvancedAudioPlayer_fixDoubleOrHalfBPM_get(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->fixDoubleOrHalfBPM;
}
void SuperpoweredAdvancedAudioPlayer_fixDoubleOrHalfBPM_set(void * class_handler, int newValue)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  real_class_handler->fixDoubleOrHalfBPM = newValue ? true: false;
}

int SuperpoweredAdvancedAudioPlayer_dynamicHLSAlternativeSwitching_get(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->dynamicHLSAlternativeSwitching ? 1 : 0;
}
void SuperpoweredAdvancedAudioPlayer_dynamicHLSAlternativeSwitching_set(void * class_handler, int newValue)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  real_class_handler->dynamicHLSAlternativeSwitching = newValue ? true: false;
}

int SuperpoweredAdvancedAudioPlayer_reverseToForwardAtLoopStart_get(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->reverseToForwardAtLoopStart ? 1: 0;
}

void SuperpoweredAdvancedAudioPlayer_reverseToForwardAtLoopStart_set(void * class_handler, int newValue)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  real_class_handler->reverseToForwardAtLoopStart = newValue ? true : false;
}

int SuperpoweredAdvancedAudioPlayer_getAudioStartMs_get(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->getAudioStartMs;
}

void SuperpoweredAdvancedAudioPlayer_getAudioStartMs_set(void * class_handler, int newValue)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  real_class_handler->getAudioStartMs = newValue ? true: false;
}

int SuperpoweredAdvancedAudioPlayer_downloadSecondsAhead_get(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->downloadSecondsAhead;
}
void SuperpoweredAdvancedAudioPlayer_downloadSecondsAhead_set(void * class_handler, int newValue)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  real_class_handler->downloadSecondsAhead = newValue;
}

int SuperpoweredAdvancedAudioPlayer_maxDownloadAttempts_get(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->maxDownloadAttempts;
}
void SuperpoweredAdvancedAudioPlayer_maxDownloadAttempts_set(void * class_handler, int newValue)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  real_class_handler->maxDownloadAttempts = newValue;
}

float SuperpoweredAdvancedAudioPlayer_minTimeStretchingTempo_get(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->minTimeStretchingTempo;
}
void SuperpoweredAdvancedAudioPlayer_minTimeStretchingTempo_set(void * class_handler, float newValue)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  real_class_handler->minTimeStretchingTempo = newValue;
}

float SuperpoweredAdvancedAudioPlayer_maxTimeStretchingTempo_get(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->maxTimeStretchingTempo;
}
void SuperpoweredAdvancedAudioPlayer_maxTimeStretchingTempo_set(void * class_handler, float newValue)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  real_class_handler->maxTimeStretchingTempo = newValue;
}

int SuperpoweredAdvancedAudioPlayer_handleStems_get(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->handleStems;
}
void SuperpoweredAdvancedAudioPlayer_handleStems_set(void * class_handler, int newValue)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  real_class_handler->handleStems = newValue ? true: false;
}

double SuperpoweredAdvancedAudioPlayer_defaultQuantum_get(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->defaultQuantum;
}
void SuperpoweredAdvancedAudioPlayer_defaultQuantum_set(void * class_handler, double newValue)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  real_class_handler->defaultQuantum = newValue;
}

// methods
void SuperpoweredAdvancedAudioPlayer_togglePlayback(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->togglePlayback();
}

void SuperpoweredAdvancedAudioPlayer_endScratch(void * class_handler,int returnToStateBeforeScratch)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->endScratch(returnToStateBeforeScratch);
}

void SuperpoweredAdvancedAudioPlayer_setFirstBeatMs(void * class_handler,double ms)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->setFirstBeatMs(ms);
}

int SuperpoweredAdvancedAudioPlayer_loop(void * class_handler,double startMs, double lengthMs, int jumpToStartMs, unsigned char pointID, int synchronisedStart, int forceDefaultQuantum, int preferWaitingforSynchronisedStart)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->loop(startMs,lengthMs,jumpToStartMs,pointID,synchronisedStart,forceDefaultQuantum,preferWaitingforSynchronisedStart);
}

void SuperpoweredAdvancedAudioPlayer_scratch(void * class_handler,double pitch, float smoothing)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->scratch(pitch,smoothing);
}

double SuperpoweredAdvancedAudioPlayer_getMsDifference(void * class_handler,double phase, double quantum)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->getMsDifference(phase,quantum);
}

void SuperpoweredAdvancedAudioPlayer_clearTempFolder()
{
  return SuperpoweredAdvancedAudioPlayer::clearTempFolder();
}

void SuperpoweredAdvancedAudioPlayer_setPitchShiftCents(void * class_handler,int pitchShiftCents)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->setPitchShiftCents(pitchShiftCents);
}

void SuperpoweredAdvancedAudioPlayer_setTempFolder(char const* path)
{
  return SuperpoweredAdvancedAudioPlayer::setTempFolder(path);
}

void SuperpoweredAdvancedAudioPlayer_onMediaserverInterrupt(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->onMediaserverInterrupt();
}

int SuperpoweredAdvancedAudioPlayer_loopBetween(void * class_handler,double startMs, double endMs, int jumpToStartMs, unsigned char pointID, int synchronisedStart, int forceDefaultQuantum, int preferWaitingforSynchronisedStart)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->loopBetween(startMs,endMs,jumpToStartMs,pointID,synchronisedStart,forceDefaultQuantum,preferWaitingforSynchronisedStart);
}

void SuperpoweredAdvancedAudioPlayer_setPosition(void * class_handler,double ms, int andStop, int synchronisedStart, int forceDefaultQuantum, int preferWaitingforSynchronisedStart)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->setPosition(ms,andStop,synchronisedStart,forceDefaultQuantum,preferWaitingforSynchronisedStart);
}

void SuperpoweredAdvancedAudioPlayer_setBpm(void * class_handler,double newBpm)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->setBpm(newBpm);
}

double SuperpoweredAdvancedAudioPlayer_lastProcessMs(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->lastProcessMs();
}

void SuperpoweredAdvancedAudioPlayer_resetBendMsOffset(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->resetBendMsOffset();
}

void SuperpoweredAdvancedAudioPlayer_jogTick(void * class_handler,int value, int bendStretch, float bendMaxPercent, unsigned int bendHoldMs, int parameterMode)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->jogTick(value,bendStretch,bendMaxPercent,bendHoldMs,parameterMode);
}

void SuperpoweredAdvancedAudioPlayer_cachePosition(void * class_handler,double ms, unsigned char pointID)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->cachePosition(ms,pointID);
}

int SuperpoweredAdvancedAudioPlayer_process(void * class_handler,float* buffer, int bufferAdd, unsigned int numberOfSamples, float volume, double masterBpm, double masterMsElapsedSinceLastBeat, double phase, double quantum)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->process(buffer,bufferAdd,numberOfSamples,volume,masterBpm,masterMsElapsedSinceLastBeat,phase,quantum);
}

void SuperpoweredAdvancedAudioPlayer_pitchBend(void * class_handler,float maxPercent, int bendStretch, int faster, unsigned int holdMs)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->pitchBend(maxPercent,bendStretch,faster,holdMs);
}

void * SuperpoweredAdvancedAudioPlayer_new(void* clientData,void (*callback)(void*, int, void*), unsigned int sampleRate, unsigned char cachedPointCount, unsigned int internalBufferSizeSeconds, unsigned int negativeSeconds)
{
  SuperpoweredAdvancedAudioPlayerCallback cb = (SuperpoweredAdvancedAudioPlayerCallback)callback;
  return (void*)(new SuperpoweredAdvancedAudioPlayer(clientData,cb,sampleRate,cachedPointCount,internalBufferSizeSeconds,negativeSeconds));
}

void SuperpoweredAdvancedAudioPlayer_seek(void * class_handler,double percent)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->seek(percent);
}

void SuperpoweredAdvancedAudioPlayer_open_B(void * class_handler,char const* path, int offset, int length, char** customHTTPHeaders)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->open(path,offset,length,customHTTPHeaders);
}

void SuperpoweredAdvancedAudioPlayer_play(void * class_handler,int synchronised)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->play(synchronised);
}

void SuperpoweredAdvancedAudioPlayer_pause(void * class_handler,float decelerateSeconds, unsigned int slipMs)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->pause(decelerateSeconds,slipMs);
}

void SuperpoweredAdvancedAudioPlayer_openHLS(void * class_handler,char const* url, char** customHTTPHeaders)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->openHLS(url,customHTTPHeaders);
}

void SuperpoweredAdvancedAudioPlayer_exitLoop(void * class_handler,int synchronisedStart)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->exitLoop(synchronisedStart);
}

void SuperpoweredAdvancedAudioPlayer_setTempo(void * class_handler,double tempo, int masterTempo)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->setTempo(tempo,masterTempo);
}

void SuperpoweredAdvancedAudioPlayer_jogTouchEnd(void * class_handler,float decelerate, int synchronisedStart)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->jogTouchEnd(decelerate,synchronisedStart);
}

int SuperpoweredAdvancedAudioPlayer_msInLoop(void * class_handler,double ms)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->msInLoop(ms);
}

void SuperpoweredAdvancedAudioPlayer_setPitchShift(void * class_handler,int pitchShift)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->setPitchShift(pitchShift);
}

int SuperpoweredAdvancedAudioPlayer_processMulti(void * class_handler,float** buffers, int* bufferAdds, unsigned int numberOfSamples, float* volumes, double masterBpm, double masterMsElapsedSinceLastBeat, double phase, double quantum)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->processMulti(buffers, (bool *)bufferAdds,numberOfSamples,volumes,masterBpm,masterMsElapsedSinceLastBeat,phase,quantum);
}

void SuperpoweredAdvancedAudioPlayer_setReverse(void * class_handler,int reverse, unsigned int slipMs)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->setReverse(reverse,slipMs);
}

void SuperpoweredAdvancedAudioPlayer_jogTouchBegin(void * class_handler,int ticksPerTurn, int mode, unsigned int scratchSlipMs)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->jogTouchBegin(ticksPerTurn,(SuperpoweredAdvancedAudioPlayerJogMode)mode,scratchSlipMs);
}

void SuperpoweredAdvancedAudioPlayer_delete(void * class_handler)
{
  delete (SuperpoweredAdvancedAudioPlayer *)class_handler;
}

void SuperpoweredAdvancedAudioPlayer_setSamplerate(void * class_handler,unsigned int sampleRate)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->setSamplerate(sampleRate);
}

double SuperpoweredAdvancedAudioPlayer_closestBeatMs(void * class_handler,double ms, unsigned char* beatIndex)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->closestBeatMs(ms,beatIndex);
}

void SuperpoweredAdvancedAudioPlayer_open_A(void * class_handler,char const* path, char** customHTTPHeaders)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->open(path,customHTTPHeaders);
}

void SuperpoweredAdvancedAudioPlayer_endContinuousPitchBend(void * class_handler)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->endContinuousPitchBend();
}

void SuperpoweredAdvancedAudioPlayer_startScratch(void * class_handler,unsigned int slipMs, int stopImmediately)
{
  SuperpoweredAdvancedAudioPlayer * real_class_handler = (SuperpoweredAdvancedAudioPlayer *)class_handler;
  return real_class_handler->startScratch(slipMs,stopImmediately);
}
