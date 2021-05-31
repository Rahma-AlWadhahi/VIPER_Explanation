//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

final class ___VARIABLE_moduleName___Builder: NSObject {
    class func viewController() -> ___VARIABLE_moduleName___ViewController {
        let interactor = ___VARIABLE_moduleName___Interactor()
        let wireframe = ___VARIABLE_moduleName___Wireframe()
        let viewController = ___VARIABLE_moduleName___ViewController.init(nibName: "___VARIABLE_moduleName___ViewController", bundle: nil)
        let presenter = ___VARIABLE_moduleName___Presenter.init(with: interactor, wireframe: wireframe, view: viewController)
        
        viewController.presenter = presenter
        wireframe.viewController = viewController
        
        return viewController
    }
    
    class func show(in navigationController: UINavigationController) {
        let controller = ___VARIABLE_moduleName___Builder.viewController()
        navigationController.pushViewController(controller, animated: true)
    }
}
