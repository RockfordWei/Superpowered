#include "/usr/local/Superpowered/Superpowered3BandEQ.h"
#include "CLANG_Superpowered3BandEQ.h"
#include <string.h>

void Superpowered3BandEQ_reset(void * class_handler)
{
  Superpowered3BandEQ * real_class_handler = (Superpowered3BandEQ *)class_handler;
  return real_class_handler->reset();
}

void * Superpowered3BandEQ_new(unsigned int samplerate)
{
  return (void*)(new Superpowered3BandEQ(samplerate));
}

void Superpowered3BandEQ_setSamplerate(void * class_handler,unsigned int samplerate)
{
  Superpowered3BandEQ * real_class_handler = (Superpowered3BandEQ *)class_handler;
  return real_class_handler->setSamplerate(samplerate);
}

void Superpowered3BandEQ_delete(void * class_handler)
{
  delete (Superpowered3BandEQ *)class_handler;
}

int Superpowered3BandEQ_process(void * class_handler,float* input, float* output, unsigned int numberOfSamples)
{
  Superpowered3BandEQ * real_class_handler = (Superpowered3BandEQ *)class_handler;
  return real_class_handler->process(input,output,numberOfSamples);
}

void Superpowered3BandEQ_enable(void * class_handler,int flag)
{
  Superpowered3BandEQ * real_class_handler = (Superpowered3BandEQ *)class_handler;
  return real_class_handler->enable((bool)flag);
}

void Superpowered3BandEQ_bands(void * class_handler, float * bands, int get)
{
  Superpowered3BandEQ * real_class_handler = (Superpowered3BandEQ *)class_handler;
  size_t size = sizeof(float) * 3;
  if (get) {
    memcpy(bands, real_class_handler->bands, size);
  } else {
    memcpy(real_class_handler->bands, bands, size);
  }
}
