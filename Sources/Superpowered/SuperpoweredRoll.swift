import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredRoll
{

  private let ref: UnsafeMutableRawPointer

  
  public  func reset() -> Void
  {
    SuperpoweredRoll_reset(ref)
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredRoll_setSamplerate(ref,samplerate)
  }


  public init?(samplerate: UInt32)
  {
    guard let handle = SuperpoweredRoll_new(samplerate) else { return nil }
    ref = handle
  }


  deinit { SuperpoweredRoll_delete(ref) }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredRoll_process(ref,input,output,numberOfSamples)
  }


  public  func enable(flag: Int32) -> Void
  {
    SuperpoweredRoll_enable(ref,flag)
  }

}