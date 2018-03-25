//
//  WeatherData.swift
//  SwiftDesignPatterns
//
//  Created by 郑良凯 on 2018/3/25.
//  Copyright © 2018年 datayes. All rights reserved.
//

import UIKit

/*
	本类用于获取天气数据，并通知所有观察者
*/

protocol Observer: class {
	func update()
}
protocol Subject {
	var observers: [Observer] { get }
	func registerObeserver(ob: Observer)
	func removeObeserver(ob: Observer)
	func notifyAllObeserver()
}

class WeatherDataVC: UIViewController, Subject {
	
	var observers: Array<Observer> = Array()
	
	func registerObeserver(ob: Observer) {
		observers.append(ob)
	}
	
	func removeObeserver(ob: Observer) {
		if let i = observers.index(where: {$0 === ob }) {
			observers.remove(at: i)
		}
	}
	
	func notifyAllObeserver() {
		observers.forEach { $0.update() }
	}
	
	
}
