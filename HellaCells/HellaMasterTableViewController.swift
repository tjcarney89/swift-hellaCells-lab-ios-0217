//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 9/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UITableViewController {

    var numbers = [Int]()
    
    
   override func viewDidLoad() {
        super.viewDidLoad()
        
        for number in 1...100{
            numbers.append(number)
        }
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numbers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)

        cell.textLabel?.text = "\(numbers[indexPath.row])"
        

        return cell
    }
 
    // MARK: - Navigation

      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! HellaDetailViewController
        let selectedCell = sender as! UITableViewCell
        guard let unwrappedText =  selectedCell.textLabel?.text else{return}
        
        print(unwrappedText)
        destinationVC.bigNumber = unwrappedText
        
    }
    

}
