//
//  ViewController.swift
//  Demo
//
//  Created by Banaple on 2020/01/16.
//  Copyright © 2020 bugkingK. All rights reserved.
//

import UIKit
import KoreanKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let korean = KoreanKit()
        // ㅇㄴㅎㅅㅇ Hello
        print(korean.split("안녕하세요 Hello", syllable: .initial))
        // false
        print(korean.isSyllable("ㄲ", syllable: .medial))
    }


}

