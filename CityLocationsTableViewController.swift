//
//  CityLocationsTableViewController.swift
//  TravelMate
//
//  Created by Olivia Dugger on 6/26/19.
//  Copyright © 2019 Olivia Dugger. All rights reserved.
//

import UIKit

var segueIdentifiers = ["citiesToAmster", "citiesToBerlin", "citiesToDubai", "citiesToLondon", "citiesToMadrid", "citiesToMoscow", "citiesToParis", "citiesToRome"]

struct City {
    var id : Int
    var title : String
    var text : String
    var image : String
}

class CityLocationsTableViewController: UITableViewController {

    var allCities = [
        City(id: 1,
              title: "Amsterdam",
              text: "Netherlands",
              image: "amsterdam"),
        City(id: 2,
              title: "Berlin",
              text: "Germany",
              image: "berlin"),
        City(id: 3,
              title: "Dubai",
              text: "United Arab Emirates",
              image: "dubai"),
        City(id: 4,
             title: "London",
             text: "United Kingdom",
             image: "london"),
        City(id: 5,
             title: "Madrid",
             text: "Spain",
             image: "madrid"),
        City(id: 6,
             title: "Moscow",
             text: "Russia",
             image: "moscow"),
        City(id: 7,
             title: "Paris",
             text: "France",
             image: "paris"),
        City(id: 8,
             title: "Rome",
             text: "Italy",
             image: "rome"),
    ]
    
   
    
 /*
    var locations : [city] = []
    
    func createLocations() -> [city] {
        
        let swift = city()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = city()
        dog.name = "Walk the Dog"
        // important is set to false by default
        
        return [swift, dog]
    }

 */
    override func viewDidLoad() {
        super.viewDidLoad()
    //    locations = createLocations()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allCities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        cell.detailTextLabel?.text = allCities[indexPath.row].text
        
        cell.imageView?.image = UIImage(named: allCities[indexPath.row].image)
        
        cell.textLabel?.text = allCities[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueIdentifiers[indexPath.row], sender: self)
    }
/*
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "                                   CITIES 😎"
*/
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//}
