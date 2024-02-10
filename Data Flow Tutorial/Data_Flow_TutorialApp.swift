import SwiftUI

@main
struct Data_Flow_TutorialApp: App {
    
    @StateObject private var library = Library()
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            LibraryView()
                .environmentObject(library)
        }
    }
}
