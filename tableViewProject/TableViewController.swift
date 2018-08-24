//
//  ViewController.swift
//  tableViewProject
//
//  Created by Bia Alegre on 24/08/18.
//  Copyright © 2018 academysenac. All rights reserved.
//

import UIKit

struct CellData {
    let image : UIImage?
    let message : String?
}

class TableViewController: UITableViewController {
    
    var data = [CellData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        data = [CellData.init(image: #imageLiteral(resourceName: "bolo"), message: "Bolo de Chocolate"),CellData.init(image: #imageLiteral(resourceName: "bolo"), message: "Bolo de Chocolate"),CellData.init(image: #imageLiteral(resourceName: "bolo"), message: "Bolo de Chocolate")]
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomCell
        cell.mainImage = data[IndexPath.row].image
        cell.message = data[IndexPath.row].message
        
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
}













