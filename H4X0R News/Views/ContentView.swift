//
//  ContentView.swift
//  H4X0R News
//
//  Created by Leonardo Miranda on 12/05/22.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var networkManager = NetworkMenager()

    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
