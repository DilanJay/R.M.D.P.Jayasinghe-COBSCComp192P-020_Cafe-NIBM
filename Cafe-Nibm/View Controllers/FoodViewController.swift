//
//  FoodViewController.swift
//  Cafe-Nibm
//
//  Created by Dilan Pramodya on 2021-03-08.
//

import UIKit

class FoodViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var foodName = ["Rice n Curry", "Burger", "Fruit Juice"]
    var fooddescription = [
        "Test description 01",
        "Test description 02",
        "Test description 03"
    ]
    var foodPrice = ["Rs- 500", "Rs- 1500", "Rs- 250"]
    var offerLbl = ["10% OFF", "05% OFF", "05% OFF"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension FoodViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? FoodTableViewCell
        
        cell?.foodNameLabel.text = foodName[indexPath.row]
        cell?.foodDescriptionLabel.text = fooddescription[indexPath.row]
        cell?.priceLabel.text = foodPrice[indexPath.row]
        cell?.foodImageView.image = UIImage(named: foodName[indexPath.row])
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "FoodDetailViewController") as? FoodDetailViewController
        
        vc?.image = UIImage(named: foodName[indexPath.row])!
        vc?.name = foodName[indexPath.row]
        vc?.foodDescription = fooddescription[indexPath.row]
        vc?.price = foodPrice[indexPath.row]
        
        //lkr

        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
