//
//  SecondViewController.swift
//  Weight on other planets
//
//  Created by Sahil Tagunde on 21/07/20.
//  Copyright © 2020 sahiltagunde. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var getWeight: String = ""

   //Labels

    @IBOutlet weak var mercuryLabel: UILabel!
    @IBOutlet weak var venusLabel: UILabel!
    @IBOutlet weak var earthLabel: UILabel!
    @IBOutlet weak var marsLabel: UILabel!
    @IBOutlet weak var jupiterLabel: UILabel!
    @IBOutlet weak var saturnLabel: UILabel!
    @IBOutlet weak var uranusLabel: UILabel!
    @IBOutlet weak var neptuneLabel: UILabel!
    @IBOutlet weak var moonLabel: UILabel!
    
    
    
// Containers
    
    @IBOutlet weak var mercuryContainer: UIView!
    @IBOutlet weak var venusContainer: UIView!
    @IBOutlet weak var earthContainer: UIView!
    @IBOutlet weak var marsContainer: UIView!
    @IBOutlet weak var jupiterContainer: UIView!
    @IBOutlet weak var saturnConatiner: UIView!
    @IBOutlet weak var uranusContainer: UIView!
    @IBOutlet weak var neptuneContainer: UIView!
    @IBOutlet weak var moonContainer: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculateWeight()
        load()

    }
    
    let mercuryGravity = 0.38
    let venusGravity = 0.91
    let earthGravity = 1.0
    let marsGravity = 0.38
    let jupiterGravity = 2.34
    let saturnGravity = 0.93
    let uranusGravity = 0.92
    let neptuneGravity = 1.12
    let moonGravity = 0.17
    
    
    
    var pName = ""
    var pInfo = ""
    var pimage:UIImage = UIImage()
    var nickN = ""
    
    func calculateWeight() {
        
        if let doublenumber = Float(getWeight){
            
        mercuryLabel.text = ("\(String(format:"%.1f",(doublenumber * Float(mercuryGravity))))")
        venusLabel.text = ("\(String(format:"%.1f",(doublenumber * Float(venusGravity))))")
        earthLabel.text = ("\(String(format:"%.1f",(doublenumber * Float(earthGravity))))")
        marsLabel.text = ("\(String(format:"%.1f",(doublenumber * Float(marsGravity))))")
        jupiterLabel.text = ("\(String(format:"%.1f",(doublenumber * Float(jupiterGravity))))")
        saturnLabel.text = ("\(String(format:"%.1f",(doublenumber * Float(saturnGravity))))")
        uranusLabel.text = ("\(String(format:"%.1f",(doublenumber * Float(uranusGravity))))")
        neptuneLabel.text = ("\(String(format:"%.2f",(doublenumber * Float(neptuneGravity))))")
        moonLabel.text = ("\(String(format:"%.1f",(doublenumber * Float(moonGravity))))")
    }
    }
    
    
    func load(){
        // CornerRadius to all Container
        mercuryContainer.layer.cornerRadius = 20
        venusContainer.layer.cornerRadius = 20
        earthContainer.layer.cornerRadius = 20
        marsContainer.layer.cornerRadius = 20
        jupiterContainer.layer.cornerRadius = 20
        saturnConatiner.layer.cornerRadius = 20
        uranusContainer.layer.cornerRadius = 20
        neptuneContainer.layer.cornerRadius = 20
        moonContainer.layer.cornerRadius = 20
        
        // ShadowEffect to all container
        
        mercuryContainer.layer.shadowOffset = CGSize(width: 8, height: 8)
        mercuryContainer.layer.shadowRadius = 4
        mercuryContainer.layer.shadowOpacity = 0.6

        venusContainer.layer.shadowOffset = CGSize(width: 8, height: 8)
        venusContainer.layer.shadowRadius = 4
        venusContainer.layer.shadowOpacity = 0.6
        
        earthContainer.layer.shadowOffset = CGSize(width: 8,height: 8)
        earthContainer.layer.shadowRadius = 4
        earthContainer.layer.shadowOpacity = 0.6
        
        marsContainer.layer.shadowOffset = CGSize(width: 8, height: 8)
        marsContainer.layer.shadowRadius = 4
        marsContainer.layer.shadowOpacity = 0.6
        
        jupiterContainer.layer.shadowOffset = CGSize(width: 8, height: 8)
        jupiterContainer.layer.shadowRadius = 4
        jupiterContainer.layer.shadowOpacity = 0.7
        
        saturnConatiner.layer.shadowOffset = CGSize(width: 8, height: 8)
        saturnConatiner.layer.shadowRadius = 4
        saturnConatiner.layer.shadowOpacity = 0.6
        
        uranusContainer.layer.shadowOffset = CGSize(width: 8, height: 8)
        uranusContainer.layer.shadowRadius = 4
        uranusContainer.layer.shadowOpacity = 0.6
        
        neptuneContainer.layer.shadowOffset = CGSize(width: 8, height: 8)
        neptuneContainer.layer.shadowRadius = 4
        neptuneContainer.layer.shadowOpacity = 0.6
        
        moonContainer.layer.shadowOffset = CGSize(width: 8, height: 8)
        moonContainer.layer.shadowRadius = 4
        moonContainer.layer.shadowOpacity = 0.6
        
    }
    
