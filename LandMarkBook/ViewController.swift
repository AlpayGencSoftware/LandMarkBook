//
//  ViewController.swift
//  LandMarkBook
//
//  Created by Alpay Genc on 10.07.2018.
//  Copyright © 2018 Liberty App Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var LandMarkNames = [String]()
    var landMarkImages = [UIImage]()
    
    var selectedLandMarkName = ""
    var selectedLandMarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource =  self
        tableView.delegate = self
        
        LandMarkNames.append("Colloseum")
        LandMarkNames.append("Stonehenge")
        LandMarkNames.append("Taj Mahal")
         LandMarkNames.append("Chine Great Wall")
        landMarkImages.append(UIImage(named: "colesium.jpg")!)
        landMarkImages.append(UIImage(named: "stonehenge.jpeg")!)
        landMarkImages.append(UIImage(named: "tajmahal.jpg")!)
        landMarkImages.append(UIImage(named: "chine-great-wall.jpeg")!)
       
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LandMarkNames.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageVC" {
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.LandMarkName = selectedLandMarkName
            destinationVC.LandMarkImage = selectedLandMarkImage
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedLandMarkName = LandMarkNames[indexPath.row]
        selectedLandMarkImage = landMarkImages[indexPath.row]
        performSegue(withIdentifier: "toImageVC", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            LandMarkNames.remove(at: indexPath.row)
            landMarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell  = UITableViewCell()
        cell.textLabel?.text = LandMarkNames[indexPath.row]
        return cell
    }

   


}

