public struct XCodeProject {
    public let path: String
    public let scheme: String
    public let sdk: String
    
    public init(path: String, scheme: String, sdk: String) {
        self.path = path
        self.scheme = scheme
        self.sdk = sdk
    }
}
