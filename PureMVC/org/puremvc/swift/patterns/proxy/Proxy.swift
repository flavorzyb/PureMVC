//
//  Proxy.swift
//  PureMVC SWIFT Standard
//
//  Copyright(c) 2015-2025 Saad Shams <saad.shams@puremvc.org>
//  Your reuse is governed by the Creative Commons Attribution 3.0 License
//

/**
A base `IProxy` implementation.

In PureMVC, `Proxy` classes are used to manage parts of the
application's data model.

A `Proxy` might simply manage a reference to a local data object,
in which case interacting with it might involve setting and
getting of its data in synchronous fashion.

`Proxy` classes are also used to encapsulate the application's
interaction with remote services to save or retrieve data, in which case,
we adopt an asyncronous idiom; setting data (or calling a method) on the
`Proxy` and listening for a `Notification` to be sent
when the `Proxy` has retrieved the data from the service. 

`@see org.puremvc.swift.core.model.Model Model`
*/
open class Proxy: Notifier, IProxy {
    
    /// Default proxy name
    open class var NAME: String { return "Proxy" }
    
    // the proxy name
    fileprivate var _proxyName: String
    
    // the data object
    fileprivate var _data: Any?
    
    /// Constructor
    public init(proxyName: String?=nil, data: Any?=nil) {
        _proxyName = proxyName ?? Proxy.NAME
        _data = data
    }
    
    /// Get the proxy name
    open var proxyName: String {
        return _proxyName
    }
    
    /// Get or set the data object
    open var data: Any? {
        get { return _data }
        set { _data = newValue }
    }
    
    /// Called by the Model when the Proxy is registered
    open func onRegister() {
        
    }
    
    /// Called by the Model when the Proxy is removed
    open func onRemove() {
        
    }
    
}
