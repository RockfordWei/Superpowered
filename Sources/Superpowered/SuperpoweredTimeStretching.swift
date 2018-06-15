import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredTimeStretching
{
  private let ref: UnsafeMutableRawPointer


  
  public  func setRateAndPitchShiftCents(newRate: Float32,newShiftCents: Int32) -> Int32
  {
    return SuperpoweredTimeStretching_setRateAndPitchShiftCents(ref,newRate,newShiftCents)
  }


  public  func reset() -> Void
  {
    SuperpoweredTimeStretching_reset(ref)
  }


  public init?(samplerate: UInt32,minimumRate: Float32,sound: UInt8)
  {
    guard let handle = SuperpoweredTimeStretching_new(samplerate,minimumRate,sound) else { return nil }
    ref = handle
  }


  public  func process(input: UnsafeMutableRawPointer?,outputList: UnsafeMutableRawPointer?) -> Void
  {
    SuperpoweredTimeStretching_process(ref,input,outputList)
  }


  deinit { SuperpoweredTimeStretching_delete(ref) }


  public  func removeSamplesFromInputBuffersEnd(samples: UInt32) -> Void
  {
    SuperpoweredTimeStretching_removeSamplesFromInputBuffersEnd(ref,samples)
  }


  public  func setStereoPairs(numStereoPairs: UInt32) -> Void
  {
    SuperpoweredTimeStretching_setStereoPairs(ref,numStereoPairs)
  }


  public  func setRateAndPitchShift(newRate: Float32,newShift: Int32) -> Int32
  {
    return SuperpoweredTimeStretching_setRateAndPitchShift(ref,newRate,newShift)
  }


  public  func setSampleRate(samplerate: UInt32) -> Void
  {
    SuperpoweredTimeStretching_setSampleRate(ref,samplerate)
  }

}