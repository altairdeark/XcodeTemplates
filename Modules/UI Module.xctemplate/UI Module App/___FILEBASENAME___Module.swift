//
//  ___FILEHEADER___
//

import ___VARIABLE_moduleName:identifier___
import Swinject
import SwinjectAutoregistration

protocol ___VARIABLE_productName:identifier___ViewFactory: AnyObject {
    func createViewController() -> ___VARIABLE_productName:identifier___ViewController
}

final class ___VARIABLE_productName:identifier___Module: AppModule, Assembly {
    private var resolver: Resolver!
    
    func createAssembly() -> Assembly? {
        return self
    }
    
    func loaded(resolver: Resolver) {
        self.resolver = resolver
    }
    
    func assemble(container: Container) {
        
        container.autoregister(___VARIABLE_productName:identifier___ServiceProviderImpl.self, initializer: ___VARIABLE_productName:identifier___ServiceProviderImpl.init)
            .implements(___VARIABLE_productName:identifier___ServiceProvider.self)
        
        container.autoregister(___VARIABLE_productName:identifier___Router.self, initializer: ___VARIABLE_productName:identifier___Router.init)
            .implements(___VARIABLE_productName:identifier___PublicRouter.self, ___VARIABLE_productName:identifier___InternalRouter.self)
            .inObjectScope(.container)
        
        container.autoregister(___VARIABLE_productName:identifier___Presenter.self, initializer: ___VARIABLE_productName:identifier___Presenter.init)
        
        container.register(___VARIABLE_productName:identifier___ViewController.self) { resolver in
            let presenter: ___VARIABLE_productName:identifier___Presenter = resolver.resolve()
            let viewController = ___VARIABLE_productName:identifier___ViewController()
            viewController.bind(to: presenter)
            return viewController
        }
        
        container.register(___VARIABLE_productName:identifier___ViewFactory.self) { _ in
            return self
        }
    }
}

extension ___VARIABLE_productName:identifier___Module: ___VARIABLE_productName:identifier___ViewFactory {
    func createViewController() -> ___VARIABLE_productName:identifier___ViewController {
        return resolver.resolve(___VARIABLE_productName:identifier___ViewController.self)!
    }
}
