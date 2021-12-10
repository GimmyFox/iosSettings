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
