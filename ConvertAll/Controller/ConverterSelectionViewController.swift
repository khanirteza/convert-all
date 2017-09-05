//
//  ConverterSelectionViewController.swift
//  ConvertAll
//
//  Created by Mohammad Irteza Khan on 9/2/17.
//  Copyright © 2017 Mohammad Irteza Khan. All rights reserved.
//

import UIKit


class ConverterSelectionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var converterSelectionTableView: UITableView!
    
    let cellID = "ConverterTypeCell"
    let converterSegueID = "ConverterSegue"
    let model = ConverterModel.sharedConverterModel
    var selectedConverter: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        converterSelectionTableView.delegate = self
        converterSelectionTableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destinationVC = segue.destination
        if segue.identifier == converterSegueID{
            if let converterVC = destinationVC as? ConverterViewController{
                converterVC.selectedConverter = self.selectedConverter!
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ConverterModel.sharedConverterModel.converterGroup.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = converterSelectionTableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! ConverterSelectionCell
        cell.converterTypeLabel.text = model.converterGroup[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedConverter = model.converterGroup[indexPath.row]
        performSegue(withIdentifier: converterSegueID, sender: self)
        //self.delegate?.converterSelected(selectedConverter: selectedConverter!)
    }
    
    
}
