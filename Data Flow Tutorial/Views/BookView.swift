import SwiftUI

struct BookView: View {

    @Binding var book: Book
    @State private var isEditorPresented = false
    @EnvironmentObject var library: Library
    
    var body: some View {
        VStack {
            List {
                Text(book.title)
                Text("Written by: \(book.author.name)")
                HStack {
                    Text(book.isAvailable ? "Available for checkout" : "Waiting for return")
                    Spacer()
                    Button(book.isAvailable ? "Check out" : "Return") {
                        book.isAvailable.toggle()
                    }
                }
            }
            Button("Edit book") {
                isEditorPresented = true
            }
        }
        .sheet(isPresented: $isEditorPresented) {
            BookEditView(book: $book)
        }
        .toolbar(content: {
            Button(role: .destructive) {
                library.delete(book: book)
            } label: {
                Label("Delete", systemImage: "trash")
            }
        })
    }
}

#Preview {
    BookView(book: .constant(Book(title: "title")))
        .environmentObject(Library())
}
