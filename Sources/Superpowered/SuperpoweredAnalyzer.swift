import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredAnalyzer {
  private let ref: UnsafeMutableRawPointer

  public init?(samplerate: UInt32,bpm: Float32,lengthSeconds: Int32,minimumBpm: Float32,maximumBpm: Float32) {
    guard let handle = SuperpoweredAnalyzer_new(samplerate,bpm,lengthSeconds,minimumBpm,maximumBpm) else { return nil }
    ref = handle
  }

  deinit { SuperpoweredAnalyzer_delete(ref) }


  public func process(input: [Float32], lengthSeconds: Int32 = 01) -> Void
  {
    var inp = input
    inp.withUnsafeMutableBufferPointer { pInp in
      guard let base = pInp.baseAddress else { return }
      SuperpoweredAnalyzer_process(ref, base, UInt32(input.count), lengthSeconds)
    }
  }

  public class Waveform {
    private var averageWaveform = UnsafeMutablePointer<UInt8>.init(bitPattern: 0)
    private var peakWaveform = UnsafeMutablePointer<UInt8>.init(bitPattern: 0)
    private var lowWaveform = UnsafeMutablePointer<UInt8>.init(bitPattern: 0)
    private var midWaveform = UnsafeMutablePointer<UInt8>.init(bitPattern: 0)
    private var highWaveform = UnsafeMutablePointer<UInt8>.init(bitPattern: 0)
    private var pNotes = UnsafeMutablePointer<UInt8>.init(bitPattern: 0)
    public var waveformSize = Int32(0)
    private var overviewWaveform = UnsafeMutablePointer<Int8>.init(bitPattern: 0)
    public var overviewSize = Int32(0)
    public var averageDecibel: Float32 = 0
    public var loudpartsAverageDecibel: Float32 = 0
    public var peakDecibel: Float32 = 0
    public var bpm: Float32 = 0
    public var beatgridStartMs: Float32 = 0
    public var keyIndex: Int32 = 0

    init(parent: SuperpoweredAnalyzer, previousBpm: Float32) {
      SuperpoweredAnalyzer_getresults(parent.ref, &averageWaveform, &peakWaveform, &lowWaveform, &midWaveform, &highWaveform, &pNotes, &waveformSize, &overviewWaveform, &overviewSize, &averageDecibel, &loudpartsAverageDecibel, &peakDecibel, &bpm, &beatgridStartMs, &keyIndex, previousBpm)
    }
    deinit {
      averageWaveform?.deallocate()
      peakWaveform?.deallocate()
      lowWaveform?.deallocate()
      midWaveform?.deallocate()
      highWaveform?.deallocate()
      pNotes?.deallocate()
      overviewWaveform?.deallocate()
    }

    public var average:[UInt8] {
      return Array.init(UnsafeBufferPointer<UInt8>.init(start: averageWaveform, count: Int(waveformSize)))
    }

    public var peak:[UInt8] {
      return Array.init(UnsafeBufferPointer<UInt8>.init(start: peakWaveform, count: Int(waveformSize)))
    }

    public var low:[UInt8] {
      return Array.init(UnsafeBufferPointer<UInt8>.init(start: lowWaveform, count: Int(waveformSize)))
    }

    public var mid:[UInt8] {
      return Array.init(UnsafeBufferPointer<UInt8>.init(start: midWaveform, count: Int(waveformSize)))
    }

    public var high:[UInt8] {
      return Array.init(UnsafeBufferPointer<UInt8>.init(start: highWaveform, count: Int(waveformSize)))
    }

    public var waveformOverview:[Int8] {
      return Array.init(UnsafeBufferPointer<Int8>.init(start: overviewWaveform, count: Int(waveformSize)))
    }

    public var notes:[UInt8] {
      return Array.init(UnsafeBufferPointer<UInt8>.init(start: self.pNotes, count: Int(waveformSize)))
    }
  }

  public func getresults(previousBpm: Float32 = 0) -> Waveform {
    return Waveform.init(parent: self, previousBpm: previousBpm)
  }
}
/*

  public init?(samplerate: UInt32,lengthSeconds: Int32)
  {
    guard let handle = SuperpoweredWaveform_new(samplerate,lengthSeconds) else { return nil }
    ref = handle
  }


  public  func getresult(size: UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?
  {
    return SuperpoweredWaveform_getresult(ref,size)
  }




  deinit { SuperpoweredWaveform_delete(ref) }


  public  func getresults(averageWaveform: UnsafeMutableRawPointer?,peakWaveform: UnsafeMutableRawPointer?,lowWaveform: UnsafeMutableRawPointer?,midWaveform: UnsafeMutableRawPointer?,highWaveform: UnsafeMutableRawPointer?,notes: UnsafeMutableRawPointer?,waveformSize: UnsafeMutableRawPointer?,overviewWaveform: UnsafeMutableRawPointer?,overviewSize: UnsafeMutableRawPointer?,averageDecibel: UnsafeMutableRawPointer?,loudpartsAverageDecibel: UnsafeMutableRawPointer?,peakDecibel: UnsafeMutableRawPointer?,bpm: UnsafeMutableRawPointer?,beatgridStartMs: UnsafeMutableRawPointer?,keyIndex: UnsafeMutableRawPointer?,previousBpm: Float32) -> Void
  {
    SuperpoweredAnalyzer_getresults(ref,averageWaveform,peakWaveform,lowWaveform,midWaveform,highWaveform,notes,waveformSize,overviewWaveform,overviewSize,averageDecibel,loudpartsAverageDecibel,peakDecibel,bpm,beatgridStartMs,keyIndex,previousBpm)
  }



  public  func process(input: UnsafeMutableRawPointer?,numberOfFrames: UInt32,lengthSeconds: Int32) -> Void
  {
    SuperpoweredWaveform_process(ref,input,numberOfFrames,lengthSeconds)

  }




  deinit { SuperpoweredLiveAnalyzer_delete(ref) }


  public  func setSamplerate(samplerate: UInt32) -> Void
  {
    SuperpoweredLiveAnalyzer_setSamplerate(ref,samplerate)
  }


  public  func process(input: UnsafeMutableRawPointer?,numberOfFrames: UInt32) -> Void
  {
    SuperpoweredLiveAnalyzer_process(ref,input,numberOfFrames)
  }


  public init?(samplerate: UInt32)
  {
    guard let handle = SuperpoweredLiveAnalyzer_new(samplerate) else { return nil }
    ref = handle
  }

}
*/
