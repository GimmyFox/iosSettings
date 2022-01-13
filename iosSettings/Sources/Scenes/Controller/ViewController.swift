//
//  ViewController.swift
//  iosSettings
//
//  Created by Maksim Guzeev on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {


    
    private var settingView: SettingView? {
        guard isViewLoaded else {return nil}
        return view as? SettingView
        }
    
    var model: SettingsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = SettingView()
        model = SettingsModel()
        
        navigationItem.title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true

        configureView()
        }

   }

private extension ViewController {
    func configureView() {
        guard let models = model?.createModel() else {return}
        models.forEach { [unowned self] model in
            settingView?.configureView(with: models)
        }
    }
}

