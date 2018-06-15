import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredMixer
{

  private let ref: UnsafeMutableRawPointer

  public  func processPFL(channels: UnsafeMutableRawPointer?,outputs: UnsafeMutableRawPointer?,channelSwitches[4]: UnsafeMutableRawPointer?,channelOutputLevels[4]: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Void
  {
    SuperpoweredStereoMixer_processPFL(ref,channels,outputs,channelSwitches[4],channelOutputLevels[4],numberOfSamples)
  }


  public  func process(inputs: UnsafeMutableRawPointer?,outputs: UnsafeMutableRawPointer?,inputLevels[8]: UnsafeMutableRawPointer?,outputLevels[2]: UnsafeMutableRawPointer?,inputMeters[8]: UnsafeMutableRawPointer?,outputMeters[2]: UnsafeMutableRawPointer?,numberOfSamples: UInt32) -> Void
  {
    SuperpoweredStereoMixer_process(ref,inputs,outputs,inputLevels[8],outputLevels[2],inputMeters[8],outputMeters[2],numberOfSamples)
  }


  public init?()
  {
    guard let handle = SuperpoweredStereoMixer_new() else { return nil }
    ref = handle
  }


  deinit { SuperpoweredStereoMixer_delete(ref) }


  deinit { SuperpoweredMonoMixer_delete(ref) }


  public  func process(inputs: UnsafeMutableRawPointer?,output: UnsafeMutableRawPointer?,inputLevels: UnsafeMutableRawPointer?,outputGain: Float32,numberOfSamples: UInt32) -> Void
  {
    SuperpoweredMonoMixer_process(ref,inputs,output,inputLevels,outputGain,numberOfSamples)
  }


  public init?()
  {
    guard let handle = SuperpoweredMonoMixer_new() else { return nil }
    ref = handle
  }

}