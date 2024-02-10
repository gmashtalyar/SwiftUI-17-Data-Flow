import SwiftUI

struct LibraryItemView: View {
    
    var book: Book
    let imageName: String
    
    var body: some View {
        Self._printChanges()
        
        return HStack(alignment: .firstTextBaseline) {
            Image(systemName: imageName)
                .foregroundColor(Color.white)
            VStack(alignment: .leading) {
                Text(book.title)
                Text("Written by: \(book.author.name)")
                    .font(.caption)
            }
        }
        .background(Color.random)
    }
}

#Preview {
    LibraryItemView(book: Book(title: "title"), imageName: "book")
}
