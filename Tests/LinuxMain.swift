import XCTest

import SuperpoweredTests

var tests = [XCTestCaseEntry]()
tests += SuperpoweredTests.allTests()
XCTMain(tests)