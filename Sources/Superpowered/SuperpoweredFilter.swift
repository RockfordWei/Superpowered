import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif


public class SuperpoweredFilter
{

  private let ref: UnsafeMutableRawPointer


  
  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredFilter2_setSamplerate(ref,samplerate)
  }


  public  func setBandlimitedParameters(frequency: Float32,octaveWidth: Float32) -> Void
  {
    SuperpoweredFilter_setBandlimitedParameters(ref,frequency,octaveWidth)
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredFilter_setSamplerate(ref,samplerate)
  }


  public  func setResonantParameters(frequency: Float32,resonance: Float32) -> Void
  {
    SuperpoweredFilter_setResonantParameters(ref,frequency,resonance)
  }


  deinit { SuperpoweredFilter_delete(ref) }


  public  func enable(flag: Int32) -> Void
  {
    SuperpoweredFilter_enable(ref,flag)
  }


  public  func setBandlimitedParametersAndType(frequency: Float32,octaveWidth: Float32,type: SuperpoweredFilterType) -> Void
  {
    SuperpoweredFilter_setBandlimitedParametersAndType(ref,frequency,octaveWidth,type)
  }


  public  func processMono(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredFilter_processMono(ref,input,output,numberOfSamples)
  }


  public init?(filterType: SuperpoweredFilterType,samplerate: UInt32)
  {
    guard let handle = SuperpoweredFilter_new(filterType,samplerate) else { return nil }
    ref = handle
  }


  public  func setResonantParametersAndType(frequency: Float32,resonance: Float32,type: SuperpoweredFilterType) -> Void
  {
    SuperpoweredFilter_setResonantParametersAndType(ref,frequency,resonance,type)
  }


  public  func setParametricParameters(frequency: Float32,octaveWidth: Float32,dbGain: Float32) -> Void
  {
    SuperpoweredFilter_setParametricParameters(ref,frequency,octaveWidth,dbGain)
  }


  public  func setShelfParameters(frequency: Float32,slope: Float32,dbGain: Float32) -> Void
  {
    SuperpoweredFilter_setShelfParameters(ref,frequency,slope,dbGain)
  }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredFilter_process(ref,input,output,numberOfSamples)
  }


  public  func setCustomCoefficients(coefficients: UnsafeMutableRawPointer?) -> Void
  {
    SuperpoweredFilter_setCustomCoefficients(ref,coefficients)
  }


  public  func setShelfParametersAndType(frequency: Float32,slope: Float32,dbGain: Float32,type: SuperpoweredFilterType) -> Void
  {
    SuperpoweredFilter_setShelfParametersAndType(ref,frequency,slope,dbGain,type)
  }


  public  func reset() -> Void
  {
    SuperpoweredFilter_reset(ref)
  }

}