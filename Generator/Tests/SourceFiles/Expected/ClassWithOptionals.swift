// MARK: - Mocks generated from file: SourceFiles/ClassWithOptionals.swift
//
//  ClassWithOptionals.swift
//  Cuckoo
//
//  Created by Filip Dolnik on 18.12.16.
//  Copyright © 2016 Brightify. All rights reserved.
//

import Cuckoo

class MockClassWithOptionals: ClassWithOptionals, Cuckoo.Mock {
    typealias MocksType = ClassWithOptionals
    typealias Stubbing = __StubbingProxy_ClassWithOptionals
    typealias Verification = __VerificationProxy_ClassWithOptionals
    let manager = Cuckoo.MockManager()
    
    private var observed: ClassWithOptionals?
    
    func spy(on victim: ClassWithOptionals) -> Self {
        observed = victim
        return self
    }
    
    override var value: Int? {
        get {
            return manager.getter("value", original: observed.map { o in return { () -> Int? in o.value } })
        }
        set {
            manager.setter("value", value: newValue, original: observed != nil ? { self.observed?.value = $0 } : nil)
        }
    }
    
    override var uValue: Int! {
        get {
            return manager.getter("uValue", original: observed.map { o in return { () -> Int! in o.uValue } })
        }
        set {
            manager.setter("uValue", value: newValue, original: observed != nil ? { self.observed?.uValue = $0 } : nil)
        }
    }
    
    override var array: [Int?] {
        get {
            return manager.getter("array", original: observed.map { o in return { () -> [Int?] in o.array } })
        }
        set {
            manager.setter("array", value: newValue, original: observed != nil ? { self.observed?.array = $0 } : nil)
        }
    }
    
    override var closure: (Int?) -> Void {
        get {
            return manager.getter("closure", original: observed.map { o in return { () -> (Int?) -> Void in o.closure } })
        }
        set {
            manager.setter("closure", value: newValue, original: observed != nil ? { self.observed?.closure = $0 } : nil)
        }
    }
    
    override var uClosure: (Int!) -> Void {
        get {
            return manager.getter("uClosure", original: observed.map { o in return { () -> (Int!) -> Void in o.uClosure } })
        }
        set {
            manager.setter("uClosure", value: newValue, original: observed != nil ? { self.observed?.uClosure = $0 } : nil)
        }
    }
    
    override func returnValue() -> Int? {
        return manager.call("returnValue() -> Int?", parameters: (), original: observed.map { o in return { () -> Int? in o.returnValue() } })
    }
    
    override func returnUValue() -> Int! {
        return manager.call("returnUValue() -> Int!", parameters: (), original: observed.map { o in return { () -> Int! in o.returnUValue() } })
    }
    
    override func returnArray() -> [Int?] {
        return manager.call("returnArray() -> [Int?]", parameters: (), original: observed.map { o in return { () -> [Int?] in o.returnArray() } })
    }
    
    override func parameter(parameter: Int?) {
        return manager.call("parameter(parameter: Int?)", parameters: (parameter), original: observed.map { o in return { (parameter: Int?) in o.parameter(parameter: parameter) } })
    }
    
    override func uParameter(parameter: Int!) {
        return manager.call("uParameter(parameter: Int!)", parameters: (parameter), original: observed.map { o in return { (parameter: Int!) in o.uParameter(parameter: parameter) } })
    }
    
    struct __StubbingProxy_ClassWithOptionals: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        var value: Cuckoo.ToBeStubbedProperty<Int?> {
            return Cuckoo.ToBeStubbedProperty(manager: manager, name: "value")
        }
        
        var uValue: Cuckoo.ToBeStubbedProperty<Int?> {
            return Cuckoo.ToBeStubbedProperty(manager: manager, name: "uValue")
        }
        
        var array: Cuckoo.ToBeStubbedProperty<[Int?]> {
            return Cuckoo.ToBeStubbedProperty(manager: manager, name: "array")
        }
        
        var closure: Cuckoo.ToBeStubbedProperty<(Int?) -> Void> {
            return Cuckoo.ToBeStubbedProperty(manager: manager, name: "closure")
        }
        
        var uClosure: Cuckoo.ToBeStubbedProperty<(Int?) -> Void> {
            return Cuckoo.ToBeStubbedProperty(manager: manager, name: "uClosure")
        }
        
        func returnValue() -> Cuckoo.StubFunction<(), Int?> {
            return Cuckoo.StubFunction(stub: manager.createStub("returnValue() -> Int?", parameterMatchers: []))
        }
        
