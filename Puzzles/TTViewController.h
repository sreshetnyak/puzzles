//
//  TTViewController.h
//  Puzzles
//
//  Created by sergey on 2/18/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *selectImageBtn;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;

- (IBAction)selectImageBtn:(id)sender;
- (IBAction)changeValueSlider:(id)sender;

@end
