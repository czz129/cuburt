//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI
class items :Identifiable {
    let itemName: String
    let imageName : String
    let quantity : Int
    init( imageName : String, itemName: String,quanity: Int){
        self.itemName = itemName
        self.imageName = imageName
        self.quantity = quanity
    }
    }
struct ContentView: View {
    var list = [
    items (imageName: "banana", itemName: "Bananas", quanity: 3),
    items (imageName: "apple", itemName: "Apples", quanity: 4),
    items (imageName: "eggs", itemName: "Eggs", quanity: 12),]
    var body: some View {
        NavigationView{
            List (list) { i in CustomCell(imageName: i.imageName, itemName:i.itemName, quantity: i.quantity)
                
            }.navigationTitle("Shopping List")
            
            List{
                Section(header: Text("Fruits")){
                    ForEach(list) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }
        }
        
    }
}

