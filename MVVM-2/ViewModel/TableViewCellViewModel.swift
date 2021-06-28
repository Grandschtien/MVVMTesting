//
//  TableViewCellViewModel.swift
//  MVVM-2
//
//  Created by Егор Шкарин on 27.06.2021.
//

import Foundation
class TableViewCellViewModel: TableViewCellViewModelType {
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age) 
    }
    
    private var profile: Profile
    
    init(profile: Profile) {
        self.profile = profile
    }
    
}
