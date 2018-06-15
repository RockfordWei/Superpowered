import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredGate
{

  private let ref: UnsafeMutableRawPointer

  
  public  func enable(flag: Int32) -> Void
  {
    SuperpoweredGate_enable(ref,flag)
  }


  deinit { SuperpoweredGate_delete(ref) }


  public init?(samplerate: UInt32)
  {
    guard let handle = SuperpoweredGate_new(samplerate) else { return nil }
    ref = handle
  }


  public  func reset() -> Void
  {
    SuperpoweredGate_reset(ref)
  }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Int32
  {
    return SuperpoweredGate_process(ref,input,output,numberOfSamples)
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredGate_setSamplerate(ref,samplerate)
  }

}