// Buttons
    
    @IBAction func backButton(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func mercuryB(_ sender: Any) {
        
        pName = "Mercury"
        pimage = UIImage(named: "mercury")!
        nickN = "The Swiftest Planet"
        pInfo = "The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon. From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter. Despite its proximity to the Sun, Mercury is not the hottest planet in our solar system – that title belongs to nearby Venus, thanks to its dense atmosphere. But Mercury is the fastest planet, zipping around the Sun every 88 Earth days. Mercury is appropriately named for the swiftest of the ancient Roman gods."
        self.performSegue(withIdentifier: "goToThirdVC", sender: self)
    }
    

    
    @IBAction func venusB(_ sender: Any) {
        pName = "Venus"
        pimage = UIImage(named: "venus")!
        nickN = "Planetary Hot Spot"
        pInfo = "Venus is the second planet from the Sun and our closest planetary neighbor. Similar in structure and size to Earth, Venus spins slowly in the opposite direction from most planets. Its thick atmosphere traps heat in a runaway greenhouse effect, making it the hottest planet in our solar system with surface temperatures hot enough to melt lead. Glimpses below the clouds reveal volcanoes and deformed mountains.Venus is named for the ancient Roman goddess of love and beauty, who was known as Aphrodite to the Ancient Greeks."
        self.performSegue(withIdentifier: "goToThirdVC", sender: self)
    }
    @IBAction func earthB(_ sender: Any) {
        
        pName = "Earth"
        pimage = UIImage(named: "Earth")!
        nickN = "Planetary Hot Spot"
        pInfo = "Our home planet is the third planet from the Sun, and the only place we know of so far that’s inhabited by living things. While Earth is only the fifth largest planet in the solar system, it is the only world in our solar system with liquid water on the surface. Just slightly larger than nearby Venus, Earth is the biggest of the four planets closest to the Sun, all of which are made of rock and metal. The name Earth is at least 1,000 years old. All of the planets, except for Earth, were named after Greek and Roman gods and goddesses. However, the name Earth is a Germanic word, which simply means the ground."
        
        self.performSegue(withIdentifier: "goToThirdVC", sender: self)
    }
    
    @IBAction func marsB(_ sender: Any) {
        
        pName = "Mars"
        pimage = UIImage(named: "mars")!
        nickN = "The Red Planet"
        pInfo = "The fourth planet from the Sun, Mars is a dusty, cold, desert world with a very thin atmosphere.This dynamic planet has seasons, polar ice caps and weather and canyons and extinct volcanoes, evidence it was once an even more active past.Mars is one of the most explored bodies in our solar system, and it's the only planet where we've sent rovers to roam the alien landscape. NASA currently has three spacecraft in orbit, one rover and one lander on the surface. India and ESA also have spacecraft in orbit above Mars. These robotic explorers have found lots of evidence that Mars was much wetter and warmer, with a thicker atmosphere, billions of years ago. NASA plans to send the next-generation Perseverance rover to Mars this summer. "
        self.performSegue(withIdentifier: "goToThirdVC", sender: self)
    }
    
    @IBAction func jupiterB(_ sender: Any) {
        
        pName = "Jupiter"
        pimage = UIImage(named: "jupiter")!
        nickN = "Bigger than every Planet."
        pInfo = "Jupiter is the fifth planet from our Sun and is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined. Jupiter's stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium. Jupiter’s iconic Great Red Spot is a giant storm bigger than Earth that has raged for hundreds of years.Jupiter is surrounded by dozens of moons. Jupiter also has several rings, but unlike the famous rings of Saturn, Jupiter’s rings are very faint and made of dust, not ice."
        self.performSegue(withIdentifier: "goToThirdVC", sender: self)
    }
    
    @IBAction func saturnB(_ sender: Any) {
        
        pName = "Saturn"
        pimage = UIImage(named: "saturn")!
        nickN = "Jewel of Our Solar System"
        pInfo = "Saturn is the sixth planet from the Sun and the second largest planet in our solar system. Adorned with a dazzling system of icy rings, Saturn is unique among the planets. It is not the only planet to have rings, but none are as spectacular or as complex as Saturn's. Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium.Surrounded by more than 60 known moons, Saturn is home to some of the most fascinating landscapes in our solar system. From the jets of water that spray from Enceladus to the methane lakes on smoggy Titan, the Saturn system is a rich source of scientific discovery and still holds many mysteries."
        self.performSegue(withIdentifier: "goToThirdVC", sender: self)
    }
    
    @IBAction func uranusB(_ sender: Any) {
        
        pName = "Uranus"
        pimage = UIImage(named: "Uranus")!
        nickN = "The Sideways Planet"
        pInfo = "The seventh planet from the Sun with the third largest diameter in our solar system, Uranus is very cold and windy. The ice giant is surrounded by 13 faint rings and 27 small moons as it rotates at a nearly 90-degree angle from the plane of its orbit. This unique tilt makes Uranus appear to spin on its side, orbiting the Sun like a rolling ball.The first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star. It was two years later that the object was universally accepted as a new planet, in part because of observations by astronomer Johann Elert Bode."
        self.performSegue(withIdentifier: "goToThirdVC", sender: self)
    }
    
    @IBAction func neptuneB(_ sender: Any) {
        
        pName = "Neptune"
        pimage = UIImage(named: "neptune")!
        nickN = "The Windiest Planet"
        pInfo = "Dark, cold and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system. More than 30 times as far from the Sun as Earth, Neptune is the only planet in our solar system not visible to the naked eye. In 2011 Neptune completed its first 165-year orbit since its discovery in 1846.Neptune is so far from the Sun that high noon on the big blue planet would seem like dim twilight to us. The warm light we see here on our home planet is roughly 900 times as bright as sunlight on Neptune.NASA's Voyager 2 is the only spacecraft to have visited Neptune up close.In 2011 Neptune completed its first 165-year orbit since its discovery in 1846.It flew past in 1989 on its way out of the solar system."
        self.performSegue(withIdentifier: "goToThirdVC", sender: self)
    }
    
    @IBAction func moonB(_ sender: Any) {
        
        pName = "Moon"
        pimage = UIImage(named: "Moon")!
        nickN = "Our Natural Satellite"
        pInfo = "Earth's Moon is the only place beyond Earth where humans have set foot.The Latest NASA Teams Load Artemis I Rocket Hardware on Barge for Trip to Kennedy.The brightest and largest object in our night sky, the Moon makes Earth a more livable planet by moderating our home planet's wobble on its axis, leading to a relatively stable climate. It also causes tides, creating a rhythm that has guided humans for thousands of years. The Moon was likely formed after a Mars-sized body collided with Earth.Our moon is the fifth largest of the 190+ moons orbiting planets in our solar system.Earth's only natural satellite is simply called the Moon because people didn't know other moons existed until Galileo Galilei discovered four moons orbiting Jupiter in 1610."
        self.performSegue(withIdentifier: "goToThirdVC", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToThirdVC"{
        let displayVC = segue.destination as! InfoViewController
        displayVC.name = pName
        displayVC.image = pimage
        displayVC.info = pInfo
        displayVC.nick = nickN
        }
    }
    
}
