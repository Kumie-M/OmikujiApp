//
//  OmikujiViewController.swift
//  OmikujiApp
//
//  Created by Kumie Miyata on 2021/10/11.
//

import UIKit

final class OmikujiViewController: UIViewController {
    
    @IBOutlet weak var luckyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabelLayer()
    }
    
    func setupLabelLayer() {
        let cornerRadiusNum = 2
        
        luckyLabel.layer.borderColor = UIColor.blue.cgColor
        luckyLabel.layer.borderWidth = 5
        luckyLabel.layer.cornerRadius = luckyLabel.bounds.width / CGFloat(cornerRadiusNum)
        luckyLabel.layer.masksToBounds = true
    }
    
    @IBAction private func randomButton(_ sender: UIButton) {
        var results = ["大吉",
                       "小吉",
                       "中吉",
                       "末吉",
                       "凶"]
        results.shuffle()
        self.luckyLabel.text = results.first
    }
}
