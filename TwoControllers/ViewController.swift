//
//  ViewController.swift
//  TwoControllers
//
//  Created by Larry Mcdowell on 8/7/19.
//  Copyright © 2019 Larry Mcdowell. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource  {
    var viewControllerOne:UICollectionViewController!
    
    
    var viewOne: UICollectionView!
    
    private let CELL_ID = "Cell"
    
    var testdata:[String] = ["Linda","Sue","April","May","Sam"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("counting cells")
        return testdata.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         print("making cells")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CELL_ID, for: indexPath) as! viewCell
        cell.text = testdata[indexPath.row]
       
        return cell
    }
    //below not even being called when working  - so when would it get called???
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        print("called?")
//        return CGSize(width: 100, height: 100)
//
//
//    }
    

    
    // let collectionViewFirst = cv1(collectionViewLayout: UICollectionViewLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Two Collection View Tester"
        view.backgroundColor = .yellow
        setupFirstCollection()
        setupSecondCollection()
    }

    func setupFirstCollection(){
        viewControllerOne = cv1(collectionViewLayout: UICollectionViewFlowLayout())
        let firstView = viewControllerOne.collectionView
        self.view.isUserInteractionEnabled = false
     // self.view = firstView!
         view.addSubview(firstView!)
          //  firstView!.frame = CGRect(x: 50, y: 0, width: 300, height: 300)
            firstView!.isUserInteractionEnabled = true
            firstView!.translatesAutoresizingMaskIntoConstraints = false
            firstView!.anchor(top: view.topAnchor, left: view.leadingAnchor, bottom: view.bottomAnchor, right: view.trailingAnchor, paddingTop: 50, paddingLeft: 50, paddingBottom: 50, paddingRight: 0, width: 0, height: 0, enableInsets: false)
   //         view.bringSubviewToFront(firstView!)
            //firstView!.m
//        print("Collection One Loading")
//        let layoutOne = UICollectionViewFlowLayout()
//        layoutOne.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//
//        layoutOne.itemSize = CGSize(width: 50, height: 50)
//
//        viewOne = UICollectionView(frame: CGRect(x: 50, y: 0, width: 300, height: 300), collectionViewLayout: layoutOne)
//        viewOne.register(viewCell.self, forCellWithReuseIdentifier: CELL_ID)
//        viewOne.delegate = self
//        viewOne.dataSource = self
//        viewOne.backgroundColor = .blue
//        self.view.addSubview(viewOne)
//
//        print("finished")

    }
    
    func setupSecondCollection(){
        
        
    }

}

