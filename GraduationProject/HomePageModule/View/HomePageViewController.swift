//
//  HomePageViewController.swift
//  GraduationProject
//
//  Created by Enes Kaya on 4.10.2022.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var articlesCollectionView: UICollectionView!
    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupUI()
       
    }
    

    

}



private extension HomePageViewController{
    
    func setupUI() {
        
        
        imageView.image = UIImage(named: "homepagebackground")
        destinationLabel.textColor = UIColor(red: 0.988, green: 0.989, blue: 0.992, alpha: 1)
        destinationLabel.font = UIFont(name: "SourceSansPro-Bold", size: 32)
        destinationLabel.text = "Where’s your next destination?"
        
        let flightLabel = UILabel()
        let hotelLabel = UILabel()
        let x = view.frame.width - 370
        let y = view.frame.height - (view.frame.height / 2.05)
        flightLabel.frame = CGRect(x: x, y: y, width: 49, height: 20)
        flightLabel.font = UIFont(name: "SourceSansPro-Bold", size: 16)
        flightLabel.text = "Flights"
        flightLabel.textColor = UIColor(red: 0.988, green: 0.989, blue: 0.992, alpha: 1)
        
        let x2 = view.frame.width - 290
        let y2 = view.frame.height - (view.frame.height / 2.05)
        hotelLabel.frame = CGRect(x: x2, y: y2, width: 49, height: 20)
        hotelLabel.font = UIFont(name: "SourceSansPro-Bold", size: 16)
        hotelLabel.text = "Hotels"
        hotelLabel.textColor = UIColor(red: 0.988, green: 0.989, blue: 0.992, alpha: 1)
        
        
       
        view.addSubview(flightLabel)
        view.addSubview(hotelLabel)
        makeFlightButton()
        makeHotelButton()
        
    }
    
    func makeFlightButton() {
        let button = UIButton()
        button.setImage(UIImage(named: "FlightButton"), for: .normal)
        
        let x = view.frame.width - 370
        let y = view.frame.height - (view.frame.height / 1.8)
        button.frame = CGRect(x: x, y: y, width: 48, height: 48)
        
    
        button.addTarget(self, action: #selector(flightButtonPressed), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    func makeHotelButton() {
        let button = UIButton()
        button.setImage(UIImage(named: "HotelButton"), for: .normal)
        
        let x = view.frame.width - 290
        let y = view.frame.height - (view.frame.height / 1.8)
        button.frame = CGRect(x: x, y: y, width: 48, height: 48)
        
    
        button.addTarget(self, action: #selector(hotelButtonPressed), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    
    
    
    @objc func flightButtonPressed() {
        let destnationVC = storyboard?.instantiateViewController(withIdentifier: "FlightsDetailViewController") as! FlightsDetailViewController
        
        //destnationVC.delegate = self
        
        present(destnationVC, animated: true)
        
 
    }
    
    @objc func hotelButtonPressed() {
        let destnationVC = storyboard?.instantiateViewController(withIdentifier: "HotelsDetailViewController") as! HotelsDetailViewController
        
        //destnationVC.delegate = self
        
        present(destnationVC, animated: true)
        
 
    }
    
    
}
