//
//  SecondViewController.swift
//  Googball2.0
//
//  Created by LOGAN GOUGH on 3/7/25.
//

class AppData{
    static var currentLevel = 1
    static var boolView = false
    
}
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
        10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CrazyCell
        //cell.backgroundColor = UIColor.red
        cell.label1.text = String(indexPath.row + 1)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        AppData.currentLevel = (indexPath.row + 1)
        print(indexPath.row + 1)
        performSegue(withIdentifier: "segue1", sender: self)
        
        AppData.boolView = true
    }
}
