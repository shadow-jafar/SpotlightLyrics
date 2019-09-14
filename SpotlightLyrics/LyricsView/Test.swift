////
////  Test.swift
////  SpotlightLyrics
////
////  Created by Jafar Khan on 9/14/19.
////  Copyright © 2019 Scott Rong. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//protocol KaraokeLyricViewDelegate {
//    func karaokeLyricView(lyricView:KaraokeLabel, didStartAnimation animation:CAAnimation)
//    func karaokeLyricView(lyricView:KaraokeLabel, didStopAnimation animation:CAAnimation)
//
//}
//
//class KaraokeLabel: UILabel {
//    var fillTextColor: UIColor?
//    var duration = 0.0
//    var lyricSegment:[String:Any]?
//    var delegate:KaraokeLyricViewDelegate?
//    private var textLayer:CATextLayer?
//    private var animation:CAKeyframeAnimation?
//    
//    func startAnimation() {
//        
//    }
//    
//    func pauseAnimation() {
//        
//    }
//    func resumeAnimation() {
//        
//    }
//    func reset() {
//        
//    }
//    
//    func isAnimating() -> Bool {
//        return true
//    }
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        prepareLyricLayerForLabel(label: self)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        
//        prepareLyricLayerForLabel(label: self)
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func prepareLyricLayerForLabel(label:UILabel) {
//        if (textLayer != nil) {
//            textLayer?.removeFromSuperlayer()
//        }
//        // just for one line, not support for multi lines label
//        label.numberOfLines = 1;
//        label.clipsToBounds = true;
//        label.textAlignment = .left;
//        label.baselineAdjustment = .alignBaselines;
//        textLayer = CATextLayer()
//        guard let textLayer = self.textLayer else { return }
//        textLayer.frame = label.bounds;
//        
//        // Fill color
//        textLayer.foregroundColor = fillTextColor != nil ? fillTextColor?.cgColor : UIColor.blue.cgColor;
//        
//        let textFont:UIFont = label.font;
//        textLayer.font = CGFont(label.font as! CFString)
//        textLayer.fontSize = textFont.pointSize;
//        textLayer.string = label.text;
//        textLayer.contentsScale = UIScreen.main.scale;
//        textLayer.masksToBounds = true;
//        
//        // Set anchorPoint to left and layer will expand to right
//        textLayer.anchorPoint = CGPoint(x: 0, y: 0.5)
//        // Update layer frame to match with the label and hide it
//        textLayer.frame = label.bounds;
//        textLayer.isHidden = true
//                label.layer.addSublayer(textLayer)
//    }
//    
//    func animationForTextLayer(layer:CATextLayer) -> CAKeyframeAnimation {
//    if (layer == nil) {
//    prepareLyricLayerForLabel(label: self)
//    }
//    
//    layer.isHidden = false;
//    
//        let textAnimation:CAKeyframeAnimation = CAKeyframeAnimation(keyPath: "bounds.size.width")
//    textAnimation.duration = self.duration;
//    textAnimation.keyTimes = [self keyTimesFromLyricSegment];
//    textAnimation.values =  [self valuesFromLyricSegment];
//    textAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
//    textAnimation.removedOnCompletion = YES;
//    textAnimation.delegate = self;
//    return textAnimation;
//    }
//    
//    func keyTimesFromLyricSegment() -> [NSNumber] {
//        var keyTimes:[NSNumber]
//        if lyricSegment != nil {
//            
//        }
//    
//    if(lyricSegment != nil) {
//        let sortedKeys:[String] = sortedKeyFromDictionary(dic: lyricSegment!);
//        
//        var lyricTimes: NSMutableArray = NSMutableArray(array: sortedKeys)
//        lyricTimes.insert(0.0, at: 0)
//        lyricTimes.add(1.0)
//        keyTimes = lyricTimes
//    // Key time always starts at zero
//    [lyricTimes insertObject:@0.0 atIndex:0];
//    // And end at 1.0
//    [lyricTimes addObject:@1.0];
//    
//    keyTimes = lyricTimes;
//    } else {
//    keyTimes = @[@0.0, @1.0];
//    }
//    
//    return keyTimes;
//    }
//    
//    func sortedKeyFromDictionary(dic:[String:Any]) ->[String] {
//       return dic.keys.sorted()
//    }
//}
