//
//  PageViewController.swift
//  Landmarks (iOS)
//
//  Created by Piyush Porwal on 31/03/22.
//

import Foundation
import SwiftUI

struct PageViewController<Page: View>: UIViewControllerRepresentable{
    var pages: [Page]

    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers([UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        
        return pageViewController
    }
    
    
}
