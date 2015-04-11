//
//  InterfaceController.m
//  WatchKitMap WatchKit Extension
//
//  Created by MAEDAHAJIME on 2015/04/11.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceMap *map;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    
    // 大阪駅の位置 中心座標の設定
    CLLocationCoordinate2D mapLocation = CLLocationCoordinate2DMake(34.7003783, 135.4950484);
    
    // 表示範囲
    MKCoordinateSpan coordinateSpan = MKCoordinateSpanMake(0.005, 0.005);
    
    // 紫ピン
    [self.map addAnnotation:mapLocation withPinColor: WKInterfaceMapPinColorPurple];
    
    // ピンクフラグ
    [self.map addAnnotation:mapLocation withImage:[UIImage imageNamed:@"pink_flag"]
               centerOffset:CGPointMake(20, -20)];
    
    // 地図の表示範囲を設定
    [self.map setRegion:(MKCoordinateRegionMake(mapLocation, coordinateSpan))];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



