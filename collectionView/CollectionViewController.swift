//
//  ViewController.swift
//  collectionView
//
//  Created by Rebecca Bartels on 10/3/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    
    var ButtonArray = [String]()
    var Array = [String]()
    var ImageArray = [UIImage]()
    
    
    
    
    @IBOutlet var collectionViewVar: UICollectionView!
    
    
    @IBOutlet weak var collectionViewCellVar: UICollectionViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // why is Array and ButtonArray both necessary and I need to put in my images
        Array = ["The Fellowship Of The Ring", "The Two Towers", "The Return Of The King", "The Hobbit"]
        ButtonArray = ["Fellowship Of The Ring", "Two Towers", "Return of the King", "The Hobbit"]
        ImageArray = [#imageLiteral(resourceName: "returnoftheking.png"), #imageLiteral(resourceName: "fellowship.png"), #imageLiteral(resourceName: "twotowers.png")]
        
        ImageArray.count
        print(ImageArray)
        
    
        
        
    }
    
    func constraintsForCells() {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //fellowship of the ring segue goes here
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Array.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        //        let Label = cell.viewWithTag(1) as! UILabel
        //        Label.text = Array[indexPath.row]
        
        let Button = cell.viewWithTag(2) as! UIButton
        Button.setTitle(ButtonArray[indexPath.row], for: UIControlState.normal)
        
//        let animage = cell.viewWithTag(3) as! UIImage
        //worked here
        
        
        
        return cell
    }
    
    
    
}
