//
//  ___FILEHEADER___
//

import RxSwift
import RxCocoa
import Entities
import CamfrogLib
import ImageLoader

final public class ___VARIABLE_productName:identifier___Presenter {
    private let disposeBag = DisposeBag()
    
    private let router: ___VARIABLE_productName:identifier___InternalRouter
    private let service: ___VARIABLE_productName:identifier___ServiceProvider
    
    private let propsRelay = BehaviorRelay<___VARIABLE_productName:identifier___ViewController.Props>(value: .default)
    
    var rx_props: Observable<___VARIABLE_productName:identifier___ViewController.Props> {
        propsRelay.asObservable()
    }
    
    public init(router: ___VARIABLE_productName:identifier___InternalRouter, service: ___VARIABLE_productName:identifier___ServiceProvider) {
        self.router = router
        self.service = service
        
        setup()
    }
    
    private func setup() {
//        propsRelay.mutate { [weak self] in
//            $0.
//        }
    }
}
