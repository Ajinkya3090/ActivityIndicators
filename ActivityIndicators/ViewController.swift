//
//  ViewController.swift
//  ActivityIndicators
//
//  Created by Admin on 07/07/22.
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        startIndicator()
        stopIndicator()
    }

    let loading = NVActivityIndicatorView(frame: .zero, type: .ballDoubleBounce , color: .black, padding: 0  )

    
    func startIndicator() {
        loading.layer.borderColor = UIColor(ciColor: .yellow).cgColor
        loading.translatesAutoresizingMaskIntoConstraints =  false
        loading.backgroundColor = .clear
        loading.layer.cornerRadius = 40
                      view.addSubview(loading)
                NSLayoutConstraint(item: loading, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
                NSLayoutConstraint(item: loading, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
                NSLayoutConstraint(item: loading, attribute: .height, relatedBy: .equal, toItem: nil , attribute: .height, multiplier: 1, constant: 80).isActive = true
                NSLayoutConstraint(item: loading, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 80).isActive = true
        loading.startAnimating()
    }
    
    func stopIndicator() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 20) {
            self.loading.stopAnimating()
        }
    }
    
    
}

