//
//  ViewController.swift
//  iosSettings
//
//  Created by Maksim Guzeev on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {

    var models = [SectionSettings]()
    
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        table.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)
        
        return table
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        configure()
        setupHierarchy()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
    }

    private func setupHierarchy() {
        view.addSubview(tableView)
        
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].options.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section].options[indexPath.row]
        
        switch model {
        case .staticCell(let model):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: SettingTableViewCell.identifier,
                for: indexPath) as? SettingTableViewCell else {
                 return UITableViewCell()
             }
             
             cell.configure(with: model)
             return cell
            
        case .switchCell(let model):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: SwitchTableViewCell.identifier,
                for: indexPath) as? SwitchTableViewCell else {
                 return UITableViewCell()
             }
             cell.configure(with: model)
             return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let type = models[indexPath.section].options[indexPath.row]
        switch type.self {
        case .staticCell(let model):
            model.description()
        case .switchCell(let model):
            model.description()
        }
    }
    
}
