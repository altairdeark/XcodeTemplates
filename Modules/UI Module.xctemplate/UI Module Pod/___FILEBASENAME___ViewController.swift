//
//  ___FILEHEADER___
//

import UIKit
import SnapKit
import RxSwift
import CamfrogLib
import LocalizationModule

final public class ___VARIABLE_productName:identifier___ViewController: UIViewController {
    private var props: Props = .default {
        didSet { render(oldProps: oldValue, newProps: props) }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup UI
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Setup Navigation title
    }

    
    private func render(oldProps: Props, newProps: Props) {
        
    }
}

extension ___VARIABLE_productName:identifier___ViewController {
    struct Props: Mutable {
        static var `default` = Props()
    }
}

extension ___VARIABLE_productName:identifier___ViewController {
    public func bind(to presenter: ___VARIABLE_productName:identifier___Presenter) {
        func holdRef(_ any: Any) { }
        
        _ = presenter.rx_props
            .take(until: self.rx.deallocating)
            .observe(on: MainScheduler.asyncInstance)
            .bind { [weak self] props in
                holdRef(presenter)
                self?.props = props
            }
    }
}
