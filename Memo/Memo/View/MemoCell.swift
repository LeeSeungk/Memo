//
//  MemoCell.swift
//  Memo
//
//  Created by SeungKyu on 2023/02/07.
//

import SwiftUI

struct Memocell: View {
    
    @ObservedObject var memo : Memo
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            Text(memo.insertDate, style: .date)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct MemoCell_Previews: PreviewProvider {
    static var previews: some View {
        Memocell(memo: Memo(content: "Test"))
    }
}
