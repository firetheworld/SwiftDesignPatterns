//
//  KVOImpViewController.swift
//  SwiftDesignPatterns
//
//  Created by 郑良凯 on 2018/3/25.
//  Copyright © 2018年 datayes. All rights reserved.
//

import UIKit

protocol KVOSubject {
	func registerObeserver(ob: NSObject)
	func removeObeserver(ob: NSObject)
}

class KVOImpViewController: UIViewController, KVOSubject {

	var weatherData : NSDictionary = NSDictionary()
	
	func registerObeserver(ob: NSObject) {
		self.addObserver(ob, forKeyPath: "weatherData", options: .new, context: nil)
	}
	
	func removeObeserver(ob: NSObject) {
		self.removeObeserver(ob: ob)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
}

