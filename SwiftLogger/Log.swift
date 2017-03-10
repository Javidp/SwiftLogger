open class Log {

    open static func i(_ tag: String, _ message: String) {
        SwiftLogger.logger.i(tag, message)
    }
    
    open static func w(_ tag: String, _ message: String) {
        SwiftLogger.logger.w(tag, message)
    }
    
    open static func e(_ tag: String, _ message: String) {
        SwiftLogger.logger.e(tag, message)
    }
    
}
