// CPP to C glue code generated by Sweaty on Wed Jun 13 23:03:10 2018

// NO WARRANTIES ON PRODUCTION, for experiemental purposes only.
// TODO: Class member variable *MUST* be added manually
#include "/usr/local/Superpowered/SuperpoweredFrequencyDomain.h"
#include "CLANG_SuperpoweredFrequencyDomain.h"
void SuperpoweredFrequencyDomain_addInput(void * class_handler,SuperpoweredAudiobufferlistElement* input)
{
  SuperpoweredFrequencyDomain * real_class_handler = (SuperpoweredFrequencyDomain *)class_handler;
  return real_class_handler->addInput(input);
}

int SuperpoweredFrequencyDomain_timeDomainToFrequencyDomain(void * class_handler,float* magnitude, float* phase, float valueOfPi, bool complexMode)
{
  SuperpoweredFrequencyDomain * real_class_handler = (SuperpoweredFrequencyDomain *)class_handler;
  return real_class_handler->timeDomainToFrequencyDomain(magnitude,phase,valueOfPi,complexMode);
}

void SuperpoweredFrequencyDomain_addInput(void * class_handler,float* input, int numberOfSamples)
{
  SuperpoweredFrequencyDomain * real_class_handler = (SuperpoweredFrequencyDomain *)class_handler;
  return real_class_handler->addInput(input,numberOfSamples);
}

void SuperpoweredFrequencyDomain_advance(void * class_handler,int numberOfSamples)
{
  SuperpoweredFrequencyDomain * real_class_handler = (SuperpoweredFrequencyDomain *)class_handler;
  return real_class_handler->advance(numberOfSamples);
}

void SuperpoweredFrequencyDomain_setStereoPairs(void * class_handler,unsigned int numStereoPairs)
{
  SuperpoweredFrequencyDomain * real_class_handler = (SuperpoweredFrequencyDomain *)class_handler;
  return real_class_handler->setStereoPairs(numStereoPairs);
}

int SuperpoweredFrequencyDomain_timeDomainToFrequencyDomain(void * class_handler,float* magnitudeL, float* magnitudeR, float* phaseL, float* phaseR, float valueOfPi, bool complexMode, int stereoPairIndex)
{
  SuperpoweredFrequencyDomain * real_class_handler = (SuperpoweredFrequencyDomain *)class_handler;
  return real_class_handler->timeDomainToFrequencyDomain(magnitudeL,magnitudeR,phaseL,phaseR,valueOfPi,complexMode,stereoPairIndex);
}

void SuperpoweredFrequencyDomain_delete(void * class_handler)
{
  delete (SuperpoweredFrequencyDomain *)class_handler;
}

void SuperpoweredFrequencyDomain_frequencyDomainToTimeDomain(void * class_handler,float* magnitudeL, float* magnitudeR, float* phaseL, float* phaseR, float* output, float valueOfPi, int incrementSamples, bool complexMode, int stereoPairIndex)
{
  SuperpoweredFrequencyDomain * real_class_handler = (SuperpoweredFrequencyDomain *)class_handler;
  return real_class_handler->frequencyDomainToTimeDomain(magnitudeL,magnitudeR,phaseL,phaseR,output,valueOfPi,incrementSamples,complexMode,stereoPairIndex);
}

void SuperpoweredFrequencyDomain_reset(void * class_handler)
{
  SuperpoweredFrequencyDomain * real_class_handler = (SuperpoweredFrequencyDomain *)class_handler;
  return real_class_handler->reset();
}

void * SuperpoweredFrequencyDomain_new(int fftLogSize, int maxOverlap)
{
  return (void*)(new SuperpoweredFrequencyDomain(fftLogSize,maxOverlap));
}