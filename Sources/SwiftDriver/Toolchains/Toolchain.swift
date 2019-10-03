import TSCBasic

public enum Tool {
  case swiftCompiler
  case staticLinker
  case dynamicLinker
}

/// Describes a toolchain, which includes information about compilers, linkers
/// and other tools required to build Swift code.
public protocol Toolchain {
  /// Retrieve the absolute path to a particular tool.
  func getToolPath(_ tool: Tool) throws -> AbsolutePath

  /// Returns path of the default SDK, if there is one.
  func defaultSDKPath() throws -> AbsolutePath?
}
