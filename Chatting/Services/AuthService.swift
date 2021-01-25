//
//  AuthService.swift
//  Chatting
//
//  Created by 현진 on 2021/01/25.
//

import FirebaseAuth
import FirebaseDatabase
import RxFirebaseAuthentication
import RxFirebaseDatabase

protocol AuthService {
    func register(email: String, password: String, name: String)
    func login(email: String, password: String)
}

final class AuthServiceImpl: AuthService {
    
    private let auth: Auth
    private
    init() {
        auth = Auth.auth()
    }
    
    func register(email: String, password: String, name: String) {
//        auth.rx.createUser(withEmail: email, password: password)
            
    }
    
    func login(email: String, password: String) {
        
    }
}
