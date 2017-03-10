internal class ConsoleLogger: Logger {
    
    private var parts: [Int] = []
    private var tags: [String] = []
    private var time = Time()
    
    
    required init(parts: [Int], tags: [String]) {
        self.parts = parts
        self.tags = tags
    }
    
    internal func i(_ tag: String, _ message: String) {
        log(items: time.get(), "🔵 \(LogLevel.info.rawValue)", "[\(tag)]", tag: tag, message: message)
    }
    
    internal func w(_ tag: String, _ message: String) {
        log(items: time.get(), "🔶 \(LogLevel.warn.rawValue)", "[\(tag)]", tag: tag, message: message)
    }
    
    internal func e(_ tag: String, _ message: String) {
        log(items: time.get(), "🔴 \(LogLevel.error.rawValue)", "[\(tag)]", tag: tag, message: message)
    }
    
    private func log(items: String..., tag: String, message: String) {
        if tags.contains(tag) {
            var log = ""
            for part in parts {
                log += items[part] + " "
            }
            log += message
            
            print(log)
        }
    }
    
}
