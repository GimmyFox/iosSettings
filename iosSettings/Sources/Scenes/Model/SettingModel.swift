//
//  SettingModel.swift
//  iosSettings
//
//  Created by Maksim Guzeev on 12.01.2022.
//

import UIKit

class SettingsModel {
    func createModel() -> [SectionSettings] {
        return [
            SectionSettings(options: [
                .switchCell(model: SettingSwitchOption(
                    title: "Авиарежим",
                    icon: UIImage(systemName: "airplane"),
                    iconBackground: .systemOrange,
                    isOn: true)),
                .staticCell(model: SettingOptions(
                    title: "Wi-Fi",
                    icon: UIImage(systemName: "wifi"),
                    iconBackground: .systemBlue)
            ),
                .staticCell(model: SettingOptions(
                    title: "Bluetooth",
                    icon: UIImage(named: "bluetooth"),
                    iconBackground: .systemBlue)
            ),
                .staticCell(model: SettingOptions(
                    title: "Сотовая связь",
                    icon: UIImage(systemName: "antenna.radiowaves.left.and.right"),
                    iconBackground: .systemGreen)
            ),
                .staticCell(model: SettingOptions(
                    title: "Режим модема",
                    icon: UIImage(systemName: "personalhotspot"),
                    iconBackground: .systemGreen)
            ),
                .staticCell(model: SettingOptions(
                    title: "VPN",
                    icon: UIImage(named: "vpn"),
                    iconBackground: .systemBlue)
            )
            ]),
            
            SectionSettings(options: [
                .staticCell(model: SettingOptions(
                    title: "Уведомления",
                    icon: UIImage(named: "notification"),
                    iconBackground: .systemRed)
                ),
                .staticCell(model: SettingOptions(
                    title: " Звуки, тактильные ощущения",
                    icon: UIImage(systemName: "speaker.wave.3.fill"),
                    iconBackground: .systemPink)
                ),
                .staticCell(model: SettingOptions(
                    title: "Не беспокоить",
                    icon: UIImage(systemName: "moon.fill"),
                    iconBackground: .systemIndigo)
                ),
                .staticCell(model: SettingOptions(
                    title: "Экранное время",
                    icon: UIImage(systemName: "hourglass"),
                    iconBackground: .systemIndigo)
                )
                    ]),
            
            SectionSettings(options: [
                .staticCell(model: SettingOptions(
                    title: "Основные",
                    icon: UIImage(systemName: "gear"),
                    iconBackground: .systemGray)
                ),
                .staticCell(model: SettingOptions(
                    title: "Пункт управления",
                    icon: UIImage(systemName: "switch.2"),
                    iconBackground: .systemGray)
                ),
                .staticCell(model: SettingOptions(
                    title: "Экран и яркость",
                    icon: UIImage(systemName: "textformat.size"),
                    iconBackground: .systemBlue)
                ),
                .staticCell(model: SettingOptions(
                    title: "Экран Домой",
                    icon: UIImage(systemName: "hourglass"),
                    iconBackground: .systemBlue)
                ),
                .staticCell(model: SettingOptions(
                    title: "Универсальный доступ",
                    icon: UIImage(systemName: "figure.wave.circle"),
                    iconBackground: .systemTeal)
                ),
                .staticCell(model: SettingOptions(
                    title: "Обои",
                    icon: UIImage(named: "collection"),
                    iconBackground: .white)
                ),
                .staticCell(model: SettingOptions(
                    title: "Siri и поиск",
                    icon: UIImage(systemName: "moon.fill"),
                    iconBackground: .systemIndigo)
                ),
                .staticCell(model: SettingOptions(
                    title: "Face ID и код-пароль",
                    icon: UIImage(systemName: "faceid"),
                    iconBackground: .systemGreen)
                ),
                .staticCell(model: SettingOptions(
                    title: "Экстренный вызов - SOS",
                    icon: UIImage(named: "sos"),
                    iconBackground: .systemOrange)
                ),
                .staticCell(model: SettingOptions(
                    title: "Аккумулятор",
                    icon: UIImage(systemName: "battery.100"),
                    iconBackground: .systemGreen)
                ),
                .staticCell(model: SettingOptions(
                    title: "Конфиденциальность",
                    icon: UIImage(systemName: "hand.raised.fill"),
                    iconBackground: .systemBlue)
                        
                )
            ]),
        
            SectionSettings(options: [
                .staticCell(model: SettingOptions(
                    title: "App Store",
                    icon: UIImage(named: "appstore"),
                    iconBackground: .systemOrange)
                ),
                .staticCell(model: SettingOptions(
                    title: "Wallet и Apple Pay",
                    icon: UIImage(named: "wallet"),
                    iconBackground: .black)
                )
            ]),
            
            SectionSettings(options: [
                .staticCell(model: SettingOptions(
                    title: "Пароли",
                    icon: UIImage(systemName: "key"),
                    iconBackground: .systemGray)
                ),
                .staticCell(model: SettingOptions(
                    title: "Почта",
                    icon: UIImage(systemName: "envelope.fill"),
                    iconBackground: .systemBlue)
                ),
                .staticCell(model: SettingOptions(
                    title: "Контакты",
                    icon: UIImage(named: "contacts"),
                    iconBackground: .systemBlue)
                ),
                .staticCell(model: SettingOptions(
                    title: "Календарь",
                    icon: UIImage(systemName: "calendar"),
                    iconBackground: .systemPink)
                ),
                .staticCell(model: SettingOptions(
                    title: "Заметки",
                    icon: UIImage(named: "notes"),
                    iconBackground: .systemYellow)
                ),
                .staticCell(model: SettingOptions(
                    title: "Напоминание",
                    icon: UIImage(named: "notify"),
                    iconBackground: .systemBlue)
                ),
                .staticCell(model: SettingOptions(
                    title: "Диктофон",
                    icon: UIImage(named: "dictaphone"),
                    iconBackground: .systemBlue)
                ),
                .staticCell(model: SettingOptions(
                    title: "Телефон",
                    icon: UIImage(systemName: "phone.fill"),
                    iconBackground: .systemGreen)
                ),
                .staticCell(model: SettingOptions(
                    title: "Сообщения",
                    icon: UIImage(systemName: "message.fill"),
                    iconBackground: .systemGreen)
                ),
                .staticCell(model: SettingOptions(
                    title: "FaceTime",
                    icon: UIImage(systemName: "antenna.radiowaves.left.and.right"),
                    iconBackground: .systemGreen)
                ),
                .staticCell(model: SettingOptions(
                    title: "Safari",
                    icon: UIImage(systemName: "safari.fill"),
                    iconBackground: .systemBlue)
                ),
                .staticCell(model: SettingOptions(
                    title: "Акции",
                    icon: UIImage(named: "stock"),
                    iconBackground: .systemBlue)
                ),
                .staticCell(model: SettingOptions(
                    title: "Перевод",
                    icon: UIImage(systemName: "wifi"),
                    iconBackground: .black)
                ),
                .staticCell(model: SettingOptions(
                    title: "Карты",
                    icon: UIImage(named: "maps"),
                    iconBackground: .systemBlue)
                ),
                .staticCell(model: SettingOptions(
                    title: "Компас",
                    icon: UIImage(named: "compas"),
                    iconBackground: .systemGreen)
                )
            ]),
            
            SectionSettings(options: [
                .staticCell(model: SettingOptions(
                    title: "TV",
                    icon: UIImage(systemName: "appletv"),
                    iconBackground: .black)
                ),
                .staticCell(model: SettingOptions(
                    title: "Фото",
                    icon: UIImage(named: "photo"),
                    iconBackground: .white)
                ),
                .staticCell(model: SettingOptions(
                    title: "Камера",
                    icon: UIImage(systemName: "camera.fill"),
                    iconBackground: .systemGray)
                ),
                .staticCell(model: SettingOptions(
                    title: "Книги",
                    icon: UIImage(systemName: "book"),
                    iconBackground: .systemOrange)
                ),
                .staticCell(model: SettingOptions(
                    title: "Подкасты",
                    icon: UIImage(named: "podcasts"),
                    iconBackground: .systemPurple)
                ),
                .staticCell(model: SettingOptions(
                    title: "iTunes U",
                    icon: UIImage(named: "itunes"),
                    iconBackground: .systemOrange)
                ),
                .staticCell(model: SettingOptions(
                    title: "Game Center",
                    icon: UIImage(named: "gamecenter"),
                    iconBackground: .white)
                )
            ])
        ]
        
    }
    
}

