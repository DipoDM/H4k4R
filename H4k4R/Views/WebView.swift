//
//  WebView.swift
//  H4k4R
//
//  Created by ODM on 7/15/20.
//  Copyright © 2020 ODM. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let urlString : String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
