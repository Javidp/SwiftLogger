internal class Time {
    
    private let formatter = DateFormatter()
    
    
    internal init() {
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
    }

    func get() -> String {
        return formatter.string(from: Date())
    }
    
    func get(_ arg: String) -> String {
        return ""
    }
    
}
