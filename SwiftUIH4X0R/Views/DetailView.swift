//
//  DetailView.swift
//  SwiftUIH4X0R
//
//  Created by ARMSTRONG on 12/11/19.
//  Copyright © 2019 ARMSTRONG. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    var body: some View {
        Webview(url: url!)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.yahoo.com")
    }
}
