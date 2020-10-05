//
//  DetailView.swift
//  H4k4R
//
//  Created by ODM on 7/15/20.
//  Copyright © 2020 ODM. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    // this is put in here because this view is going to GET a url from the ListView and PASS it into this View
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
            .edgesIgnoringSafeArea(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}


