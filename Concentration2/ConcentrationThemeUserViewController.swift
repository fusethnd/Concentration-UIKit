//
//  ConcentrationThemeUserViewController.swift
//  Concentration2
//
//  Created by Thanadon Boontawee on 7/6/2567 BE.
//

import UIKit

class ConcentrationThemeUserViewController: UIViewController, UISplitViewControllerDelegate {
    // Bug about theme : Cannot choose THEME!
    let themes = [
        "Sports": "⚽️🏀🏈⚾️🥎🎾🏐🏉🥏🎱🪀🏓🏸🏒🏑",
        "Faces": "😀😃😄😁😆🥹😅😂😊☺️🥲🤣😇🙂🙃",
        "Animals": "🐶🐱🐭🐹🐰🦊🐻🐼🐻‍❄️🐨🐯🦁🐮🐷🐸",
    ]
    
//    override func awakeFromNib() {
//        splitViewController?.delegate = self
//    }
//    
//    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
//        if let cvc = secondaryViewController as? ConcentrationViewController {
//            if cvc.theme == nil {
//                return true
//            }
//        }
//        return false
//    }
//    
//    @IBAction func changeTheme(_ sender: Any) {
//        if let cvc = splitViewDetailConcentrationViewController {
//            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
//                cvc.theme = theme
//            }
//        } else if let cvc = lastSaguedToConcentrationViewController {
//            navigationController?.pushViewController(cvc, animated: true)
//        } else {
//            performSegue(withIdentifier: "Choose Theme", sender: sender)
//        }
//    }
//    
//    private var splitViewDetailConcentrationViewController: ConcentrationViewController? {
//        return splitViewController?.viewControllers.last as? ConcentrationViewController
//    }
//    
//    private var lastSaguedToConcentrationViewController: ConcentrationViewController?
//    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                }
            }
        }
    }
    
}
