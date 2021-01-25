//
//  RegisterViewReactor.swift
//  Chatting
//
//  Created by 현진 on 2021/01/25.
//

import ReactorKit

class RegisterViewReactor: Reactor {
    
    var initialState: State = State()
    
    enum Action {
        
    }
    
    enum Mutation {
        
    }
    
    struct State {
        
    }
    
    func mutate(action: Action) -> Observable<Mutation> {
        .empty()
    }
    
    func reduce(state: State, mutation: Mutation) -> State {
        state
    }
}
