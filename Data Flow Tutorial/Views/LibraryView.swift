import SwiftUI

struct LibraryView: View {
    //@EnvironmentObject var library: Library
    @Environment(\.library) private var library
    
    var body: some View {
        Self._printChanges()
        
        return NavigationView {
            List(library.books) {book in
                NavigationLink {
                    BookView(book: book)
                } label: {
                    LibraryItemView(book: book, imageName: library.iconName(for: book))
                }
            }
            .navigationTitle("Observation")
            .toolbar(content: {
                Text("Books available: \(library.availableBooksCount)")
            })
        }
    }
}

#Preview {
    LibraryView()
        //.environmentObject(Library())
        .environment(\.library, Library())
}
