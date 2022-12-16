//
//  MovieListViewController.swift
//  MovieDBProject
//
//  Created by Renato Savoia Girão on 15/12/22.
//

import UIKit

class MovieListViewController: UIViewController {

    var viewModel = MoviewViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        viewModel.fetchMovie()
        
    }
}

