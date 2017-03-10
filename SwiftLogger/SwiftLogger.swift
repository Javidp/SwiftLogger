open class SwiftLogger {

    internal static var logger: Logger = EmptyLogger()
    
    
    open static func initialize(showTime: Bool = false, showLevel: Bool = false,
                                showTag: Bool = false, tags: String...) {
        var parts: [Int] = []
        if showTime {
            parts.append(0)
        }
        if showLevel {
            parts.append(1)
        }
        if showTag {
            parts.append(2)
        }
        
        logger = ConsoleLogger(parts: parts, tags: tags)
    }

}
