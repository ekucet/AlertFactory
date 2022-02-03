//
//  AlertFactoryService.swift
//  Alert
//
//  Created by Erkam Kucet on 3.02.2022.
//

import Foundation
import UIKit

protocol AlertFactoryService {
    var delegate: AlertActionDelegate? { get set }
    func build(alertData: AlertViewData) -> UIViewController
}
