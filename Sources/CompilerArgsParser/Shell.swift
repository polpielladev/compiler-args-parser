import Foundation

enum Shell {
    static func execute(command: String, args: [String]) throws -> String {
        let process = Process()
        let outputPipe = Pipe()
        
        process.executableURL = URL(fileURLWithPath: command)
        process.arguments = args
        process.standardOutput = outputPipe
        
        try process.run()
        
        let data = try outputPipe.fileHandleForReading.readToEnd()!
        
        process.waitUntilExit()

        
        return String(data: data, encoding: .utf8)!
    }
}
