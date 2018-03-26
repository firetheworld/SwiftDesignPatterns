//
//  TestDemo.swift
//  SwiftDesignPatterns
//
//  Created by 郑良凯 on 2018/3/26.
//  Copyright © 2018年 datayes. All rights reserved.
//

import Foundation
import UIKit

class ViewA: ChainTouchable {
	var next: ChainTouchable? = ViewB();
	func touch() {
		next?.touch()
	}
}

class ViewB: ChainTouchable {
	var next: ChainTouchable? = ViewC()
	func touch() {
		next?.touch()
	}
}

class ViewC: ChainTouchable {
	var next: ChainTouchable? = nil
	func touch() {
		print("C")
	}
}

class ChainDemo: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		let view = ViewA()
		view.touch();
	}
}
