//
//  ViewController.swift
//  AutoLayoutProgrammatically
//
//  Created by Huseyin Can Dayan on 22.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let myView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .link
        return myView
    }()
    
    private let mySecondView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .systemRed
        return myView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        myView.addSubview(mySecondView)
        addConstraints()
        
    }

    private func addConstraints() {
        var constraints = [NSLayoutConstraint]()
        
//        Add
        constraints.append(myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        
        constraints.append(mySecondView.widthAnchor.constraint(equalTo: myView.widthAnchor, multiplier: 0.5))
        constraints.append(mySecondView.heightAnchor.constraint(equalTo: myView.heightAnchor, multiplier: 0.5))
        constraints.append(mySecondView.centerYAnchor.constraint(equalTo: myView.centerYAnchor))
        constraints.append(mySecondView.centerXAnchor.constraint(equalTo: myView.centerXAnchor))
        
//        constraints.append(mySecondView.widthAnchor.constraint(equalTo: myView.widthAnchor, constant: 200))
//        constraints.append(mySecondView.heightAnchor.constraint(equalTo: myView.heightAnchor, constant: 200))
        
//        constraints.append(mySecondView.leadingAnchor.constraint(equalTo: myView.safeAreaLayoutGuide.leadingAnchor, constant: 120))
//        constraints.append(mySecondView.trailingAnchor.constraint(equalTo: myView.safeAreaLayoutGuide.trailingAnchor))
//        constraints.append(mySecondView.bottomAnchor.constraint(equalTo: myView.safeAreaLayoutGuide.bottomAnchor))
//        constraints.append(mySecondView.topAnchor.constraint(equalTo: myView.safeAreaLayoutGuide.topAnchor))

//        Activate
        NSLayoutConstraint.activate(constraints)
        
        
    }

}

