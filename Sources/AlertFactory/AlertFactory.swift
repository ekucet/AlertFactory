import UIKit
import Foundation

public class AlertImplementation: AlertFactoryService {
  
    weak var delegate: AlertActionDelegate?
    
    public func build(alertData: AlertViewData) -> UIViewController {
        let vc = UIAlertController(title: alertData.title, message: alertData.message, preferredStyle: alertData.style)
        if alertData.enableOkAction {
            let okAction = UIAlertAction(title: alertData.okActionTitle, style: alertData.okActionStyle) { _ in
                self.delegate?.okAction()
            }
            vc.addAction(okAction)
        }
        
        if alertData.enableCancelAction {
            let cancelAction = UIAlertAction(title: alertData.cancelActionTitle, style: alertData.cancelActionStyle) { _ in
                self.delegate?.cancelAction()
            }
            vc.addAction(cancelAction)
        }
        
        return vc
    }
}
