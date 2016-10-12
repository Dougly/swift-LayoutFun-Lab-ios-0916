//
//  ViewController.swift
//  LayoutFun
//
//  Created by James Campagno on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    let redView = UIView(frame: CGRect.zero)
    let orangeView = UIView(frame: CGRect.zero)
    let yellowView = UIView(frame: CGRect.zero)
    let greenView = UIView(frame: CGRect.zero)
    let blueView = UIView(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        turnOffAutoResizingOnAllViews()
        setupTheConstraints()
        setupColors()
    }
    
}

// MARK: Constraints
extension ViewController {
    
    func setupTheConstraints() {
        // TODO: Create all the constraints (in code) for the various views
        
        //red square
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        redView.heightAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        //orange square
        orangeView.bottomAnchor.constraint(equalTo: redView.topAnchor).isActive = true
        orangeView.heightAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 0.75).isActive = true
        orangeView.widthAnchor.constraint(equalTo: orangeView.heightAnchor).isActive = true
        orangeView.centerXAnchor.constraint(equalTo: redView.centerXAnchor).isActive = true
        
        //yellow square
        yellowView.bottomAnchor.constraint(equalTo: orangeView.topAnchor).isActive = true
        yellowView.heightAnchor.constraint(equalTo: orangeView.heightAnchor, multiplier: 0.75).isActive = true
        yellowView.widthAnchor.constraint(equalTo: yellowView.heightAnchor).isActive = true
        yellowView.centerXAnchor.constraint(equalTo: orangeView.centerXAnchor).isActive = true
        
        //green square
        greenView.bottomAnchor.constraint(equalTo: yellowView.topAnchor).isActive = true
        greenView.heightAnchor.constraint(equalTo: yellowView.heightAnchor, multiplier: 0.75).isActive = true
        greenView.widthAnchor.constraint(equalTo: greenView.heightAnchor).isActive = true
        greenView.centerXAnchor.constraint(equalTo: yellowView.centerXAnchor).isActive = true
        
        //blue square
        blueView.bottomAnchor.constraint(equalTo: greenView.topAnchor).isActive = true
        blueView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.75).isActive = true
        blueView.widthAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
        blueView.centerXAnchor.constraint(equalTo: greenView.centerXAnchor).isActive = true
        
    }
    
    func turnOffAutoResizingOnAllViews() {
        [redView, orangeView, yellowView, greenView, blueView].forEach { colorView in
            colorView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(colorView)
        }
    }
    
}


// MARK: Setting up Views
extension ViewController {
    
    func setupColors() {
        redView.backgroundColor = UIColor.red
        orangeView.backgroundColor = UIColor.orange
        yellowView.backgroundColor = UIColor.yellow
        greenView.backgroundColor = UIColor.green
        blueView.backgroundColor = UIColor.blue
    }
}
