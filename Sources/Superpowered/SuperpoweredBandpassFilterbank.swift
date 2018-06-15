import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredBandpassFilterbank
{
    private let ref: UnsafeMutableRawPointer
  

  public init?(numBands: Int32,frequencies: UnsafeMutableRawPointer?,widths: UnsafeMutableRawPointer?,samplerate: UInt32)
  {
    guard let handle = SuperpoweredBandpassFilterbank_new(numBands,frequencies,widths,samplerate) else { return nil }
    ref = handle
  }


  public  func process(input: UnsafeMutableRawPointer?,bands: UnsafeMutableRawPointer?,peak: UnsafeMutableRawPointer?,sum: UnsafeMutableRawPointer?,numberOfSamples: UInt32,group: Int32) -> Void
  {
    SuperpoweredBandpassFilterbank_process(ref,input,bands,peak,sum,numberOfSamples,group)
  }


  public init?(numGroups: Int32,numBandsInGroup: Int32,frequencies: UnsafeMutableRawPointer?,widths: UnsafeMutableRawPointer?,samplerate: UInt32)
  {
    guard let handle = SuperpoweredBandpassFilterbank_new(numGroups,numBandsInGroup,frequencies,widths,samplerate) else { return nil }
    ref = handle
  }


  deinit { SuperpoweredBandpassFilterbank_delete(ref) }


  public  func processNoAdd(input: UnsafeMutableRawPointer?,bands: UnsafeMutableRawPointer?,peak: UnsafeMutableRawPointer?,sum: UnsafeMutableRawPointer?,numberOfSamples: UInt32,group: Int32) -> Void
  {
    SuperpoweredBandpassFilterbank_processNoAdd(ref,input,bands,peak,sum,numberOfSamples,group)
  }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredBandpassFilterbank_setSamplerate(ref,samplerate)
  }

}