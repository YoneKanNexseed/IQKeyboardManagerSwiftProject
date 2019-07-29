//
//  ViewController.swift
//  IQKeyboardManagerSwiftProject
//
//  Created by yonekan on 2019/07/29.
//  Copyright © 2019 yonekan. All rights reserved.
//

import UIKit
// 追記
import FontAwesome_swift
import RevealingSplashView

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // label1にアイコン設定
        label1.font = UIFont.fontAwesome(ofSize: 50, style: .solid)
        label1.text = String.fontAwesomeIcon(name: .user)
        
        label2.font = UIFont.fontAwesome(ofSize: 80, style: .regular)
        label2.textColor = .red
        label2.text = String.fontAwesomeIcon(name: .angry)
        
        //Initialize a revealing Splash with with the iconImage, the initial size and the background color
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "logo")!,iconInitialSize: CGSize(width: 100, height: 100), backgroundColor: UIColor(red:0.11, green:0.96, blue:0.95, alpha:1.0))
        
        revealingSplashView.animationType = .woobleAndZoomOut
        revealingSplashView.delay = 3.0
        
        
        //Adds the revealing splash view as a sub view
        self.view.addSubview(revealingSplashView)
        
        //Starts animation
        revealingSplashView.startAnimation(){
            print("Completed")
        }
        
    }


}

