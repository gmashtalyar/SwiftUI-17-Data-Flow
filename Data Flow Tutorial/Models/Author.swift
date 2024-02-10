import Foundation
import Observation

@Observable class Author: Identifiable {
    var name = "Sample Author"
    let id = UUID()
    
    init(name: String = "Sample Author") {
        self.name = name
    }
}
