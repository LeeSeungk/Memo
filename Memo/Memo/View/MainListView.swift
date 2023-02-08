//
//  MainListView.swift
//  Memo
//
//  Created by SeungKyu on 2023/02/07.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    @State private var showComposer: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.list){ memo in
                    NavigationLink {
                        DetailView(memo: memo)
                    } label: {
                        Memocell(memo: memo)
                    }
                }
                .onDelete(perform: store.delete)
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
            .toolbar {
                Button {
                    showComposer = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showComposer) {
                ComposeView()
        }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}


