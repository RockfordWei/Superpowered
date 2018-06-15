import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredResampler
{

  private let ref: UnsafeMutableRawPointer

  
  public  func reset() -> Void
  {
    SuperpoweredResampler_reset(ref)
  }


  public init?()
  {
    guard let handle = SuperpoweredResampler_new() else { return nil }
    ref = handle
  }


  public  func process(input: UnsafeMutableRawPointer?,temp: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: Int32,reverse: Int32,highQuality: Int32,rateAdd: Float32) -> Int32
  {
    return SuperpoweredResampler_process(ref,input,temp,output,numberOfSamples,reverse,highQuality,rateAdd)
  }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: Int32,reverse: Int32,highQuality: Int32,rateAdd: Float32) -> Int32
  {
    return SuperpoweredResampler_process(ref,input,output,numberOfSamples,reverse,highQuality,rateAdd)
  }


  deinit { SuperpoweredResampler_delete(ref) }

}