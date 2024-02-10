import Foundation
import Observation

@Observable class Book: Identifiable {
    
    // @ObservationIgnored
    var title: String
    var author = Author()
    var isAvailable = true
    let id = UUID()
    let iconIndex: Int = Int.random(in: 0...4)
    
    init(title: String) {
        self.title = title
    }
    
    static func examples() -> [Book] {
        let result = (0...100).map { index in
            Book(title: "book title \(index)")
        }
        return result
    }
}
