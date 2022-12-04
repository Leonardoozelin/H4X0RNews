//
//  ContentView.swift
//  H4X0R News
//
//  Created by Leonardo Miranda on 15/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts){
                post in Text(post.title)
            }
            .navigationTitle("H4X0R NEWS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable{
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello Duck!"),
    Post(id: "2", title: "My name is human name"),
    Post(id: "3", title: "And I'm going to pick you up now!")
]
