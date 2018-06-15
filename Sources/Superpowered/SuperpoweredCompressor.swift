import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredCompressor
{ 
    private let ref: UnsafeMutableRawPointer
  

  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredCompressor_process(ref,input,output,numberOfSamples)
  }


  deinit { SuperpoweredCompressor_delete(ref) }


  public  func enable(flag: Int32) -> Void
  {
    SuperpoweredCompressor_enable(ref,flag)
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredCompressor_setSamplerate(ref,samplerate)
  }


  public init?(samplerate: UInt32)
  {
    guard let handle = SuperpoweredCompressor_new(samplerate) else { return nil }
    ref = handle
  }


  public  func getGainReductionDb() -> Float32
  {
    return SuperpoweredCompressor_getGainReductionDb(ref)
  }


  public  func reset() -> Void
  {
    SuperpoweredCompressor_reset(ref)
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredCompressorProto_setSamplerate(ref,samplerate)
  }


  public init?(samplerate: UInt32)
  {
    guard let handle = SuperpoweredCompressorProto_new(samplerate) else { return nil }
    ref = handle
  }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredCompressorProto_process(ref,input,output,numberOfSamples)
  }


  public  func reset() -> Void
  {
    SuperpoweredCompressorProto_reset(ref)
  }


  public  func getGainReductionDb() -> Float32
  {
    return SuperpoweredCompressorProto_getGainReductionDb(ref)
  }


  public  func enable(flag: Int32) -> Void
  {
    SuperpoweredCompressorProto_enable(ref,flag)
  }


  public  func process(input: UnsafeMutableRawPointer?,sidechain: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredCompressorProto_process(ref,input,sidechain,output,numberOfSamples)
  }


  deinit { SuperpoweredCompressorProto_delete(ref) }

}