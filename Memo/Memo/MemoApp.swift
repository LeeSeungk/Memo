//
//  MemoApp.swift
//  Memo
//
//  Created by SeungKyu on 2023/02/07.
//

import SwiftUI

@main
struct MemoApp: App {
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
