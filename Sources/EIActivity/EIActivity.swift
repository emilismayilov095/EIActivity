// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public class EIActivity {
    public static let shared = EIActivity()
    private init() {}
}


extension EIActivity {
    public func show(color: UIColor = .white, style: UIActivityIndicatorView.Style = .large) {
        if let topViewController = UIApplication.shared.firstKeyWindow?.rootViewController {
            let view = ActivityView(frame: topViewController.view.frame, color: color, style: style)
            view.tag = 999
            topViewController.view.addSubview(view)
        }
    }
    
    public func hide() {
        if let subviews = UIApplication.shared.firstKeyWindow?.rootViewController?.view.subviews {
            for subview in subviews {
                if subview.tag == 999 {
                    subview.removeFromSuperview()
                }
            }
        }
    }
}
