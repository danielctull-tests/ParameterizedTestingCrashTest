import Testing
@testable import ParameterizedTestingCrashTest

@Suite struct FlagTests {
  @Test(arguments: Flag.allCases)
  func checkFlags(_ flag: Flag) {
    #expect(flag is Flag)
  }
}

enum Flag: CaseIterable, Equatable {
  case one
  case two
}
