import SwiftUI

struct MemoFieldView: View {
    @State private var text: String = ""
    private let lineLimit: Int?
    
    init(_ lineLimit: Int? = nil) {
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
    return MemoFieldView()
}
