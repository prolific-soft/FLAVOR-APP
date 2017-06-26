//
//  TestTableViewController.swift
//  FLAVOR
//
//  Created by Chidi Emeh on 6/22/17.
//  Copyright © 2017 Chidi Emeh. All rights reserved.
//

import UIKit

class TestTableViewController: UITableViewController {


      @IBOutlet weak var featuredRecipeCollectionView: UICollectionView!
    
    //Properties
    let latestCellReuseIdentifier = "LatestCell"
    let collectionHeaderXib = "collectionHeaderXib"
    var sections = ["Featured Recipe", "Latest"]
    var latestRecipe: [Recipe]?
    var featuredRecipe: [Recipe]?
    
    var collectionHeaderSize : UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        latestRecipe = RecipeList().loadRecipe()
        featuredRecipe = latestRecipe
        
        //Reigister Collection Header

       // featuredRecipeCollectionView.register(UINib(nibName: "homeCollectionViewHeader", bundle: nil), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: collectionHeaderXib)
        
        /*
         collectionHeaderSize = UICollectionViewFlowLayout()
        collectionHeaderSize.headerReferenceSize = CGSize(width: featuredRecipeCollectionView.bounds.size.width, height: CGFloat(25))
        featuredRecipeCollectionView.setCollectionViewLayout(collectionHeaderSize, animated: true)
        */
        
       // let flow = featuredRecipeCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        //flow.sectionFootersPinToVisibleBounds = true
        
    }

    
    //Configure Header
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        /*let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "xibheader") as! HomeTableViewHeaderView
         */
        
        let headerXib = Bundle.main.loadNibNamed("homeTableViewHeader", owner: self, options: nil)?.first as! HomeTableViewHeaderView
        headerXib.contentView.backgroundColor = UIColor(hexString: "FF9995")
        
        return headerXib
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return sections.count
        //return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return section == 0 ? 1 : 10
        
        //return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let cellCollection = tableView.dequeueReusableCell(withIdentifier: "TableViewCollectionPrototype", for: indexPath) as! TestTableViewCellPrototype
            return cellCollection
            //return cellCollection
        }
        else {
            

            //Return the tableviewCell
            
            let cell = tableView.dequeueReusableCell(withIdentifier: latestCellReuseIdentifier, for: indexPath) as! TestTableViewCell
            
            return cell
       }
        
        //Then Assert to throw an error or return nill
         //use tag as ternary operator to differentiate the return
        
        
       // cell.setUpProperties(recipe: (latestRecipe?[indexPath.row])!)
        
        // return cell.tag == 909 ? cell : cellCollection
        
       // return cell
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


















