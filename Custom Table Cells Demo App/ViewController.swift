//
//  ViewController.swift
//  Custom Table Cells Demo App
//
//  Created by Alberth Rodriguez on 9/11/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Calling cellForRowAtIndexPAth for row: \(indexPath.row)")
        
        
        let myCell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        
        //Set the contents
        myCell.textLabel?.text = "This is row number \(indexPath.row)"
        myCell.imageView?.image = UIImage(named: "clock")
        
        myCell.accessoryType = .disclosureIndicator
        
        myCell.detailTextLabel?.text = "this is some detail text"
        
        return myCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

