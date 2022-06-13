//
//  ViewController.swift
//  TicTacToe
//
//  Created by Ogabek Bakhodirov on 13/06/22.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Tic Tac Toe"
        view.textColor = .yellow
        view.minimumScaleFactor = 30
        view.textAlignment = .center
        view.numberOfLines = 1
        view.font = .systemFont(ofSize: 60.0, weight: .black)
        
        return view
    }()
    
    lazy var bgImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = #imageLiteral(resourceName: "ic_main_bg-1")
        view.contentMode = .scaleAspectFill
        
        return view
    }()
    
    lazy var noteBoard: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = #imageLiteral(resourceName: "ic_main_board")
        view.contentMode = .scaleToFill
        
        return view
    }()
    
    lazy var menuBtnStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [onePlayerBtn, twoPlayerBtn, optionBtn])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 18
        stack.backgroundColor = .clear
        
        return stack
    }()
    
    lazy var onePlayerBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("One Player", for: .normal)
        btn.backgroundColor = .clear
        btn.setTitleColor(.yellow, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        
        return btn
    }()
    
    lazy var twoPlayerBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Two Player", for: .normal)
        btn.backgroundColor = .clear
        btn.setTitleColor(.yellow, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.addTarget(self, action: #selector(twoPlayerTapped(on:)), for: .touchUpInside)
        
        return btn
    }()
    
    lazy var optionBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Options", for: .normal)
        btn.backgroundColor = .clear
        btn.setTitleColor(.yellow, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.addTarget(self, action: #selector(tappedOptionsBtn(on:)), for: .touchUpInside)
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpview()
    }
    
    
    func setUpview(){
        view.backgroundColor = .white
        
        view.addSubview(bgImageView)
        view.addSubview(titleLabel)
        view.addSubview(noteBoard)
        view.addSubview(menuBtnStack)
        
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant:  40.0),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0),
            titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20.0),
            titleLabel.heightAnchor.constraint(equalToConstant: 100),
            
            bgImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bgImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            bgImageView.rightAnchor.constraint(equalTo: view.rightAnchor),
            bgImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            noteBoard.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20.0),
            noteBoard.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0),
            noteBoard.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            noteBoard.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            menuBtnStack.leftAnchor.constraint(equalTo: noteBoard.leftAnchor),
            menuBtnStack.rightAnchor.constraint(equalTo: noteBoard.rightAnchor),
            menuBtnStack.heightAnchor.constraint(equalTo: noteBoard.heightAnchor, multiplier: 0.58),
            menuBtnStack.centerYAnchor.constraint(equalTo: noteBoard.centerYAnchor),
        ])
    }
    
    @objc func tappedOptionsBtn(on button: UIButton){
        let optionsVC = OptionsVC()
        optionsVC.modalPresentationStyle = .fullScreen
        optionsVC.modalTransitionStyle = .coverVertical
        present(optionsVC, animated: true)
    }
    
    @objc func twoPlayerTapped(on button: UIButton){
        let twoPlayerVC = TwoPlayerVC()
        twoPlayerVC.modalPresentationStyle = .fullScreen
        twoPlayerVC.modalTransitionStyle = .coverVertical
        present(twoPlayerVC, animated: true)
    }
}

