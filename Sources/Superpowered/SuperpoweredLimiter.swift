import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredLimiter
{

  private let ref: UnsafeMutableRawPointer

  
  public  func enable(flag: Int32) -> Void
  {
    SuperpoweredLimiter_enable(ref,flag)
  }


  public  func reset() -> Void
  {
    SuperpoweredLimiter_reset(ref)
  }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredLimiter_process(ref,input,output,numberOfSamples)
  }


  public init?(samplerate: UInt32)
  {
    guard let handle = SuperpoweredLimiter_new(samplerate) else { return nil }
    ref = handle
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredLimiter_setSamplerate(ref,samplerate)
  }


  public  func getGainReductionDb() -> Float32
  {
    return SuperpoweredLimiter_getGainReductionDb(ref)
  }


  deinit { SuperpoweredLimiter_delete(ref) }

}