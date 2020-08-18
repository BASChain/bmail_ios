//
//  StampTableViewCell.swift
//  BMail
//
//  Created by wesley on 2020/8/8.
//  Copyright © 2020 NBS. All rights reserved.
//

import UIKit

class StampTableViewCell: UITableViewCell {
        
        @IBOutlet weak var BGView: UIView!
        @IBOutlet weak var SBalanceLbl: UILabel!
        @IBOutlet weak var SActiveLbl: UILabel!
        @IBOutlet weak var SCreditLbl: UILabel!
        @IBOutlet weak var SIssuerAddrLbl: UILabel!
        @IBOutlet weak var SMailTokenName: UILabel!
        @IBOutlet weak var SmailTokenSymbol: UILabel!
        @IBOutlet weak var SMailTokenIconImg: UIImageView!
        @IBOutlet weak var InUseCheckImg: UIImageView!
        @IBOutlet weak var activeBtn: UIButton!
        
        
        override func awakeFromNib() {
                super.awakeFromNib()
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
                super.setSelected(selected, animated: animated)
        }
        
        func populate(stamp:Stamp, idx:Int) {
                self.SBalanceLbl.text = "\(stamp.Balance)"
                self.SActiveLbl.text = "\(stamp.ActiveBalance)"
                self.SCreditLbl.text = "\(stamp.Credit)"
                self.SIssuerAddrLbl.text = stamp.IssuerAddr!
                self.SMailTokenName.text = stamp.Name
                self.SmailTokenSymbol.text = stamp.Symbol
                self.InUseCheckImg.isHidden = !stamp.IsInused
                activeBtn.tag = idx
                guard let url = stamp.IconUrl, url != "" else{
                        return
                }
                self.SMailTokenIconImg.load(url:URL.init(string: url)!)
        }
}
