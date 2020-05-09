//
//  ContentView.swift
//  H4X0R
//
//  Created by Judah Hudson on 4/6/20.
//  Copyright © 2020 Judah Hudson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // listener. subscribed to updates from NetworkManager
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {    //navigate between screens, go back easily
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) { //sends us to DetialView
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R News")
        }
            //similar to ViewDidLoad().  When body view appears, -> execute function
            .onAppear {
                self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone Xr")
    }
}
