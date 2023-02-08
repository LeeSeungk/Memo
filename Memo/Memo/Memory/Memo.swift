//
//  Memo.swift
//  Memo
//
//  Created by SeungKyu on 2023/02/07.
//

import Foundation
import SwiftUI

class Memo : Identifiable, ObservableObject{
    let id : UUID
    @Published var content: String
    let insertDate : Date
    
    init(content: String, insertDate: Date = Date.now){
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
