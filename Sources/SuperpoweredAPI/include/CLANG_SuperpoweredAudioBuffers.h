// CPP to C glue code generated by Sweaty on Wed Jun 13 23:03:10 2018

// NO WARRANTIES ON PRODUCTION, for experiemental purposes only.
// TODO: Class member variable *MUST* be added manually
#ifndef __AUTO_CODE_SUPERPOWEREDAUDIOBUFFERS__
#define __AUTO_CODE_SUPERPOWEREDAUDIOBUFFERS__

#ifdef __cplusplus
extern "C" {
#endif

extern int64_t SuperpoweredAudiopointerList_startSamplePosition(void * class_handler);
extern void * SuperpoweredAudiopointerList_prevSliceItem(void * class_handler,int* lengthSamples, float* samplesUsed, int stereoPairIndex);
extern void SuperpoweredAudiopointerList_insert(void * class_handler,SuperpoweredAudiobufferlistElement* buffer);
extern int64_t SuperpoweredAudiopointerList_nextSamplePosition(void * class_handler);
extern void SuperpoweredAudiopointerList_rewindSlice(void * class_handler);
extern void SuperpoweredAudiopointerList_copyAllBuffersTo(void * class_handler,SuperpoweredAudiopointerList* anotherList);
extern void SuperpoweredAudiopointerList_forwardToLastSliceBuffer(void * class_handler);
extern int64_t SuperpoweredAudiopointerList_samplePositionOfSliceBeginning(void * class_handler);
extern void SuperpoweredAudiopointerList_clear(void * class_handler);
extern void SuperpoweredAudiopointerList_append(void * class_handler,SuperpoweredAudiobufferlistElement* buffer);
extern void * SuperpoweredAudiopointerList_new(unsigned int bytesPerSample, unsigned int typicalNumElements);
extern int SuperpoweredAudiopointerList_makeSlice(void * class_handler,int fromSample, int lengthSamples);
extern void SuperpoweredAudiopointerList_delete(void * class_handler);
extern void SuperpoweredAudiopointerList_truncate(void * class_handler,int numSamples, bool fromTheBeginning);
extern void * SuperpoweredAudiopointerList_nextSliceItem(void * class_handler,int* lengthSamples, float* samplesUsed, int stereoPairIndex, long long* nextSamplePosition);

extern void SuperpoweredAudiobufferPool_retainBuffer(void* buffer);
extern void SuperpoweredAudiobufferPool_ping();
extern void * SuperpoweredAudiobufferPool_allocBuffer(unsigned int sizeBytes);
extern void SuperpoweredAudiobufferPool_releaseBuffer(void* buffer);
extern void * SuperpoweredAudiobufferPool_getBuffer(unsigned int sizeBytes);

#ifdef __cplusplus
}
#endif

#endif