//
//  ConvenientModel.swift
//  OurCity
//
//  Created by yd on 16/4/28.
//  Copyright © 2016年 郑波波. All rights reserved.
//

import UIKit


/// 第一组section
class convenientSectionOne: UITableViewCell {
    var imgView : UIImageView! //image图片
    var title : UILabel! //name
    var detail : UILabel! //detail
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imgView = UIImageView(frame: CGRect(x: 2, y: 2, width: 100, height: 100))
        self.addSubview(imgView)
        
        title = UILabel(frame: CGRect(x: CGRectGetMaxX(imgView.frame) + 2, y: 2, width: CGRectGetWidth(self.frame) - CGRectGetMidX(title.frame), height: 50))
        self.addSubview(title)
        
        detail = UILabel(frame: CGRect(x: CGRectGetMaxX(imgView.frame) + 2, y: CGRectGetMaxY(title.frame), width: CGRectGetWidth(self.frame) - CGRectGetMidX(title.frame), height: 30))
        self.addSubview(detail)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

/// 第二组section
class convenientSectionTwo: UITableViewCell {
    
    var imgView1 : UIImageView!
    var imgView2 : UIImageView!
    var imgView3 : UIImageView!
    var imgView4 : UIImageView!
    var button : UIButton!
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        imgView1 = UIImageView(frame: CGRect(x:  0, y: 0, width: CGRectGetWidth(self.frame)/2 - 1, height: CGRectGetWidth(self.frame)/4))
        self.addSubview(imgView1)
        
        imgView2 = UIImageView(frame: CGRect(x: CGRectGetWidth(self.frame)/2, y: 0, width: CGRectGetWidth(self.frame)/2 + 1, height: CGRectGetWidth(self.frame)/4))
        self.addSubview(imgView2)
        
        imgView3 = UIImageView(frame: CGRect(x: 0, y: CGRectGetMaxY(imgView1.frame) - 1, width: CGRectGetWidth(self.frame)/2, height: CGRectGetWidth(self.frame)/4))
        self.addSubview(imgView3)
        
        imgView4 = UIImageView(frame: CGRect(x: CGRectGetWidth(self.frame)/2, y: CGRectGetMaxY(imgView1.frame), width: CGRectGetWidth(self.frame)/2 + 1, height: CGRectGetWidth(self.frame)/4))
        self.addSubview(imgView4)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//第三组section
class convenientSectionThree: UITableViewCell {
    var imgView : UIImageView!
    var title : UILabel! //name
    var detail : UILabel! //detail
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imgView = UIImageView(frame: CGRect(x: 10, y: 10, width: CGRectGetWidth(self.frame)/3, height: CGRectGetWidth(self.frame)/4))
        self.addSubview(imgView)
        title = UILabel(frame: CGRect(x: CGRectGetMaxX(imgView.frame) + 5, y: 2, width: CGRectGetWidth(self.frame) - CGRectGetMidX(title.frame), height: 50))
        self.addSubview(title)
        
        detail = UILabel(frame: CGRect(x: CGRectGetMaxX(imgView.frame) + 5, y: CGRectGetMaxY(title.frame), width: CGRectGetWidth(self.frame) - CGRectGetMidX(title.frame), height: 30))
        self.addSubview(detail)
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}