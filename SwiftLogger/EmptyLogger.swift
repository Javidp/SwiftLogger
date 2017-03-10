internal class EmptyLogger: Logger {
    
    init() {}
    
    required init(parts: [Int], tags: [String]) {}
    
    func i(_ tag: String, _ message: String) {}
    func w(_ tag: String, _ message: String) {}
    func e(_ tag: String, _ message: String) {}

}
