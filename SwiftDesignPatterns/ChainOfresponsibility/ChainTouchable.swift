//
//  ChainProtocol.swift
//  SwiftDesignPatterns
//
//  Created by 郑良凯 on 2018/3/26.
//  Copyright © 2018年 datayes. All rights reserved.
//

import Foundation

protocol ChainTouchable {
	var next: ChainTouchable? { get }
	func touch()
}
