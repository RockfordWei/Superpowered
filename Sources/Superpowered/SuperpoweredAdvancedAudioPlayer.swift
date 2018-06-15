import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredAdvancedAudioPlayer
{

  public enum SyncMode: Int32 {
    case None = 0
    case Tempo = 1
    case TempoAndBeat = 2
  }

  public enum JogMode: Int32 {
    case Scratch = 0
    case PitchBend = 1
    case Parameter = 2
  }

  public enum Event: Int32 {
    case LoadSuccess = 0
    case LoadError = 1
    case HLSNetworkError = 2
    case ProgressiveDownloadError = 3
    case EOF = 4
    case JogParameter = 5
    case DurationChanged = 6
    case LoopEnd = 7
    case LoopStartReverse = 8
  }

  public let HLS_DOWNLOAD_EVERYTHING = 86401
  public let HLS_DOWNLOAD_REMAINING = 86400
  public let MAXSPEED = 20.0

  public typealias Callback = @convention(c) (UnsafeMutableRawPointer?, Int32, UnsafeMutableRawPointer?) -> Void

  private let ref: UnsafeMutableRawPointer
  public  func togglePlayback() -> Void
  {
    SuperpoweredAdvancedAudioPlayer_togglePlayback(ref)
  }


  public  func endScratch(returnToStateBeforeScratch: Int32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_endScratch(ref,returnToStateBeforeScratch)
  }


  public  func setFirstBeatMs(ms: Double) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_setFirstBeatMs(ref,ms)
  }


  public  func loop(startMs: Double,lengthMs: Double,jumpToStartMs: Int32,pointID: UInt8,synchronisedStart: Int32,forceDefaultQuantum: Int32,preferWaitingforSynchronisedStart: Int32) -> Int32
  {
    return SuperpoweredAdvancedAudioPlayer_loop(ref,startMs,lengthMs,jumpToStartMs,pointID,synchronisedStart,forceDefaultQuantum,preferWaitingforSynchronisedStart)
  }


  public  func scratch(pitch: Double,smoothing: Float32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_scratch(ref,pitch,smoothing)
  }


  public  func getMsDifference(phase: Double,quantum: Double) -> Double
  {
    return SuperpoweredAdvancedAudioPlayer_getMsDifference(ref,phase,quantum)
  }


  public static func clearTempFolder() -> Void
  {
    SuperpoweredAdvancedAudioPlayer_clearTempFolder()
  }


  public  func setPitchShiftCents(pitchShiftCents: Int32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_setPitchShiftCents(ref,pitchShiftCents)
  }


  public static func setTempFolder(path: String) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_setTempFolder(path)
  }


  public  func onMediaserverInterrupt() -> Void
  {
    SuperpoweredAdvancedAudioPlayer_onMediaserverInterrupt(ref)
  }


  public  func loopBetween(startMs: Double,endMs: Double,jumpToStartMs: Int32,pointID: UInt8,synchronisedStart: Int32,forceDefaultQuantum: Int32,preferWaitingforSynchronisedStart: Int32) -> Int32
  {
    return SuperpoweredAdvancedAudioPlayer_loopBetween(ref,startMs,endMs,jumpToStartMs,pointID,synchronisedStart,forceDefaultQuantum,preferWaitingforSynchronisedStart)
  }


  public  func setPosition(ms: Double,andStop: Int32,synchronisedStart: Int32,forceDefaultQuantum: Int32,preferWaitingforSynchronisedStart: Int32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_setPosition(ref,ms,andStop,synchronisedStart,forceDefaultQuantum,preferWaitingforSynchronisedStart)
  }


  public  func setBpm(newBpm: Double) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_setBpm(ref,newBpm)
  }


  public  func lastProcessMs() -> Double
  {
    return SuperpoweredAdvancedAudioPlayer_lastProcessMs(ref)
  }


  public  func resetBendMsOffset() -> Void
  {
    SuperpoweredAdvancedAudioPlayer_resetBendMsOffset(ref)
  }


  public  func jogTick(value: Int32,bendStretch: Int32,bendMaxPercent: Float32,bendHoldMs: UInt32,parameterMode: Int32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_jogTick(ref,value,bendStretch,bendMaxPercent,bendHoldMs,parameterMode)
  }


  public  func cachePosition(ms: Double,pointID: UInt8) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_cachePosition(ref,ms,pointID)
  }


  public func process(buffer: [Float32], bufferAdd: Bool, volume: Float32, masterBpm: Double, masterMsElapsedSinceLastBeat: Double,phase: Double,quantum: Double) -> Bool
  {
    var buf = buffer
    return buf.withUnsafeMutableBufferPointer { pBuffer -> Bool in
      guard let pbuf = pBuffer.baseAddress else { return false }
      return SuperpoweredAdvancedAudioPlayer_process(ref,pbuf,bufferAdd ? 1 : 0,UInt32(buffer.count),volume,masterBpm,masterMsElapsedSinceLastBeat,phase,quantum) == 0 ? false : true
    }
  }


  public  func pitchBend(maxPercent: Float32,bendStretch: Int32,faster: Int32,holdMs: UInt32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_pitchBend(ref,maxPercent,bendStretch,faster,holdMs)
  }


  public init?(clientData: UnsafeMutableRawPointer?,sampleRate: UInt32,cachedPointCount: UInt8,internalBufferSizeSeconds: UInt32,negativeSeconds: UInt32,callback: @escaping Callback)
  {
    guard let handle = SuperpoweredAdvancedAudioPlayer_new(clientData,callback,sampleRate,cachedPointCount,internalBufferSizeSeconds,negativeSeconds) else { return nil }
    ref = handle
  }


  public  func seek(percent: Double) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_seek(ref,percent)
  }


  public  func open(path: String,offset: Int32,length: Int32,customHTTPHeaders: [String]) -> Void
  {
    var headers:[UnsafeMutablePointer<Int8>?] = customHTTPHeaders.map { strdup($0) }
    headers.withUnsafeMutableBufferPointer { pHeaderBuffer in
      guard let pheaders = pHeaderBuffer.baseAddress else { return }
      SuperpoweredAdvancedAudioPlayer_open_B(ref,path,offset,length,pheaders)
    }
    headers.forEach { header in
      guard let pheader = header else { return }
      free(pheader)
    }
  }


  public  func play(synchronised: Int32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_play(ref,synchronised)
  }


  public  func pause(decelerateSeconds: Float32,slipMs: UInt32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_pause(ref,decelerateSeconds,slipMs)
  }


  public  func openHLS(url: String,customHTTPHeaders: [String]) -> Void
  {
    var headers:[UnsafeMutablePointer<Int8>?] = customHTTPHeaders.map { strdup($0) }
    headers.withUnsafeMutableBufferPointer { pHeaderBuffer in
      guard let pheaders = pHeaderBuffer.baseAddress else { return }
      SuperpoweredAdvancedAudioPlayer_openHLS(ref,url,pheaders)
    }
    headers.forEach { header in
      guard let pheader = header else { return }
      free(pheader)
    }
  }

  public  func exitLoop(synchronisedStart: Int32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_exitLoop(ref,synchronisedStart)
  }


  public  func setTempo(tempo: Double,masterTempo: Int32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_setTempo(ref,tempo,masterTempo)
  }


  public  func jogTouchEnd(decelerate: Float32,synchronisedStart: Int32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_jogTouchEnd(ref,decelerate,synchronisedStart)
  }


  public  func msInLoop(ms: Double) -> Int32
  {
    return SuperpoweredAdvancedAudioPlayer_msInLoop(ref,ms)
  }


  public  func setPitchShift(pitchShift: Int32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_setPitchShift(ref,pitchShift)
  }


  public func processMulti(buffers: [(input: Float32, output: Float32, volume: Float32)], bufferAdd: [Bool], masterBpm: Double,masterMsElapsedSinceLastBeat: Double,phase: Double,quantum: Double) -> Bool
  {
    var volume:[Float32] = buffers.map { $0.volume }
    var items: [UnsafeMutablePointer<Float32>?] = buffers.map { item in
      let buf = UnsafeMutablePointer<Float32>.allocate(capacity: 2)
      buf.pointee = item.input
      buf.advanced(by: 1).pointee = item.output
      return buf
    }
    let ret = items.withUnsafeMutableBufferPointer { pItems -> Bool in
      guard let pbuffers = pItems.baseAddress else { return false }
      return volume.withUnsafeMutableBufferPointer { pVolume in
        guard let pVol = pVolume.baseAddress else { return false }
        var add = bufferAdd.map { $0 ? Int32(1) : Int32(0) }
        return add.withUnsafeMutableBufferPointer { pBufferAdd in
          guard let pAdd = pBufferAdd.baseAddress else { return false }
          let ret = SuperpoweredAdvancedAudioPlayer_processMulti(ref,pbuffers,pAdd, UInt32(buffers.count), pVol,masterBpm,masterMsElapsedSinceLastBeat,phase,quantum)
          return ret == 0 ? false : true
        }
      }
    }
    items.forEach { $0?.deallocate() }
    return ret
  }


  public  func setReverse(reverse: Int32,slipMs: UInt32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_setReverse(ref,reverse,slipMs)
  }


  public  func jogTouchBegin(ticksPerTurn: Int32,mode: JogMode,scratchSlipMs: UInt32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_jogTouchBegin(ref,ticksPerTurn,mode.rawValue,scratchSlipMs)
  }


  deinit { SuperpoweredAdvancedAudioPlayer_delete(ref) }


  public  func setSamplerate(sampleRate: UInt32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_setSamplerate(ref,sampleRate)
  }


  public  func closestBeatMs(ms: Double,beatIndex: [UInt8]) -> Double
  {
    var bi = beatIndex
    return bi.withUnsafeMutableBufferPointer { pBi in
      guard let base = pBi.baseAddress else { return 0.0 }
      return SuperpoweredAdvancedAudioPlayer_closestBeatMs(ref,ms,base)
    }
  }


  public  func open(path: String,customHTTPHeaders: [String]) -> Void
  {
    var headers:[UnsafeMutablePointer<Int8>?] = customHTTPHeaders.map { strdup($0) }
    headers.withUnsafeMutableBufferPointer { pHeaderBuffer in
      guard let pheaders = pHeaderBuffer.baseAddress else { return }
      SuperpoweredAdvancedAudioPlayer_open_A(self.ref,path,pheaders)
    }
    headers.forEach { header in
      guard let pheader = header else { return }
      free(pheader)
    }
  }


  public  func endContinuousPitchBend() -> Void
  {
    SuperpoweredAdvancedAudioPlayer_endContinuousPitchBend(ref)
  }


  public  func startScratch(slipMs: UInt32,stopImmediately: Int32) -> Void
  {
    SuperpoweredAdvancedAudioPlayer_startScratch(ref,slipMs,stopImmediately)
  }

}
