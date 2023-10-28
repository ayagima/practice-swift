import SwiftUI

struct MemoFieldView: View {
    @Binding private var text: String
    private let lineLimit: Int?
    
    init(_ text: Binding<String>, _ lineLimit: Int? = nil) {
        self._text = text
        self.lineLimit = lineLimit
    }
    
    var body: some View {
        // TODO: 文字数表示
        // TODO: 入力制限
        TextEditor(text: $text)
            .ignoresSafeArea()
            .lineLimit(lineLimit)
    }
}

#Preview {
    let text = """
くぁwせdrftgyふじこlp
くぁwせdrftgyふじこlp
くぁwせdrftgyふじこlp
くぁwせdrftgyふじこlp
"""
    return MemoFieldView(.constant(text))
}
