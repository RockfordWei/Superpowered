import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif


public class SuperpoweredSpatializer
{

  private let ref: UnsafeMutableRawPointer

  
  public init?(samplerate: UInt32)
  {
    guard let handle = SuperpoweredSpatializer_new(samplerate) else { return nil }
    ref = handle
  }


  deinit { SuperpoweredSpatializer_delete(ref) }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredSpatializer_setSamplerate(ref,samplerate)
  }


  public  func process(inputLeft: UnsafeMutableRawPointer?,inputRight: UnsafeMutableRawPointer?,outputLeft: UnsafeMutableRawPointer?,outputRight: UnsafeMutableRawPointer?,numberOfSamples: UInt32,outputAdd: Int32) -> Int32
  {
    return SuperpoweredSpatializer_process(ref,inputLeft,inputRight,outputLeft,outputRight,numberOfSamples,outputAdd)
  }


  public static func process(output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredSpatializerGlobalReverb_process(output,numberOfSamples)
  }


  deinit { SuperpoweredSpatializerGlobalReverb_delete(ref) }


  public static func setReverbSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredSpatializerGlobalReverb_setReverbSamplerate(samplerate)
  }


  public init?()
  {
    guard let handle = SuperpoweredSpatializerGlobalReverb_new() else { return nil }
    ref = handle
  }

}