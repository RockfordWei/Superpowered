import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredDelay
{

  private let ref: UnsafeMutableRawPointer


  
  public init?(maximumDelayMs: UInt32,maximumSamplerate: UInt32,maximumNumberOfFramesToProcess: UInt32,samplerate: UInt32)
  {
    guard let handle = SuperpoweredDelay_new(maximumDelayMs,maximumSamplerate,maximumNumberOfFramesToProcess,samplerate) else { return nil }
    ref = handle
  }


  public  func process(input: UnsafeMutableRawPointer?,numberOfFrames: Int32,fx: UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?
  {
    return SuperpoweredDelay_process(ref,input,numberOfFrames,fx)
  }


  public  func reset() -> Void
  {
    SuperpoweredDelay_reset(ref)
  }


  deinit { SuperpoweredDelay_delete(ref) }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredDelay_setSamplerate(ref,samplerate)
  }

}