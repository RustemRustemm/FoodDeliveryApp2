//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp2
//
//  Created by Рустам on 11.12.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    
    override func start() {
//        let vc = ViewController()
//        navigationController?.pushViewController(vc, animated: true)
        showOnboarding()
    }
    
    override func finish() {
        print("AppCoordinator finish")
    }
    
    
}

private extension OnboardingCoordinator {
    func showOnboarding() {
//        var pages = [UIViewController]()
        var pages = [OnboardingPartViewController]()
        
        let firstVC = OnboardingPartViewController()
        firstVC.imageToShow = UIImage(named: "chicken-leg.pdf")
        firstVC.titleText = "Delicious Food"
        firstVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla."
        firstVC.buttonText = "Next"
        
        let secondVC = OnboardingPartViewController()
        secondVC.imageToShow = UIImage(named: "shipped.pdf")
        secondVC.titleText = "Fast Shipping"
        secondVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla."
        secondVC.buttonText = "Next"
        
        let thirdVC = OnboardingPartViewController()
        thirdVC.imageToShow = UIImage(named: "medal.pdf")
        thirdVC.titleText = "Certificate Food"
        thirdVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla."
        thirdVC.buttonText = "Next"
        
        let fourthVC = OnboardingPartViewController()
        fourthVC.imageToShow = UIImage(named: "credit-card.pdf")
        fourthVC.titleText = "Payment Online"
        fourthVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla."
        fourthVC.buttonText = "Cool!"
        
        
//        let firstVC = OnboardingPartViewController(imageToShow: UIImage(named: "chicken-leg.pdf")!, titleText: "Delicious Food", descriptionText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla.")
//        firstVC.view.backgroundColor = .purple
//
//        let secondVC = OnboardingPartViewController(imageToShow: UIImage(named: "shipped.pdf")!, titleText: "Fast Shipping", descriptionText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla.")
//        secondVC.view.backgroundColor = .yellow
//
//        let thirdVC = OnboardingPartViewController(imageToShow: UIImage(named: "medal.pdf")!, titleText: "Certificate Food", descriptionText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla.")
//        thirdVC.view.backgroundColor = .red
//
//        let fourthVC = OnboardingPartViewController(imageToShow: UIImage(named: "credit-card.pdf")!, titleText: "Payment Online", descriptionText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum rhoncus nulla.")
//        fourthVC.view.backgroundColor = .red
        
        pages.append(firstVC)
        pages.append(secondVC)
        pages.append(thirdVC)
        pages.append(fourthVC)
        
        let presenter = OnboardingViewPresenter(coordinator: self)
        let viewController = OnboardingViewController(pages: pages, viewOutput: presenter)
        navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    
}



