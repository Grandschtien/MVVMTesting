//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Егор Шкарин on 27.06.2021.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.label.text = viewModel.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.age.bind(listener: { [unowned self] in
            guard let string = $0 else {return}
            
            self.label.text = string
        })
        
        delay(delay: 5.0) { [unowned self] in
            self.viewModel?.age.value = "some new value"
        }
    }
    
    private func delay(delay: Double, closure: @escaping ()->()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            closure()
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
