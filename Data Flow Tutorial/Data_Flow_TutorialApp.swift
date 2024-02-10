import SwiftUI

@main
struct Data_Flow_TutorialApp: App {
    
    @State private var library = Library()
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            LibraryView()
                //.environmentObject(library)
                .environment(\.library, library)
        }
    }
}
