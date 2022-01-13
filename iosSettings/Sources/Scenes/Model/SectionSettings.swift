//
//  SectionSettings.swift
//  iosSettings
//
//  Created by Maksim Guzeev on 10.12.2021.
//

import UIKit

struct SectionSettings {
    let options: [SettingOptionsType]
}

enum SettingOptionsType {
    case staticCell(model: SettingOptions)
    case switchCell(model: SettingSwitchOption)
}

struct SettingOptions {
    let title: String
    let icon: UIImage?
    let iconBackground: UIColor
    
}

struct SettingSwitchOption {
    let title: String
    let icon: UIImage?
    let iconBackground: UIColor
    var isOn: Bool
}
