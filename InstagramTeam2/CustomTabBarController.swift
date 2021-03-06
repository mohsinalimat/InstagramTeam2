//
//  CustomTabBarController.swift
//  InstagramTeam2
//
//  Created by Charles Lee on 13/2/17.
//  Copyright © 2017 NextAcademy. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setup our custom view controllers
        
        
        setViewControllers([createHomeViewController(imageName: "home"), createSearchViewController(imageName: "search"), createCameraGalleryViewController(imageName: "camera"), createNotificationViewController(imageName: "notification"), createProfileViewController(imageName: "profile")], animated: true)
    }
    
    
    func createHomeViewController(imageName: String) -> UINavigationController{
        let storyboard = UIStoryboard(name: "TimelineStoryboard", bundle: Bundle.main)
        let homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        let navController = UINavigationController(rootViewController: homeViewController)
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
    
    func createSearchViewController(imageName: String) -> UINavigationController{
        let searchViewController = UIViewController()
        let navController = UINavigationController(rootViewController: searchViewController)
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
    
    func createCameraGalleryViewController(imageName: String) -> UINavigationController{
        //let cameraViewController = UIViewController()
        let storyboard = UIStoryboard(name: "TimelineStoryboard", bundle: Bundle.main)
        let cameraGalleryViewController = storyboard.instantiateViewController(withIdentifier: "CameraGalleryViewController")
        let navController = UINavigationController(rootViewController: cameraGalleryViewController)
        let tabbarItem = UITabBarItem(title: nil, image: UIImage(named:imageName), selectedImage:nil)
        navController.tabBarItem = tabbarItem
        return navController
    }
    
    func createNotificationViewController(imageName: String) -> UINavigationController{
        let notificationViewController = UIViewController()
        let navController = UINavigationController(rootViewController: notificationViewController)
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
    
    func createProfileViewController(imageName: String) -> UINavigationController{
        let storyboard = UIStoryboard(name: "Collection", bundle: Bundle.main)
        let profileViewController = storyboard.instantiateViewController(withIdentifier: "ImageViewController")
        let navController = UINavigationController(rootViewController: profileViewController)
        let tabbarItem = UITabBarItem(title: nil, image: UIImage(named:imageName), selectedImage:nil)
        navController.tabBarItem = tabbarItem
        return navController
        
        
    }
    
}
