//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Егор Шкарин on 27.06.2021.
//

import Foundation

class ViewModel: TableViewViewModelType{
    
    private var selectedIndexPath: IndexPath?
    var profiles = [Profile(name: "Egor", secondName: "Shkarin", age: 19),
                    Profile(name: "Tamik", secondName: "Kozhiev", age: 20),
                    Profile(name: "Mirzabek", secondName: "Amrakhov", age: 20),
                    Profile(name: "Veronica", secondName: "Ribova", age: 19),
                    Profile(name: "David", secondName: "Sokurov", age: 22),
                    Profile(name: "Daniil", secondName: "Harlov", age: 20),
                    Profile(name: "Vadim", secondName: "Konyaev", age: 20),
                    Profile(name: "Mikhail", secondName: "Polyakov", age: 19)]
    
    var numberOfRows: Int {
        return profiles.count
    }
    
    func cellViewModel(for indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
    
}
