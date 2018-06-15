#ifndef __AUTO_CODE_SUPERPOWERED3BANDEQ__
#define __AUTO_CODE_SUPERPOWERED3BANDEQ__

#ifdef __cplusplus
extern "C" {
#endif

extern void Superpowered3BandEQ_reset(void * class_handler);
extern void * Superpowered3BandEQ_new(unsigned int samplerate);
extern void Superpowered3BandEQ_setSamplerate(void * class_handler,unsigned int samplerate);
extern void Superpowered3BandEQ_delete(void * class_handler);
extern int Superpowered3BandEQ_process(void * class_handler,float* input, float* output, unsigned int numberOfSamples);
extern void Superpowered3BandEQ_enable(void * class_handler,int flag);
extern void Superpowered3BandEQ_bands(void * class_handler, float * bands, int get);
#ifdef __cplusplus
}
#endif

#endif
