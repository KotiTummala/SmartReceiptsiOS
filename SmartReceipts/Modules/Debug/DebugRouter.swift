//
//  DebugRouter.swift
//  SmartReceipts
//
//  Created by Bogdan Evsenev on 03/09/2017.
//  Copyright © 2017 Will Baumann. All rights reserved.
//

import Foundation
import Viperit
import RxSwift

class DebugRouter: Router {
    
    var loginTapSubscriber: AnyObserver<Void> {
        return AnyObserver<Void>(onNext: {
            let module = AppModules.auth.build()
            module.router.show(from: self._view.viewController)
        })
    }
    
    var ocrConfigTapSubscriber: AnyObserver<Void> {
        return AnyObserver<Void>(onNext: {
            let module = AppModules.OCRConfiguration.build()
            module.router.show(from: self._view.viewController)
        })
    }
    
    var organizationsTapSubscriber: AnyObserver<Void> {
        return AnyObserver<Void>(onNext: {
            let module = AccountAssembly().build()
            self._view.viewController.navigationController?.pushViewController(module, animated: true)
        })
    }
}

// MARK: - VIPER COMPONENTS API (Auto-generated code)
private extension DebugRouter {
    var presenter: DebugPresenter {
        return _presenter as! DebugPresenter
    }
}
