import Foundation

class Library: ObservableObject {
    @Published var books: [Book] = Book.examples()
    
    var availableBooksCount: Int {
        books.filter(\.isAvailable).count
    }
    
    func delete(book: Book) {
        if let index = books.firstIndex(where: { $0.id == book.id }) {
            books.remove(at: index)
        }
    }
    
    var icons = ["book", "pencil", "circle", "graduationcap", "paperclip"]
    
    func iconName(for book: Book) -> String {
        icons[book.iconIndex]
    }
}
