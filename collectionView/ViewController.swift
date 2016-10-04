//
//  ViewController.swift
//  collectionView
//
//  Created by Rebecca Bartels on 10/3/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var Array = [String]()

    @IBOutlet var collectionViewVar: UICollectionView!
    
    @IBOutlet weak var collectionViewCellVar: UICollectionViewCell!
    
   

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Array = ["The Fellowship Of The Ring", "The Two Towers", "The Return Of The King"]
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Array.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        var Button = cell.viewWithTag(1) as! UILabel
        
        Button.text = Array[indexPath.row]
        
        return cell
    }


}

