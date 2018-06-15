import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredClipper
{
  private let ref: UnsafeMutableRawPointer
  

  public init?()
  {
    guard let handle = SuperpoweredClipper_new() else { return nil }
    ref = handle
  }


  public  func process(input: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Void
  {
    SuperpoweredClipper_process(ref,input,output,numberOfSamples)
  }


  deinit { SuperpoweredClipper_delete(ref) }

}