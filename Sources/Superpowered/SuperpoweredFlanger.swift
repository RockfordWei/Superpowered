import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredFlanger
{

  private let ref: UnsafeMutableRawPointer


  
  public  func enable(flag: Int32) -> Void
  {
    SuperpoweredFlanger_enable(ref,flag)
  }


  public  func setWet(value: Float32) -> Void
  {
    SuperpoweredFlanger_setWet(ref,value)
  }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredFlanger_process(ref,input,output,numberOfSamples)
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredFlanger_setSamplerate(ref,samplerate)
  }


  public  func setLFOBeats(beats: Float32) -> Void
  {
    SuperpoweredFlanger_setLFOBeats(ref,beats)
  }


  public  func reset() -> Void
  {
    SuperpoweredFlanger_reset(ref)
  }


  public init?(samplerate: UInt32)
  {
    guard let handle = SuperpoweredFlanger_new(samplerate) else { return nil }
    ref = handle
  }


  public  func setDepth(value: Float32) -> Void
  {
    SuperpoweredFlanger_setDepth(ref,value)
  }


  deinit { SuperpoweredFlanger_delete(ref) }

}