//
//  DetailView.swift
//  H4X0R
//
//  Created by Philip Yu on 4/11/20.
//  Copyright © 2020 Philip Yu. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {

    // MARK: - Properties
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
