import XCTest
@testable import CompilerArgsParser

final class CompilerArgsParserTests: XCTestCase {
    func testArgumentsGetFormattedCorrectly() throws {
        let modules = try! CompilerArgsParser.parseArguments(forProject: .init(path: "/Users/polpiella/Developer/swift-blogger/SwiftBlogger.xcworkspace", scheme: "SwiftBlogger", sdk: "macosx"))
        let module = modules.first(where: { $0.name == "SwiftBlogger" })
        let compilerArguments = module?.compilerArguments ?? []
        print(compilerArguments)
    }
}
