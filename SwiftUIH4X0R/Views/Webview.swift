//
//  Webview.swift
//  SwiftUIH4X0R
//
//  Created by ARMSTRONG on 12/11/19.
//  Copyright © 2019 ARMSTRONG. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    let url: String?
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.url!) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        
        return wkWebview
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
}
