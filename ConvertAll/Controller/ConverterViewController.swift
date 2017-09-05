//
//  ConverterViewController.swift
//  ConvertAll
//
//  Created by Mohammad Irteza Khan on 9/2/17.
//  Copyright © 2017 Mohammad Irteza Khan. All rights reserved.
//

import UIKit


class ConverterViewController: UIViewController {
    
    @IBOutlet weak var converterTableView: UITableView!
    
    var selectedConverter: String?
    let model = ConverterModel.sharedConverterModel
    let cellID = "UnitConverterCellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        converterTableView.delegate = self
        converterTableView.dataSource = self
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


extension ConverterViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let converter = selectedConverter{
            return (model.converterType[converter]?.count)!
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = converterTableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! UnitConverterCell
        if let converter = selectedConverter{
            if let converterType = model.converterType[converter]{
                cell.unitTextField.placeholder = converterType[indexPath.row].name
                
                return cell
            }
        }
        
        
        return cell
    }
}
