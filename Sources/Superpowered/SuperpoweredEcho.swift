import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredEcho
{

  private let ref: UnsafeMutableRawPointer

  
  public  func enable(flag: Int32) -> Void
  {
    SuperpoweredEcho_enable(ref,flag)
  }


  public  func setMix(mix: Float32) -> Void
  {
    SuperpoweredEcho_setMix(ref,mix)
  }


  public  func reset() -> Void
  {
    SuperpoweredEcho_reset(ref)
  }


  public init?(samplerate: UInt32,maximumSamplerate: UInt32)
  {
    guard let handle = SuperpoweredEcho_new(samplerate,maximumSamplerate) else { return nil }
    ref = handle
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredEcho_setSamplerate(ref,samplerate)
  }


  deinit { SuperpoweredEcho_delete(ref) }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfFrames: UInt32) -> Int32
  {
    return SuperpoweredEcho_process(ref,input,output,numberOfFrames)
  }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfFrames: UInt32,fx: UnsafeMutableRawPointer?) -> Int32
  {
    return SuperpoweredEcho_process(ref,input,output,numberOfFrames,fx)
  }


  public  func process(input: UnsafeMutableRawPointer?,output: Int32,numberOfFrames: UnsafeMutableRawPointer?) -> Int32
  {
    return SuperpoweredDelay_process(ref,input,output,numberOfFrames)
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredDelay_setSamplerate(ref,samplerate)
  }


  public  func reset() -> Void
  {
    SuperpoweredDelay_reset(ref)
  }

}