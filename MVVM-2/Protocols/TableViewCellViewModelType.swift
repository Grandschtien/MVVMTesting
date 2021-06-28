//
//  TableViewCellViewModelType.swift
//  MVVM-2
//
//  Created by Егор Шкарин on 27.06.2021.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    var name: String { get }
    var secondName: String { get }
    var age: String { get }
}
