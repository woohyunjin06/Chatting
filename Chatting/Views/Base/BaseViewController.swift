//
//  BaseViewController.swift
//  Chatting
//
//  Created by 현진 on 2021/01/25.
//

import UIKit

import RxCocoa
import RxSwift
import SnapKit
import Then

class BaseViewController: UIViewController {
    
    private struct Dimensions {
        static let indicatorCornerRadius = 10.f
    }
    
    var navigationBarHidden: Bool = false
    var disposeBag: DisposeBag = DisposeBag()
    let activityIndicator = UIActivityIndicatorView().then {
        $0.hidesWhenStopped = true
        $0.color = .blue
        $0.layer.cornerRadius = Dimensions.indicatorCornerRadius
        $0.backgroundColor = .white
        $0.style = .medium
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required convenience init?(coder: NSCoder) {
        self.init()
    }
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
        setupConstraints()
        initializeIndicator()
        bind()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(navigationBarHidden, animated: animated)
    }
    
    // MARK: - UI Initialization
    fileprivate func initializeIndicator() {
        self.view.addSubview(activityIndicator)
        
        activityIndicator.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    func startLoading() {
        activityIndicator.startAnimating()
    }
    
    func stopLoading() {
        activityIndicator.stopAnimating()
    }
    
    // MARK: - Override
    /// Setting up initial view properties
    func initialize() { }
    
    /// Setting up all constraint in this statement
    func setupConstraints() { }
    
    /// Subscribe statement for non-reactor view controller
    func bind() { }
    
}

// MARK: - Rx Extension
extension Reactive where Base: BaseViewController {
    var isLoading: Binder<Bool> {
        return Binder(self.base) { base, isLoading in
            if isLoading {
                base.startLoading()
            } else {
                base.stopLoading()
            }
        }
    }
}
