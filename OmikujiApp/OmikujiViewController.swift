//
//  OmikujiViewController.swift
//  OmikujiApp
//
//  Created by Kumie Miyata on 2021/10/11.
//

import UIKit

final class OmikujiViewController: UIViewController {
    
    @IBOutlet private weak var luckyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabelLayer()
    }
    
    private func setupLabelLayer() {
        let cornerRadiusNum: CGFloat = 2
        
        luckyLabel.layer.borderColor = UIColor.blue.cgColor
        luckyLabel.layer.borderWidth = 5
        luckyLabel.layer.cornerRadius = luckyLabel.bounds.width / cornerRadiusNum
        luckyLabel.layer.masksToBounds = true
    }
    
    @IBAction private func randomButton(_ sender: UIButton) {
        var omikujiResults = ["大吉",
                              "小吉",
                              "中吉",
                              "末吉",
                              "凶"]
        omikujiResults.shuffle()
        self.luckyLabel.text = omikujiResults.first
    }
}
