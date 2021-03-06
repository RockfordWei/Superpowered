// CPP to C glue code generated by Sweaty on Wed Jun 13 23:03:10 2018

// NO WARRANTIES ON PRODUCTION, for experiemental purposes only.
// TODO: Class member variable *MUST* be added manually
#include "/usr/local/Superpowered/SuperpoweredBandpassFilterbank.h"
#include "CLANG_SuperpoweredBandpassFilterbank.h"
void * SuperpoweredBandpassFilterbank_new(int numBands, float* frequencies, float* widths, unsigned int samplerate)
{
  return (void*)(new SuperpoweredBandpassFilterbank(numBands,frequencies,widths,samplerate));
}

void SuperpoweredBandpassFilterbank_process(void * class_handler,float* input, float* bands, float* peak, float* sum, unsigned int numberOfSamples, int group)
{
  SuperpoweredBandpassFilterbank * real_class_handler = (SuperpoweredBandpassFilterbank *)class_handler;
  return real_class_handler->process(input,bands,peak,sum,numberOfSamples,group);
}

void * SuperpoweredBandpassFilterbank_new(int numGroups, int numBandsInGroup, float* frequencies, float* widths, unsigned int samplerate)
{
  return (void*)(new SuperpoweredBandpassFilterbank(numGroups,numBandsInGroup,frequencies,widths,samplerate));
}

void SuperpoweredBandpassFilterbank_delete(void * class_handler)
{
  delete (SuperpoweredBandpassFilterbank *)class_handler;
}

void SuperpoweredBandpassFilterbank_processNoAdd(void * class_handler,float* input, float* bands, float* peak, float* sum, unsigned int numberOfSamples, int group)
{
  SuperpoweredBandpassFilterbank * real_class_handler = (SuperpoweredBandpassFilterbank *)class_handler;
  return real_class_handler->processNoAdd(input,bands,peak,sum,numberOfSamples,group);
}

void SuperpoweredBandpassFilterbank_setSamplerate(void * class_handler,unsigned int samplerate)
{
  SuperpoweredBandpassFilterbank * real_class_handler = (SuperpoweredBandpassFilterbank *)class_handler;
  return real_class_handler->setSamplerate(samplerate);
}