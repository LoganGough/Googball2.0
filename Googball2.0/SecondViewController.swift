//
//  SecondViewController.swift
//  Googball2.0
//
//  Created by LOGAN GOUGH on 3/7/25.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        

        // Do any additional setup after loading the view.
    }
    

   

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CrazyCell
        //cell.backgroundColor = UIColor.red
        cell.label1.text = "HI"
        count += 1
        print("cell")
        return cell
    }
}
