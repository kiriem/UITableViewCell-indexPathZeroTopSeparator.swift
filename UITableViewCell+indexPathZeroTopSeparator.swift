//
//  UITableViewCell+indexPathZeroTopSeparator.swift
// 
//  Created by Kyrie Miyajima on 2017/03/31.
//  Copyright © 2017年 Kirie Miyajima. All rights reserved.
//

import Foundation
import UIKit

public extension UITableViewCell {
	
	enum separatorInset {
		case zero
		case middle
	}
	
	func indexPathZeroTopSeparator(color: UIColor, inset: separatorInset, tableView:UITableView) {
		
		var width:CGFloat = 0
		var drawStartPoint:CGFloat = 0
		
		switch inset {
		case .zero:
			width = tableView.frame.width
			drawStartPoint = 0
		case .middle:
			width  = tableView.frame.width - tableView.separatorInset.left
			drawStartPoint = tableView.separatorInset.left
		}
		
		let separatorView:UIView = UIView(frame: CGRect(x: drawStartPoint, y: 0, width: width, height: 0.5))
		separatorView.backgroundColor = color
		self.addSubview(separatorView)
	}
	
}