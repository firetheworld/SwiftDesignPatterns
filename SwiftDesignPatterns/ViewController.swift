//
//  ViewController.swift
//  SwiftDesignPatterns
//
//  Created by 郑良凯 on 2018/3/25.
//  Copyright © 2018年 datayes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		let view = ViewA()
		view.touch();
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