        func returnUValue() -> Cuckoo.StubFunction<(), Int?> {
            return Cuckoo.StubFunction(stub: manager.createStub("returnUValue() -> Int!", parameterMatchers: []))
        }
        
        func returnArray() -> Cuckoo.StubFunction<(), [Int?]> {
            return Cuckoo.StubFunction(stub: manager.createStub("returnArray() -> [Int?]", parameterMatchers: []))
        }
        
        func parameter<M1: Cuckoo.Matchable>(parameter: M1) -> Cuckoo.StubNoReturnFunction<(Int?)> where M1.MatchedType == Int? {
            let matchers: [Cuckoo.ParameterMatcher<(Int?)>] = [wrap(matchable: parameter) { $0 }]
            return Cuckoo.StubNoReturnFunction(stub: manager.createStub("parameter(parameter: Int?)", parameterMatchers: matchers))
        }
        
        func uParameter<M1: Cuckoo.Matchable>(parameter: M1) -> Cuckoo.StubNoReturnFunction<(Int?)> where M1.MatchedType == Int? {
            let matchers: [Cuckoo.ParameterMatcher<(Int?)>] = [wrap(matchable: parameter) { $0 }]
            return Cuckoo.StubNoReturnFunction(stub: manager.createStub("uParameter(parameter: Int!)", parameterMatchers: matchers))
        }
    }
    
    struct __VerificationProxy_ClassWithOptionals: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        var value: Cuckoo.VerifyProperty<Int?> {
            return Cuckoo.VerifyProperty(manager: manager, name: "value", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var uValue: Cuckoo.VerifyProperty<Int?> {
            return Cuckoo.VerifyProperty(manager: manager, name: "uValue", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var array: Cuckoo.VerifyProperty<[Int?]> {
            return Cuckoo.VerifyProperty(manager: manager, name: "array", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var closure: Cuckoo.VerifyProperty<(Int?) -> Void> {
            return Cuckoo.VerifyProperty(manager: manager, name: "closure", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var uClosure: Cuckoo.VerifyProperty<(Int?) -> Void> {
            return Cuckoo.VerifyProperty(manager: manager, name: "uClosure", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func returnValue() -> Cuckoo.__DoNotUse<Int?> {
            return manager.verify("returnValue() -> Int?", callMatcher: callMatcher, parameterMatchers: [] as [Cuckoo.ParameterMatcher<Void>], sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func returnUValue() -> Cuckoo.__DoNotUse<Int?> {
            return manager.verify("returnUValue() -> Int!", callMatcher: callMatcher, parameterMatchers: [] as [Cuckoo.ParameterMatcher<Void>], sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func returnArray() -> Cuckoo.__DoNotUse<[Int?]> {
            return manager.verify("returnArray() -> [Int?]", callMatcher: callMatcher, parameterMatchers: [] as [Cuckoo.ParameterMatcher<Void>], sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func parameter<M1: Cuckoo.Matchable>(parameter: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Int? {
            let matchers: [Cuckoo.ParameterMatcher<(Int?)>] = [wrap(matchable: parameter) { $0 }]
            return manager.verify("parameter(parameter: Int?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func uParameter<M1: Cuckoo.Matchable>(parameter: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Int? {
            let matchers: [Cuckoo.ParameterMatcher<(Int?)>] = [wrap(matchable: parameter) { $0 }]
            return manager.verify("uParameter(parameter: Int!)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ClassWithOptionalsStub: ClassWithOptionals {
    
    override var value: Int? {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int?).self)
        }
        set {
        }
    }
    
    override var uValue: Int! {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int!).self)
        }
        set {
        }
    }
    
    override var array: [Int?] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([Int?]).self)
        }
        set {
        }
    }
    
    override var closure: (Int?) -> Void {
        get {
            return DefaultValueRegistry.defaultValue(for: ((Int?) -> Void).self)
        }
        set {
        }
    }
    
    override var uClosure: (Int!) -> Void {
        get {
            return DefaultValueRegistry.defaultValue(for: ((Int!) -> Void).self)
        }
        set {
        }
    }
    
    override func returnValue() -> Int? {
        return DefaultValueRegistry.defaultValue(for: (Int?).self)
    }
    
    override func returnUValue() -> Int! {
        return DefaultValueRegistry.defaultValue(for: (Int!).self)
    }
    
    override func returnArray() -> [Int?] {
        return DefaultValueRegistry.defaultValue(for: ([Int?]).self)
    }
    
    override func parameter(parameter: Int?) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    override func uParameter(parameter: Int!) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}
