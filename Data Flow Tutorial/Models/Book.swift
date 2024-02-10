import Foundation

struct Book: Identifiable {
    
    var title: String
    var author = Author()
    var isAvailable = true
    let id = UUID()
    let iconIndex: Int = Int.random(in: 0...4)
    
    static func examples() -> [Book] {
        let result = (0...100).map { index in
            Book(title: "book title \(index)")
        }
        return result
    }
}
