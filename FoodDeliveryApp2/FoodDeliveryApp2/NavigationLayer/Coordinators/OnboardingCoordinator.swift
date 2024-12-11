//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp2
//
//  Created by Рустам on 11.12.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("AppCoordinator finish")
    }
}



