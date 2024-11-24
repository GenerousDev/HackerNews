//
//  DetailView.swift
//  Hacker News
//
//  Created by Mac on 17/10/2024.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

//conform to protocol UIViewRepresentable
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType{
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
