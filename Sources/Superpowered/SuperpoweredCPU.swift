import SuperpoweredAPI
#if os(OSX)
import Darwin
#else
import Glibc
#endif

public class SuperpoweredCPU
{ 
  public static func setSustainedPerformanceMode(enable: Int32) -> Void
  {
    SuperpoweredCPU_setSustainedPerformanceMode(enable)
  }

}