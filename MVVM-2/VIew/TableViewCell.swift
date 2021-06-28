//
//  TableViewCell.swift
//  MVVM-2
//
//  Created by Егор Шкарин on 27.06.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else {return}
            nameLabel.text = viewModel.name
            secondNameLabel.text = viewModel.secondName
            ageLabel.text = viewModel.age
        }
    }
}
