//
//  cv1.swift
//  TwoControllers
//
//  Created by Larry Mcdowell on 8/7/19.
//  Copyright © 2019 Larry Mcdowell. All rights reserved.
//

import UIKit

private let CELL_ID = "Cell"

class cv1: UICollectionViewController {

    var data:[String] = ["Tom","Sam","Bob","Roger"]
    
    //let flowLayout = UICollectionViewLayout()
    
    override init(collectionViewLayout layout: UICollectionViewLayout) {
        super.init(collectionViewLayout: layout)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
   
    
  
      
        print("Collection One Loading")
        let layoutOne = UICollectionViewFlowLayout()
        layoutOne.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        //layoutOne.itemSize = CGSize(width: view.frame.width, height: 700)
        layoutOne.itemSize = CGSize(width: 50, height: 50)
        self.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        self.collectionView = UICollectionView(frame: CGRect(x: 50, y: 0, width: 300, height: 300), collectionViewLayout: layoutOne)
        collectionView.register(viewCell.self, forCellWithReuseIdentifier: CELL_ID)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .blue
        collectionView.isUserInteractionEnabled = true
         //collectionView.frame = CGRect(x: 50, y: 0, width: 300, height: 300)
      //  collectionView.translatesAutoresizingMaskIntoConstraints = false
    //    collectionView.anchor(top: self.view.superview!.topAnchor, left: view.superview!.leadingAnchor, bottom: self.view.superview!.bottomAnchor, right: self.view.superview!.trailingAnchor, paddingTop: 40, paddingLeft: 40, paddingBottom: 40, paddingRight: 300, width: 0, height: 0, enableInsets: false)
        
        print("finished")

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        print("running for \(data.count) cells")
        return data.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("working here?")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CELL_ID, for: indexPath) as! viewCell
       
        // Configure the cell
        cell.text = data[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print("prob not even called?")
            return CGSize(width: 100, height: 100)
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let temp = data[destinationIndexPath.item]
        data.remove(at: sourceIndexPath.item)
        data.insert(temp, at: destinationIndexPath.item)
    }
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
