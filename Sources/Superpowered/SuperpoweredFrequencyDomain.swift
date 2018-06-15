import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif


public class SuperpoweredFrequencyDomain
{

  private let ref: UnsafeMutableRawPointer


  
  public  func addInput(input: UnsafeMutableRawPointer?) -> Void
  {
    SuperpoweredFrequencyDomain_addInput(ref,input)
  }


  public  func timeDomainToFrequencyDomain(magnitude: UnsafeMutableRawPointer?,phase: UnsafeMutableRawPointer?,valueOfPi: Float32,complexMode: Int32) -> Int32
  {
    return SuperpoweredFrequencyDomain_timeDomainToFrequencyDomain(ref,magnitude,phase,valueOfPi,complexMode)
  }


  public  func addInput(input: UnsafeMutableRawPointer?,numberOfSamples: Int32) -> Void
  {
    SuperpoweredFrequencyDomain_addInput(ref,input,numberOfSamples)
  }


  public  func advance(numberOfSamples: Int32) -> Void
  {
    SuperpoweredFrequencyDomain_advance(ref,numberOfSamples)
  }


  public  func setStereoPairs(numStereoPairs: UInt32) -> Void
  {
    SuperpoweredFrequencyDomain_setStereoPairs(ref,numStereoPairs)
  }


  public  func timeDomainToFrequencyDomain(magnitudeL: UnsafeMutableRawPointer?,magnitudeR: UnsafeMutableRawPointer?,phaseL: UnsafeMutableRawPointer?,phaseR: UnsafeMutableRawPointer?,valueOfPi: Float32,complexMode: Int32,stereoPairIndex: Int32) -> Int32
  {
    return SuperpoweredFrequencyDomain_timeDomainToFrequencyDomain(ref,magnitudeL,magnitudeR,phaseL,phaseR,valueOfPi,complexMode,stereoPairIndex)
  }


  deinit { SuperpoweredFrequencyDomain_delete(ref) }


  public  func frequencyDomainToTimeDomain(magnitudeL: UnsafeMutableRawPointer?,magnitudeR: UnsafeMutableRawPointer?,phaseL: UnsafeMutableRawPointer?,phaseR: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,valueOfPi: Float32,incrementSamples: Int32,complexMode: Int32,stereoPairIndex: Int32) -> Void
  {
    SuperpoweredFrequencyDomain_frequencyDomainToTimeDomain(ref,magnitudeL,magnitudeR,phaseL,phaseR,output,valueOfPi,incrementSamples,complexMode,stereoPairIndex)
  }


  public  func reset() -> Void
  {
    SuperpoweredFrequencyDomain_reset(ref)
  }


  public init?(fftLogSize: Int32,maxOverlap: Int32)
  {
    guard let handle = SuperpoweredFrequencyDomain_new(fftLogSize,maxOverlap) else { return nil }
    ref = handle
  }

}