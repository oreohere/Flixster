//
//  MovieDetailsViewController.swift
//  flixster
//
//  Created by Oyendrila Dobe on 10/2/20.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var BackDropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(movie["title"] as Any)
        // Do any additional setup after loading the view.
        titlelabel.text = movie["title"] as? String
        titlelabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        posterView.af_setImage(withURL: posterURL!)
        
        let baseURLbd = "https://image.tmdb.org/t/p/w780"
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: baseURLbd + backdropPath)
        
        BackDropView.af_setImage(withURL: backdropURL!)
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
