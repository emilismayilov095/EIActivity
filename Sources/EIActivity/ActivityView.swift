//
//  ActivityView.swift
//  
//
//  Created by Muslim on 07.02.24.
//

import UIKit

class ActivityView: UIView {
    
    private let activityIndicatorView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }() 

    // MARK: - Inits
    override init(frame: CGRect = UIScreen.main.bounds) {
        super.init(frame: frame)
        
        setupUI()
        setupConstraints()
    }
    
    init(frame: CGRect = UIScreen.main.bounds, color: UIColor, style: UIActivityIndicatorView.Style) {
        super.init(frame: frame)
        
        setupUI(color: color, style: style)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    private func setupUI(color: UIColor = .white, style: UIActivityIndicatorView.Style = .medium) {
        self.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        
        activityIndicatorView.color = color
        activityIndicatorView.style = style
        activityIndicatorView.startAnimating()
    }
    
    private func setupConstraints() {
        self.addSubview(activityIndicatorView)
        
        NSLayoutConstraint.activate([
            activityIndicatorView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            activityIndicatorView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
}
