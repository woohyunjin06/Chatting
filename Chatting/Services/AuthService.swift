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
import RxSwift

protocol AuthService {
    func register(email: String, password: String, name: String) -> Completable
    func login(email: String, password: String)
}

final class AuthServiceImpl: AuthService {
    
    private let auth: Auth
    private
    init() {
        auth = Auth.auth()
    }
    
    func register(email: String, password: String, name: String) -> Completable {
        auth.rx.createUser(withEmail: email, password: password) // TODO: Finding way to save name
            .ignoreElements()
    }
    
    func login(email: String, password: String) {
        auth.rx.signIn(withEmail: email, password: password)
    }
}
