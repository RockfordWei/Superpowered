import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredDecoder
{

  private let ref: UnsafeMutableRawPointer
  
  public  func decode(pcmOutput: UnsafeMutableRawPointer?,samples: UnsafeMutableRawPointer?) -> UInt8
  {
    return mp3File_decode(ref,pcmOutput,samples)
  }


  public  func decode(pcmOutput: UnsafeMutableRawPointer?,samples: UnsafeMutableRawPointer?) -> UInt8
  {
    return waveFile_decode(ref,pcmOutput,samples)
  }


  public  func decode(pcmOutput: UnsafeMutableRawPointer?,samples: UnsafeMutableRawPointer?) -> UInt8
  {
    return aacFile_decode(ref,pcmOutput,samples)
  }


  public  func getAudioStartSample(startSample: UnsafeMutableRawPointer?,limitSamples: UInt32,decibel: Int32,cancelIfBuffering: UnsafeMutableRawPointer?) -> UInt8
  {
    return SuperpoweredDecoder_getAudioStartSample(ref,startSample,limitSamples,decibel,cancelIfBuffering)
  }


  public  func seek(sample: long long,precise: Int32) -> UInt8
  {
    return SuperpoweredDecoder_seek(ref,sample,precise)
  }


  public  func reconnectToMediaserver() -> Void
  {
    SuperpoweredDecoder_reconnectToMediaserver(ref)
  }


  public init?(downloadedCallback: UnsafeMutableRawPointer?,clientData: UnsafeMutableRawPointer?)
  {
    guard let handle = SuperpoweredDecoder_new(downloadedCallback,clientData) else { return nil }
    ref = handle
  }


  public  func getMetaData(artist: UnsafeMutableRawPointer?,title: UnsafeMutableRawPointer?,album: UnsafeMutableRawPointer?,image: UnsafeMutableRawPointer?,imageSizeBytes: UnsafeMutableRawPointer?,bpm: UnsafeMutableRawPointer?,callback: UnsafeMutableRawPointer?,clientData: UnsafeMutableRawPointer?,maxFrameDataSize: Int32) -> Void
  {
    SuperpoweredDecoder_getMetaData(ref,artist,title,album,image,imageSizeBytes,bpm,callback,clientData,maxFrameDataSize)
  }


  public  func decode(pcmOutput: UnsafeMutableRawPointer?,samples: UnsafeMutableRawPointer?) -> UInt8
  {
    return SuperpoweredDecoder_decode(ref,pcmOutput,samples)
  }


  public  func open(path: UnsafeMutableRawPointer?,metaOnly: Int32,offset: Int32,length: Int32,stemsIndex: Int32,customHTTPHeaders: UnsafeMutableRawPointer?,errorCode: UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?
  {
    return SuperpoweredDecoder_open(ref,path,metaOnly,offset,length,stemsIndex,customHTTPHeaders,errorCode)
  }


  deinit { SuperpoweredDecoder_delete(ref) }


  public  func getStemsInfo(names: UnsafeMutableRawPointer?,colors: UnsafeMutableRawPointer?,compressor: UnsafeMutableRawPointer?,limiter: UnsafeMutableRawPointer?) -> Int32
  {
    return SuperpoweredDecoder_getStemsInfo(ref,names,colors,compressor,limiter)
  }


  public  func decode(pcmOutput: UnsafeMutableRawPointer?,samples: UnsafeMutableRawPointer?) -> UInt8
  {
    return aiffFile_decode(ref,pcmOutput,samples)
  }

}