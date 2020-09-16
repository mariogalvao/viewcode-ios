//
//  ViewController.swift
//  viewcode-ios
//
//  Created by Mário Galvao on 16/09/20.
//  Copyright © 2020 Open Mind House. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var stackView = UIStackView()
    private var blueButton = UIButton()
    private var greenButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        setUpStackView()
        setUpBlueButton()
        setUpGreenButton()
    }

    private func setUpStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        view.addSubview(stackView)
        stackView.constraintToSafeArea()
    }
    
    private func setUpBlueButton() {
        blueButton.setTitle("Blue", for: .normal)
        blueButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        blueButton.setTitleColor(UIColor.systemBlue, for: .normal)
        blueButton.addTarget(self, action: #selector(blueButtonPressed), for: .touchUpInside)
        stackView.addArrangedSubview(blueButton)
    }
    
    @objc func blueButtonPressed() {
        let blueViewController = BlueViewController()
        navigationController?.pushViewController(blueViewController, animated: true)
    }
    
    private func setUpGreenButton() {
        greenButton.setTitle("Green", for: .normal)
        greenButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        greenButton.setTitleColor(UIColor.systemGreen, for: .normal)
        greenButton.addTarget(self, action: #selector(greenButtonPressed), for: .touchUpInside)
        stackView.addArrangedSubview(greenButton)
    }
    
    @objc func greenButtonPressed() {
        let greenViewController = GreenViewController()
        navigationController?.present(greenViewController, animated: true, completion: nil)
    }

}

