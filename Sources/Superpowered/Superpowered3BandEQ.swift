import SuperpoweredAPI

public class Superpowered3BandEQ {

  private let ref: UnsafeMutableRawPointer
  public func reset() -> Void {
    Superpowered3BandEQ_reset(ref)
  }

  public init?(samplerate: UInt32) {
    guard let handle = Superpowered3BandEQ_new(samplerate) else { return nil }
    ref = handle
  }

  /// - parameter samplerate: 44100, 48000, etc.
  public func setSamplerate(samplerate: UInt32) -> Void {
    Superpowered3BandEQ_setSamplerate(ref,samplerate)
  }

  deinit { Superpowered3BandEQ_delete(ref) }

  /// Processes the audio.
  /// It's not locked when you call other methods from other threads, and they not interfere with process() at all.
  /// Recommendations for best performance: multiply of 4, minimum 64.
  public func process(input: [Float32]) -> [Float32] {
    var inp = input
    return inp.withUnsafeMutableBufferPointer { pInputBuffer -> [Float32] in
      guard let pInput = pInputBuffer.baseAddress else {
        return []
      }
      var output:[Float32] = input.map { _ in return 0 }
      output.withUnsafeMutableBufferPointer { pOutputBuffer in
        guard let pOutput = pOutputBuffer.baseAddress else {
          return
        }
        let _ = Superpowered3BandEQ_process(self.ref, pInput, pOutput, UInt32(input.count))
      }
      return output
    }
  }

  public func enable(flag: Bool = true) {
    Superpowered3BandEQ_enable(ref, flag ? 1 : 0)
  }
}
