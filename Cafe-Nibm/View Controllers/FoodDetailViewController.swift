//
//  FoodDetailViewController.swift
//  Cafe-Nibm
//
//  Created by Dilan Pramodya on 2021-03-08.
//

import UIKit

class FoodDetailViewController: UIViewController {

    @IBOutlet weak var detailFoodImage: UIImageView!
    @IBOutlet weak var detailFoodName: UILabel!
    @IBOutlet weak var detailOfferLabel: UILabel!
    @IBOutlet weak var detailPrice: UILabel!
    @IBOutlet weak var detailFoodDescription: UILabel!
    @IBOutlet weak var addtoCartButton: UIButton!
    
    var image = UIImage()
    var name = String()
    var offer = String()
    var price = String()
    var foodDescription = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailFoodImage.image = image
        detailFoodName.text = name
        detailOfferLabel.text = offer
        detailPrice.text = price
        detailFoodDescription.text = foodDescription
        
    }
    
    
    @IBAction func addToCartBtn(_ sender: UIButton) {
    }
    
}
