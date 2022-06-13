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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpview()
    }
    
    
    func setUpview(){
        view.backgroundColor = .white
        
        view.addSubview(bgImageView)
        view.addSubview(titleLabel)
        view.addSubview(noteBoard)
        
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant:  40.0).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20.0).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        bgImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        bgImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        bgImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        bgImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        noteBoard.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20.0).isActive = true
        noteBoard.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0).isActive = true
        noteBoard.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        noteBoard.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
}

