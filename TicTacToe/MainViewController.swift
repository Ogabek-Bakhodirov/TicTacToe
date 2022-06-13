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
        view.textAlignment = .center
        view.numberOfLines = 0
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
        view.contentMode = .scaleAspectFit
        
        return view
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpview()
    }
    
    
    func setUpview(){
        view.backgroundColor = .white
        
        view.addSubview(bgImageView)
        view.addSubview(titleLabel)
        view.addSubview(noteBoard)
        view.addSubview(onePlayerBtn)
        
        
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
            
            onePlayerBtn.topAnchor.constraint(equalTo: noteBoard.topAnchor, constant:  80.0),
            onePlayerBtn.leftAnchor.constraint(equalTo: noteBoard.leftAnchor, constant: 20.0),
            onePlayerBtn.rightAnchor.constraint(equalTo: noteBoard.rightAnchor, constant: -20.0),
            onePlayerBtn.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}

