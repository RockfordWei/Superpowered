import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif


public class SuperpoweredRecorder
{

  private let ref: UnsafeMutableRawPointer

  deinit { SuperpoweredRecorder_delete(ref) }


  public  func start(destinationPath: UnsafeMutableRawPointer?) -> Int32
  {
    return SuperpoweredRecorder_start(ref,destinationPath)
  }


  public init?(tempPath: UnsafeMutableRawPointer?,samplerate: UInt32,minSeconds: UInt32,numChannels: UInt8,applyFade: Int32,callback: UnsafeMutableRawPointer?,clientData: UnsafeMutableRawPointer?)
  {
    guard let handle = SuperpoweredRecorder_new(tempPath,samplerate,minSeconds,numChannels,applyFade,callback,clientData) else { return nil }
    ref = handle
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredRecorder_setSamplerate(ref,samplerate)
  }


  public  func addToTracklist(artist: UnsafeMutableRawPointer?,title: UnsafeMutableRawPointer?,offsetSeconds: Int32,takeOwnership: Int32) -> Void
  {
    SuperpoweredRecorder_addToTracklist(ref,artist,title,offsetSeconds,takeOwnership)
  }


  public  func stop() -> Void
  {
    SuperpoweredRecorder_stop(ref)
  }


  public  func process(input: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> UInt32
  {
    return SuperpoweredRecorder_process(ref,input,numberOfSamples)
  }


  public  func process(input0: UnsafeMutableRawPointer?,input1: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> UInt32
  {
    return SuperpoweredRecorder_process(ref,input0,input1,numberOfSamples)
  }

}