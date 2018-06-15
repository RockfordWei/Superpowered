import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredWhoosh
{

  private let ref: UnsafeMutableRawPointer

  
  public  func enable(flag: Int32) -> Void
  {
    SuperpoweredWhoosh_enable(ref,flag)
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredWhoosh_setSamplerate(ref,samplerate)
  }


  public  func reset() -> Void
  {
    SuperpoweredWhoosh_reset(ref)
  }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredWhoosh_process(ref,input,output,numberOfSamples)
  }


  deinit { SuperpoweredWhoosh_delete(ref) }


  public  func setFrequency(hz: Float32) -> Void
  {
    SuperpoweredWhoosh_setFrequency(ref,hz)
  }


  public init?(samplerate: UInt32)
  {
    guard let handle = SuperpoweredWhoosh_new(samplerate) else { return nil }
    ref = handle
  }

}