//
//  DetailView.swift
//  H4X0R
//
//  Created by Judah Hudson on 4/9/20.
//  Copyright © 2020 Judah Hudson. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


