//
//  TwoPlayerVC.swift
//  TicTacToe
//
//  Created by Ogabek Bakhodirov on 13/06/22.
//

import UIKit

class TwoPlayerVC: UIViewController{
    
    //MARK: - Tit Tac Toe Label
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
    
    //MARK: - Two Player of Board
    lazy var twoPlayerLabelOfBoard: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Two Player"
        view.textColor = .yellow
        view.minimumScaleFactor = 15
        view.textAlignment = .center
        view.numberOfLines = 1
        view.font = .systemFont(ofSize: 25.0, weight: .black)
        
        return view
    }()
    
    //MARK: - Background brick image
    lazy var bgImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = #imageLiteral(resourceName: "ic_main_bg-1")
        view.contentMode = .scaleAspectFill
        
        return view
    }()
    
    //MARK: - Blackboard which is located at center
    lazy var noteBoard: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = #imageLiteral(resourceName: "ic_main_board")
        view.contentMode = .scaleToFill
        
        return view
    }()
    
    //MARK: - Main stackView which is located in Board
    lazy var menuStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [twoPlayerLabelOfBoard, allOptionsStack])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 18
        stack.backgroundColor = .clear
        
        return stack
    }()
    
    //MARK: - Second main stackView which is located in menuStack
    lazy var allOptionsStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [parametrNamesStack, parametrsStack])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 5
        stack.backgroundColor = .clear
        
        return stack
    }()
    
    
    //MARK: - Parametr names Stack
    lazy var parametrNamesStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [FirstPlayerNameLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 15
        stack.backgroundColor = .green
        
        return stack
    }()
    
    //MARK: - Parametr names Label
    lazy var FirstPlayerNameLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "First Player Name:"
        view.textColor = .black
        view.minimumScaleFactor = 10
        view.textAlignment = .left
        view.numberOfLines = 1
        view.font = .systemFont(ofSize: 15.0, weight: .medium)
        
        return view
    }()
    
    //MARK: - Parametrs Stack
    lazy var parametrsStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [FirstPlayerNameTF])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 15
        stack.backgroundColor = .red
        
        return stack
    }()
    
    //MARK: - Parametrs
    lazy var FirstPlayerNameTF: UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetupSubviews()
    }
    
    
    
    
    func SetupSubviews(){
        view.addSubview(bgImageView)
        view.addSubview(titleLabel)
        view.addSubview(noteBoard)
        view.addSubview(menuStack)

        
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
            
            menuStack.leftAnchor.constraint(equalTo: noteBoard.leftAnchor, constant: 20),
            menuStack.rightAnchor.constraint(equalTo: noteBoard.rightAnchor, constant: -20),
            menuStack.heightAnchor.constraint(equalTo: noteBoard.heightAnchor, multiplier: 0.7),
            menuStack.centerYAnchor.constraint(equalTo: noteBoard.centerYAnchor),
            
//            twoPlayerLabelOfBoard.heightAnchor.constraint(equalTo: menuStack.heightAnchor, constant: 20)
        ])
    }
}
