import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredReverb
{

  private let ref: UnsafeMutableRawPointer

  
  public  func reset() -> Void
  {
    SuperpoweredReverb_reset(ref)
  }


  public  func setWidth(value: Float32) -> Void
  {
    SuperpoweredReverb_setWidth(ref,value)
  }


  public  func setLowCut(hz: Float32) -> Void
  {
    SuperpoweredReverb_setLowCut(ref,hz)
  }


  public  func setMix(value: Float32) -> Void
  {
    SuperpoweredReverb_setMix(ref,value)
  }


  public  func setPredelay(ms: Float32) -> Void
  {
    SuperpoweredReverb_setPredelay(ref,ms)
  }


  public  func setWet(value: Float32) -> Void
  {
    SuperpoweredReverb_setWet(ref,value)
  }


  public  func enable(flag: Int32) -> Void
  {
    SuperpoweredReverb_enable(ref,flag)
  }


  public  func setDry(value: Float32) -> Void
  {
    SuperpoweredReverb_setDry(ref,value)
  }


  public  func setRoomSize(value: Float32) -> Void
  {
    SuperpoweredReverb_setRoomSize(ref,value)
  }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredReverb_process(ref,input,output,numberOfSamples)
  }


  public  func setDamp(value: Float32) -> Void
  {
    SuperpoweredReverb_setDamp(ref,value)
  }


  public init?(samplerate: UInt32,maximumSamplerate: UInt32)
  {
    guard let handle = SuperpoweredReverb_new(samplerate,maximumSamplerate) else { return nil }
    ref = handle
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredReverb_setSamplerate(ref,samplerate)
  }


  deinit { SuperpoweredReverb_delete(ref) }

}