//
//  HomeScreen.swift
//  SampleiOSApp
//
//  Created by Girish on 03/04/25.
//  Copyright © 2025 Girish. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    let items: [Item] = [Item(title: "Late Cofee", price: 2.0),
                           Item(title: "Black Cofee", price: 2.0),
                           Item(title: "Maggie", price: 3.0),
                           Item(title: "Waffle", price: 5.0),
                           Item(title: "Margerita Pizza", price: 10.0),
                           Item(title: "Double Cheese Pizza", price: 12.0)]
    var body: some View {
        VStack {
            Text("Welcome to the Buy Smart Shop!")
                .font(.headline)
                .padding()
            List(items, id: \.self) { item in
                HStack {
                    Text(item.title)
                    Spacer()
                    Text(String(format: "$ %.2f", item.price))
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
