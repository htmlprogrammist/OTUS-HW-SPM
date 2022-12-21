//
//  ViewController.swift
//  Task-28
//
//  Created by Егор Бадмаев on 21.12.2022.
//

import UIKit
import OtusHomework

public final class ViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private let label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 48, weight: .bold)
        label.numberOfLines = 0
        label.text = "Badmaev Egor"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Life Cycle
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

extension ViewController: HasOtusHomeworkView {
    public var squareView: UIView? {
        return view
    }
    
    public var squareViewController: UIViewController? {
        nil
    }
}
