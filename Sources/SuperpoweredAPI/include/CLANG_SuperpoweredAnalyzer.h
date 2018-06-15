#ifndef __AUTO_CODE_SUPERPOWEREDANALYZER__
#define __AUTO_CODE_SUPERPOWEREDANALYZER__

#ifdef __cplusplus
extern "C" {
#endif

extern unsigned char * SuperpoweredWaveform_getresult(void * class_handler,int* size);
extern void SuperpoweredWaveform_process(void * class_handler,float* input, unsigned int numberOfFrames, int lengthSeconds);
extern void * SuperpoweredWaveform_new(unsigned int samplerate, int lengthSeconds);
extern void SuperpoweredWaveform_delete(void * class_handler);

extern void SuperpoweredAnalyzer_getresults(void * class_handler,unsigned char** averageWaveform, unsigned char** peakWaveform, unsigned char** lowWaveform, unsigned char** midWaveform, unsigned char** highWaveform, unsigned char** notes, int* waveformSize, char** overviewWaveform, int* overviewSize, float* averageDecibel, float* loudpartsAverageDecibel, float* peakDecibel, float* bpm, float* beatgridStartMs, int* keyIndex, float previousBpm);
extern void * SuperpoweredAnalyzer_new(unsigned int samplerate, float bpm, int lengthSeconds, float minimumBpm, float maximumBpm);
extern void SuperpoweredAnalyzer_process(void * class_handler,float* input, unsigned int numberOfFrames, int lengthSeconds);
extern void SuperpoweredAnalyzer_delete(void * class_handler);

extern void SuperpoweredLiveAnalyzer_delete(void * class_handler);
extern void SuperpoweredLiveAnalyzer_setSamplerate(void * class_handler,unsigned int samplerate);
extern void SuperpoweredLiveAnalyzer_process(void * class_handler,float* input, unsigned int numberOfFrames);
extern void * SuperpoweredLiveAnalyzer_new(unsigned int samplerate);

extern float SuperpoweredLiveAnalyzer_bpm(void * class_handler);
extern int SuperpoweredLiveAnalyzer_keyIndex(void * class_handler);
extern int SuperpoweredLiveAnalyzer_silence(void * class_handler);
#ifdef __cplusplus
}
#endif

#endif
