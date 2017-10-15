//
//  numberkey.swift
//  Ecalculator
//
//  Created by 矢野悠人 on 2017/02/05.
//  Copyright © 2017年 yumiya. All rights reserved.
//

import UIKit

class numberkey: UIView {

    @IBOutlet weak var option: UIButton!
    @IBOutlet weak var cancel: UIButton!
    @IBOutlet weak var del: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var PLUS: UIButton!
    @IBOutlet weak var MINUS: UIButton!
    @IBOutlet weak var MULTIPLY: UIButton!
    @IBOutlet weak var DIVIDE: UIButton!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var brace: UIButton!
    @IBOutlet weak var brace_end: UIButton!
    @IBOutlet weak var sqrt: UIButton!
    @IBOutlet weak var pi: UIButton!
    @IBOutlet weak var e: UIButton!
    @IBOutlet weak var exp: UIButton!
    @IBOutlet weak var pow: UIButton!
    @IBOutlet weak var log: UIButton!
    @IBOutlet weak var cursorback: UIButton!
    @IBOutlet weak var cursorforward: UIButton!
    @IBOutlet weak var point: UIButton!
    @IBOutlet weak var sin: UIButton!
    @IBOutlet weak var cos: UIButton!
    @IBOutlet weak var tan: UIButton!
    @IBOutlet weak var arc: UIButton!
    @IBOutlet weak var logten: UIButton!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var view:UIView!
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder aDecoder:NSCoder)
    {
        super.init(coder:aDecoder)!
        setup()
    }
    
    func setup()
    {
        view = loadviewfromNib()
        view.frame = bounds
        //http://stackoverflow.com/questions/30867325/binary-operator-cannot-be-applied-to-two-uiviewautoresizing-operands
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(view)
        
    }
    
    //http://stackoverflow.com/questions/34658838/instantiate-view-from-nib-throws-error
    func loadviewfromNib() ->UIView
    {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "numberkeyView",bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
    


}
