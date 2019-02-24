//
//  MainViewController.swift
//  T7 Quiz App
//
//  Created by Ruben Amaez on 2/3/19.
//  Copyright © 2019 ramaez. All rights reserved.
//

import UIKit

private let reuseIdentifier = "CharCell"

class MainViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var characterList = CharacterListBank().list
    var quizViewController = QuizViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        //self.collectionView!.register(CharacterCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib.init(nibName: "CharacterCell", bundle: nil), forCellWithReuseIdentifier: "CharCell")
        
        
    }


    // MARK: UICollectionViewDataSource

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CharacterCell
    
        // Configure the cell
        cell.backgroundColor = UIColor .black
        
        print(characterList)
        
        //cell.label.text = CharacterList[0]
        
        cell.configure(with: characterList[indexPath.row])
        cell.cellView.backgroundColor = UIColor .red
    
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    func collectionView(_ collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
        return CGPoint(x: 20, y: 20)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(quizViewController, animated: true)
        //self.present(quizViewController, animated: true)
    }

    

}
