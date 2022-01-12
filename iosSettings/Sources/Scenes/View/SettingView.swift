//
//  SettingView.swift
//  iosSettings
//
//  Created by Maksim Guzeev on 12.01.2022.
//

import UIKit

class SettingView: UIView {
    
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)

        table.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        table.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)
        
        return table
    }()
        
    
    init() {
        super.init(frame: .zero)
        commonInit()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupHierarchy()
        setupLayout()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = bounds
    }
    
    private func setupHierarchy() {
       addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    var settings = [SectionSettings]()

    func configureView(with models: [SectionSettings]) {
        self.settings = models
        tableView.reloadData()
    }
}


extension SettingView: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settings.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings[section].options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let settings = settings[indexPath.section].options[indexPath.row]
       
        switch settings {
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
        let settings = settings[indexPath.section].options[indexPath.row]
        switch settings.self {
        case .staticCell(_):
            tableView.deselectRow(at: indexPath, animated: true)
        case .switchCell:
            return
        }
    }
}

