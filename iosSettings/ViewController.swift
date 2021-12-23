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
    
    func configure() {
        models.append(SectionSettings(options: [
            .switchCell(model: SettingSwitchOption(title: "Авиарежим", icon: UIImage(systemName: "airplane"), iconBackground: .systemOrange, description  : {
                print("Нажата кнопка: Авиарежим")
            }, isOn: true)),
            .staticCell(model: SettingOptions(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Wi-Fi")
            }),
            .staticCell(model: SettingOptions(title: "Bluetooth", icon: UIImage(named: "bluetooth"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Bluetooth")
            }),
            .staticCell(model: SettingOptions(title: "Сотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackground: .systemGreen) {
                print("Нажата кнопка Соторвая связь")
            }),
            .staticCell(model: SettingOptions(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconBackground: .systemGreen) {
                print("Нажата кнопка: Режим модема")
            }),
            .staticCell(model: SettingOptions(title: "VPN", icon: UIImage(named: "vpn"), iconBackground: .systemBlue) {
                print("Нажата кнопка: VPN")
            })
                ]))
        models.append(SectionSettings(options: [
            .staticCell(model: SettingOptions(title: "Уведомления", icon: UIImage(named: "notification"), iconBackground: .systemRed) {
                print("Нажата кнопка: Уведомления")
            }),
            .staticCell(model: SettingOptions(title: " Звуки, тактильные ощущения", icon: UIImage(systemName: "speaker.wave.3.fill"), iconBackground: .systemPink) {
                print("Нажата кнопка: Звуки, тактильные ощущения")
            }),
            .staticCell(model: SettingOptions(title: "Не беспокоить", icon: UIImage(systemName: "moon.fill"), iconBackground: .systemPurple) {
                print("Нажата кнопка: Не беспокоить")
            }),
            .staticCell(model: SettingOptions(title: "Экранное время", icon: UIImage(systemName: "hourglass"), iconBackground: .systemPurple) {
                print("Нажата кнопка: Экранное время")
            })
                ]))
        models.append(SectionSettings(options: [
            .staticCell(model: SettingOptions(title: "Основные", icon: UIImage(systemName: "gear"), iconBackground: .systemGray) {
                print("Нажата кнопка: Основные")
            }),
            .staticCell(model: SettingOptions(title: "Пункт управления", icon: UIImage(systemName: "switch.2"), iconBackground: .systemGray) {
                print("Нажата кнопка: Пункт управления")
            }),
            .staticCell(model: SettingOptions(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Экран и яркость")
            }),
            .staticCell(model: SettingOptions(title: "Экран Домой", icon: UIImage(systemName: "hourglass"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Экран Домой")
            }),
            .staticCell(model: SettingOptions(title: "Универсальный доступ", icon: UIImage(systemName: "figure.wave.circle"), iconBackground: .systemTeal) {
                print("Нажата кнопка Универсальный доступ")
            }),
            .staticCell(model: SettingOptions(title: "Обои", icon: UIImage(named: "collection"), iconBackground: .white) {
                print("Нажата кнопка: Обои")
            }),
            .staticCell(model: SettingOptions(title: "Siri и поиск", icon: UIImage(systemName: "moon.fill"), iconBackground: .systemPurple) {
                print("Нажата кнопка: Siri и поиск")
            }),
            .staticCell(model: SettingOptions(title: "Face ID и код-пароль", icon: UIImage(systemName: "faceid"), iconBackground: .systemGreen) {
                print("Нажата кнопка: Face ID и код-пароль")
            }),
            .staticCell(model: SettingOptions(title: "Экстренный вызов - SOS", icon: UIImage(named: "sos"), iconBackground: .systemRed) {
                print("Нажата кнопка: Экстренный вызов - SOS")
            }),
            .staticCell(model: SettingOptions(title: "Аккумулятор", icon: UIImage(systemName: "battery.100"), iconBackground: .systemGreen) {
                print("Нажата кнопка: Экранное время")
            }),
            .staticCell(model: SettingOptions(title: "Конфиденциальность", icon: UIImage(systemName: "hand.raised.fill"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Конфиденциальность")
            })
                ]))
        models.append(SectionSettings(options: [
            .staticCell(model: SettingOptions(title: "App Store", icon: UIImage(named: "appstore"), iconBackground: .systemBlue) {
                print("Нажата кнопка: App Store")
            }),
            .staticCell(model: SettingOptions(title: "Wallet и Apple Pay", icon: UIImage(named: "wallet"), iconBackground: .black) {
                print("Нажата кнопка: Wallet и Apple Pay")
            })
        ]))
            
        models.append(SectionSettings(options: [
            .staticCell(model: SettingOptions(title: "Пароли", icon: UIImage(systemName: "key"), iconBackground: .systemGray) {
                print("Нажата кнопка: Пароли")
            }),
            .staticCell(model: SettingOptions(title: "Почта", icon: UIImage(systemName: "envelope.fill"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Почта")
            }),
            .staticCell(model: SettingOptions(title: "Контакты", icon: UIImage(named: "contacts"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Контакты")
            }),
            .staticCell(model: SettingOptions(title: "Календарь", icon: UIImage(systemName: "calendar"), iconBackground: .systemPink) {
                print("Нажата кнопка: Календарь")
            }),
            .staticCell(model: SettingOptions(title: "Заметки", icon: UIImage(named: "notes"), iconBackground: .systemYellow) {
                print("Нажата кнопка: Заметки")
            }),
            .staticCell(model: SettingOptions(title: "Напоминание", icon: UIImage(named: "notify"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Напоминание")
            }),
            .staticCell(model: SettingOptions(title: "Диктофон", icon: UIImage(named: "dictaphone"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Диктофон")
            }),
            .staticCell(model: SettingOptions(title: "Телефон", icon: UIImage(systemName: "phone.fill"), iconBackground: .systemGreen) {
                print("Нажата кнопка: Телефон")
            }),
            .staticCell(model: SettingOptions(title: "Сообщения", icon: UIImage(systemName: "message.fill"), iconBackground: .systemGreen) {
                print("Нажата кнопка: Сообщения")
            }),
            .staticCell(model: SettingOptions(title: "FaceTime", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackground: .systemGreen) {
                print("Нажата кнопка FaceTime")
            }),
            .staticCell(model: SettingOptions(title: "Safari", icon: UIImage(systemName: "safari.fill"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Safari")
            }),
            .staticCell(model: SettingOptions(title: "Акции", icon: UIImage(named: "stock"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Акции")
            }),
            .staticCell(model: SettingOptions(title: "Перевод", icon: UIImage(named: "translate"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Перевод")
            }),
            .staticCell(model: SettingOptions(title: "Карты", icon: UIImage(named: "maps"), iconBackground: .systemBlue) {
                print("Нажата кнопка: Карты")
            }),
            .staticCell(model: SettingOptions(title: "Компас", icon: UIImage(named: "compas"), iconBackground: .black) {
                print("Нажата кнопка: Компас")
            }),

                ]))
        models.append(SectionSettings(options: [
            .staticCell(model: SettingOptions(title: "TV", icon: UIImage(systemName: "appletv"), iconBackground: .black) {
                print("Нажата кнопка: TV")
            }),
            .staticCell(model: SettingOptions(title: "Фото", icon: UIImage(named: "photo"), iconBackground: .white) {
                print("Нажата кнопка: Фото")
            }),
            .staticCell(model: SettingOptions(title: "Камера", icon: UIImage(systemName: "camera.fill"), iconBackground: .systemGray) {
                print("Нажата кнопка: Камера")
            }),
            .staticCell(model: SettingOptions(title: "Книги", icon: UIImage(systemName: "book"), iconBackground: .systemOrange) {
                print("Нажата кнопка: Книги")
            }),
            .staticCell(model: SettingOptions(title: "Подкасты", icon: UIImage(named: "podcasts"), iconBackground: .systemPurple) {
                print("Нажата кнопка: Подкасты")
            }),
            .staticCell(model: SettingOptions(title: "iTunes U", icon: UIImage(named: "itunes"), iconBackground: .systemOrange) {
                print("Нажата кнопка: iTunes U")
            }),
            .staticCell(model: SettingOptions(title: "Game Center", icon: UIImage(named: "gamecenter"), iconBackground: .white) {
                print("Нажата кнопка: Game Center")
            })
                ]))
        
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
