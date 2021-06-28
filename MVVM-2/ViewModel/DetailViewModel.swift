//
//  DetailViewModel.swift
//  MVVM-2
//
//  Created by Егор Шкарин on 27.06.2021.
//

import Foundation


class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    var age: Box<String?> = Box(nil)
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) years old")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
