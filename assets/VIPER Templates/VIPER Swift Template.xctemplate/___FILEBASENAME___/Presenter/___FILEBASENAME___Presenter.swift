//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___VARIABLE_moduleName___Presenter: NSObject {
    var wireframe: ___VARIABLE_moduleName___WireframeProtocol
    var interactor: ___VARIABLE_moduleName___InteractorProtocol
    weak var view: ___VARIABLE_moduleName___ViewProtocol?
    
    var viewState = ___VARIABLE_moduleName___ViewState()
    
    init(with interactor: ___VARIABLE_moduleName___Interactor, wireframe: ___VARIABLE_moduleName___Wireframe, view: ___VARIABLE_moduleName___ViewProtocol) {
        self.interactor = interactor
        self.wireframe = wireframe
        self.view = view
    }
}

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___ViewDelegate {
    
}
