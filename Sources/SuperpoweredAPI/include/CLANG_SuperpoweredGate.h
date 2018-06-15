// CPP to C glue code generated by Sweaty on Wed Jun 13 23:03:10 2018

// NO WARRANTIES ON PRODUCTION, for experiemental purposes only.
// TODO: Class member variable *MUST* be added manually
#ifndef __AUTO_CODE_SUPERPOWEREDGATE__
#define __AUTO_CODE_SUPERPOWEREDGATE__

#ifdef __cplusplus
extern "C" {
#endif

extern void SuperpoweredGate_enable(void * class_handler,bool flag);
extern void SuperpoweredGate_delete(void * class_handler);
extern void * SuperpoweredGate_new(unsigned int samplerate);
extern void SuperpoweredGate_reset(void * class_handler);
extern int SuperpoweredGate_process(void * class_handler,float* input, float* output, unsigned int numberOfSamples);
extern void SuperpoweredGate_setSamplerate(void * class_handler,unsigned int samplerate);

#ifdef __cplusplus
}
#endif

#endif