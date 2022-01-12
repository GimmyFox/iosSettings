//
//  SettingOptions.swift
//  iosSettings
//
//  Created by Maksim Guzeev on 10.12.2021.
//

import UIKit

struct SettingOptions {
    let title: String
    let icon: UIImage?
    let iconBackground: UIColor
    let description: (()-> Void)
    
}

struct SettingSwitchOption {
    let title: String
    let icon: UIImage?
    let iconBackground: UIColor
    let description: (()-> Void)
    var isOn: Bool
}
