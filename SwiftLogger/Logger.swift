protocol Logger {
    
    func i(_ tag: String, _ message: String)
    func w(_ tag: String, _ message: String)
    func e(_ tag: String, _ message: String)
    
    init(parts: [Int], tags: [String])
    
}
