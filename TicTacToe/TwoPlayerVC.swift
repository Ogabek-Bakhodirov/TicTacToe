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
        let stack = UIStackView(arrangedSubviews: [FirstPlayerNameLabel, OpponentNameLabel, FirstMove, Pieces])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 15
        stack.backgroundColor = .clear
        
        return stack
    }()
    
    //MARK: - Parametr names Label
    lazy var FirstPlayerNameLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Name:"
        view.textColor = .black
        view.backgroundColor = .orange
        view.minimumScaleFactor = 10
        view.textAlignment = .left
        view.numberOfLines = 1
        view.font = .systemFont(ofSize: 15.0, weight: .medium)
        
        return view
    }()
    
    //MARK: - Parametr opponents Label
    lazy var OpponentNameLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Opponent:"
        view.textColor = .black
        view.backgroundColor = .orange
        view.minimumScaleFactor = 10
        view.textAlignment = .left
        view.numberOfLines = 1
        view.font = .systemFont(ofSize: 15.0, weight: .medium)
        
        return view
    }()
    
    //MARK: - First Move Label
    lazy var FirstMove: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "First Move:"
        view.textColor = .black
        view.backgroundColor = .orange
        view.minimumScaleFactor = 10
        view.textAlignment = .left
        view.numberOfLines = 1
        view.font = .systemFont(ofSize: 15.0, weight: .medium)
        
        return view
    }()
    
    //MARK: - Pieces Label
    lazy var Pieces: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Pieces:"
        view.textColor = .black
        view.backgroundColor = .orange
        view.minimumScaleFactor = 10
        view.textAlignment = .left
        view.numberOfLines = 1
        view.font = .systemFont(ofSize: 15.0, weight: .medium)
        
        return view
    }()
    
    //MARK: - Parametrs Stack
    lazy var parametrsStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [FirstPlayerNameTF, oppenentTF, FirstMoveStack, PiecesParametr])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 15
        stack.backgroundColor = .clear
        
        return stack
    }()
    
    //MARK: - first player name text field Parametrs
    lazy var FirstPlayerNameTF: UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }()
    
    //MARK: - oppenent player name text field Parametrs
    lazy var oppenentTF: UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }()
    
    //MARK: - First Move Stack
    lazy var PiecesParametr: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [XOBtn1, XOBtn2, XOBtn3])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 10
        stack.backgroundColor = .clear
        
        return stack
    }()
    
    //MARK: - X Button
    lazy var XOBtn1: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("XO", for: .normal)
        btn.backgroundColor = .orange
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 15, weight: .black)
        
        return btn
    }()
    
    //MARK: - O Button
    lazy var XOBtn2: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("XO", for: .normal)
        btn.backgroundColor = .red
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 15, weight: .black)
        
        return btn
    }()
    
    //MARK: - XO Button
    lazy var XOBtn3: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("XO", for: .normal)
        btn.backgroundColor = .yellow
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 15, weight: .black)
        
        return btn
    }()
    
    
    //MARK: - First Move Stack
    lazy var FirstMoveStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [XBtn, OBtn, XOBtn])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 10
        stack.backgroundColor = .clear
        
        return stack
    }()
    
    //MARK: - X Button
    lazy var XBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("X", for: .normal)
        btn.backgroundColor = .orange
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 15, weight: .black)
        
        return btn
    }()
    
    //MARK: - O Button
    lazy var OBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("O", for: .normal)
        btn.backgroundColor = .red
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 15, weight: .black)
        
        return btn
    }()
    
    //MARK: - XO Button
    lazy var XOBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("XO", for: .normal)
        btn.backgroundColor = .yellow
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 15, weight: .black)
        
        return btn
    }()
    //MARK: - Back and Start stack
    lazy var backAndStartStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [backBtn, startBtn])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 20
        stack.backgroundColor = .clear
        
        return stack
    }()
    
    
    //MARK: - Back Button
    lazy var backBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Back", for: .normal)
        btn.backgroundColor = .orange
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 35, weight: .black)
        
        return btn
    }()
    
    //MARK: - Start Button
    lazy var startBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Start", for: .normal)
        btn.backgroundColor = .orange
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 35, weight: .black)
        
        return btn
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
        view.addSubview(backAndStartStack)

        
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
            
            backAndStartStack.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08),
            backAndStartStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10),
            backAndStartStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            backAndStartStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10)

        ])
    }
}
