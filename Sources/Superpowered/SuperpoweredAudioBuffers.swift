import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredAudioBuffers
{

  private let ref: UnsafeMutableRawPointer
  
  public  func startSamplePosition() -> Int64
  {
    return SuperpoweredAudiopointerList_startSamplePosition(ref)
  }


  public  func prevSliceItem(lengthSamples: UnsafeMutableRawPointer?,samplesUsed: UnsafeMutableRawPointer?,stereoPairIndex: Int32) -> UnsafeMutableRawPointer?
  {
    return SuperpoweredAudiopointerList_prevSliceItem(ref,lengthSamples,samplesUsed,stereoPairIndex)
  }


  public  func insert(buffer: UnsafeMutableRawPointer?) -> Void
  {
    SuperpoweredAudiopointerList_insert(ref,buffer)
  }


  public  func nextSamplePosition() -> Int64
  {
    return SuperpoweredAudiopointerList_nextSamplePosition(ref)
  }


  public  func rewindSlice() -> Void
  {
    SuperpoweredAudiopointerList_rewindSlice(ref)
  }


  public  func copyAllBuffersTo(anotherList: UnsafeMutableRawPointer?) -> Void
  {
    SuperpoweredAudiopointerList_copyAllBuffersTo(ref,anotherList)
  }


  public  func forwardToLastSliceBuffer() -> Void
  {
    SuperpoweredAudiopointerList_forwardToLastSliceBuffer(ref)
  }


  public  func samplePositionOfSliceBeginning() -> Int64
  {
    return SuperpoweredAudiopointerList_samplePositionOfSliceBeginning(ref)
  }


  public  func clear() -> Void
  {
    SuperpoweredAudiopointerList_clear(ref)
  }


  public  func append(buffer: UnsafeMutableRawPointer?) -> Void
  {
    SuperpoweredAudiopointerList_append(ref,buffer)
  }


  public init?(bytesPerSample: UInt32,typicalNumElements: UInt32)
  {
    guard let handle = SuperpoweredAudiopointerList_new(bytesPerSample,typicalNumElements) else { return nil }
    ref = handle
  }


  public  func makeSlice(fromSample: Int32,lengthSamples: Int32) -> Int32
  {
    return SuperpoweredAudiopointerList_makeSlice(ref,fromSample,lengthSamples)
  }


  deinit { SuperpoweredAudiopointerList_delete(ref) }


  public  func truncate(numSamples: Int32,fromTheBeginning: Int32) -> Void
  {
    SuperpoweredAudiopointerList_truncate(ref,numSamples,fromTheBeginning)
  }


  public  func nextSliceItem(lengthSamples: UnsafeMutableRawPointer?,samplesUsed: UnsafeMutableRawPointer?,stereoPairIndex: Int32,nextSamplePosition: UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?
  {
    return SuperpoweredAudiopointerList_nextSliceItem(ref,lengthSamples,samplesUsed,stereoPairIndex,nextSamplePosition)
  }


  public static func retainBuffer(buffer: UnsafeMutableRawPointer?) -> Void
  {
    SuperpoweredAudiobufferPool_retainBuffer(buffer)
  }


  public static func ping() -> Void
  {
    SuperpoweredAudiobufferPool_ping()
  }


  public static func allocBuffer(sizeBytes: UInt32) -> UnsafeMutableRawPointer?
  {
    return SuperpoweredAudiobufferPool_allocBuffer(sizeBytes)
  }


  public static func releaseBuffer(buffer: UnsafeMutableRawPointer?) -> Void
  {
    SuperpoweredAudiobufferPool_releaseBuffer(buffer)
  }


  public static func getBuffer(sizeBytes: UInt32) -> UnsafeMutableRawPointer?
  {
    return SuperpoweredAudiobufferPool_getBuffer(sizeBytes)
  }

}