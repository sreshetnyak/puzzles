//
//  TTViewController.m
//  Puzzles
//
//  Created by sergey on 2/18/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import "TTViewController.h"

@interface TTViewController ()

@property (weak, nonatomic) UIView* draggingView;

@property (assign, nonatomic) CGPoint touchOffset;

@property (strong,nonatomic) NSMutableArray *arrayOfPoint;

@property (strong,nonatomic) NSMutableArray *imgViewArray;

@property (strong,nonatomic) UIImageView *imageOriginalView;

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}


- (void)cretePuzzlesWithImage:(UIImage *)image andPuzzlesCount:(int)counts {

    UIImage *imagePuzzles = image;
    
    self.imgViewArray = [[NSMutableArray alloc]init];
    self.arrayOfPoint = [[NSMutableArray alloc]init];
    CGFloat imgHeight = imagePuzzles.size.height;
    CGFloat imgWeight = imagePuzzles.size.width;
    
    UIImageView *imageOriginalView = [[UIImageView alloc]initWithImage:imagePuzzles];
    imageOriginalView.frame = CGRectMake(0, 0, imgWeight, imgHeight);
    imageOriginalView.alpha = 0.4;
    [self.view addSubview:imageOriginalView];
    
    CGFloat startx = 0;
    CGFloat starty = 0;
    int numberOfRow = counts;
    int numberOfSection = 0;
    numberOfSection = imgHeight/(imgWeight/numberOfRow);
    int count = 1;
    CGFloat scale;
    for (int i = 1; i <= numberOfSection; i++) {
        for (int j = 1; j <= numberOfRow; j++) {
            
            UIImage *img = [[UIImage alloc]init];
            UIImageView *imgView = [[UIImageView alloc]init];
            UIView *view = [[UIView alloc]init];
            
            if (i == 1 && j == 1) {
                img = [UIImage imageNamed:@"1.jpg"];
                
                scale = imgHeight/numberOfRow/img.size.width + imgHeight/numberOfRow/img.size.width/4;
                
                img = [self imageWithImage:img scaledToSize:CGSizeMake(img.size.width * scale, img.size.height*scale)];
                
                img = [self maskImage:imagePuzzles withMask:img point:CGPointMake(startx, starty)];
                
                view.frame = CGRectMake(startx, starty, img.size.width, img.size.height);
                
            } else if (i == 1 && j == numberOfRow) {
                
                img = [UIImage imageNamed:@"2.jpg"];
                
                scale = imgHeight/numberOfRow/img.size.height + imgHeight/numberOfRow/img.size.height/4;
                
                img = [self imageWithImage:img scaledToSize:CGSizeMake(img.size.width * scale, img.size.height * scale)];
                
                img = [self maskImage:imagePuzzles withMask:img point:CGPointMake(startx, starty)];
                
                view.frame = CGRectMake(startx, starty, img.size.width, img.size.height);
                
                starty = starty + view.frame.size.height - view.frame.size.height/2.5;
                
            } else if (i == 1 && j != numberOfRow) {
                
                img = [UIImage imageNamed:@"3.jpg"];
                
                scale = imgHeight/numberOfRow/img.size.width + imgHeight/numberOfRow/img.size.width/4;
                
                img = [self imageWithImage:img scaledToSize:CGSizeMake(img.size.width * scale, img.size.height * scale)];
                
                img = [self maskImage:imagePuzzles withMask:img point:CGPointMake(startx, starty)];
                
                view.frame = CGRectMake(startx, starty, img.size.width, img.size.height);
                
            } else if (j == 1 && i !=numberOfRow) {
                
                img = [UIImage imageNamed:@"7.jpg"];
                
                scale = imgHeight/numberOfRow/img.size.width + imgHeight/numberOfRow/img.size.width/4;
                
                img = [self imageWithImage:img scaledToSize:CGSizeMake(img.size.width * scale, img.size.height * scale)];
                
                img = [self maskImage:imagePuzzles withMask:img point:CGPointMake(startx, starty)];
                
                view.frame = CGRectMake(startx, starty, img.size.width, img.size.height);
                starty = starty + view.frame.size.height/5;
                
            } else if (j == numberOfRow && i != numberOfRow) {
                
                img = [UIImage imageNamed:@"8.jpg"];
                
                scale = imgHeight/numberOfRow/img.size.width + imgHeight/numberOfRow/img.size.width/4;
                
                img = [self imageWithImage:img scaledToSize:CGSizeMake(img.size.width * scale, img.size.height * scale)];
                
                img = [self maskImage:imagePuzzles withMask:img point:CGPointMake(startx, starty)];
                
                view.frame = CGRectMake(startx, starty, img.size.width, img.size.height);
                starty = starty + view.frame.size.height - view.frame.size.height/2.5;
                
            } else if ( j == 2 && i != numberOfRow) {
                
                img = [UIImage imageNamed:@"4.jpg"];
                
                scale = imgHeight/numberOfRow/img.size.height + imgHeight/numberOfRow/img.size.height/4;
                
                img = [self imageWithImage:img scaledToSize:CGSizeMake(img.size.width * scale, img.size.height * scale)];
                
                img = [self maskImage:imagePuzzles withMask:img point:CGPointMake(startx, starty)];
                
                view.frame = CGRectMake(startx, starty, img.size.width, img.size.height);
                
            } else if (j != 2 && i != numberOfRow) {
                
                img = [UIImage imageNamed:@"14.jpg"];
                
                scale = imgHeight/numberOfRow/img.size.height + imgHeight/numberOfRow/img.size.height/4;
                
                img = [self imageWithImage:img scaledToSize:CGSizeMake(img.size.width * scale, img.size.height * scale)];
                
                img = [self maskImage:imagePuzzles withMask:img point:CGPointMake(startx, starty)];
                
                view.frame = CGRectMake(startx, starty, img.size.width, img.size.height);
                
            } else if (i == numberOfRow && j == 1) {
                
                img = [UIImage imageNamed:@"5.jpg"];
                scale = imgHeight/numberOfRow/img.size.height + imgHeight/numberOfRow/img.size.height/4;
                
                img = [self imageWithImage:img scaledToSize:CGSizeMake(img.size.width * scale, img.size.height * scale)];
                
                img = [self maskImage:imagePuzzles withMask:img point:CGPointMake(startx, starty)];
                
                view.frame = CGRectMake(startx, starty, img.size.width, img.size.height);
                
                starty = starty + view.frame.size.height/5;
                
            } else if (i == numberOfRow && j != 1 && j != numberOfRow) {
                
                img = [UIImage imageNamed:@"12.jpg"];
                
                scale = imgHeight/numberOfRow/img.size.width + imgHeight/numberOfRow/img.size.width/4;
                
                img = [self imageWithImage:img scaledToSize:CGSizeMake(img.size.width * scale, img.size.height * scale)];
                
                img = [self maskImage:imagePuzzles withMask:img point:CGPointMake(startx, starty)];
                
                view.frame = CGRectMake(startx, starty, img.size.width, img.size.height);
                
            } else if (i == numberOfRow && j == numberOfRow) {
                
                img = [UIImage imageNamed:@"6.jpg"];
                
                scale = imgHeight/numberOfRow/img.size.width + imgHeight/numberOfRow/img.size.width/4;
                
                img = [self imageWithImage:img scaledToSize:CGSizeMake(img.size.width * scale, img.size.height * scale)];
                
                img = [self maskImage:imagePuzzles withMask:img point:CGPointMake(startx, starty)];
                
                view.frame = CGRectMake(startx, starty, img.size.width, img.size.height);
                
            }
            
            imgView.image = img;
            imgView.frame = CGRectMake(0, 0, img.size.width, img.size.height);
            view.tag = count;
            
            [self.arrayOfPoint addObject:[NSValue valueWithCGRect:view.frame]];
            
            [view addSubview:imgView];
            [self.view addSubview:view];
            [self.imgViewArray addObject:view];
            count++;
            
            if (j != numberOfRow) {
                startx = startx + img.size.width - img.size.width/4.1;
            } else {
                startx = 0;
            }
            
        }
    }
    
    
    for (UIView *view in self.imgViewArray) {
        CGRect frame = view.frame;
        frame.origin.x = arc4random() % 600;
        frame.origin.y = arc4random() % 600;
        view.frame = frame;
        
        [self.view addSubview:view];
    }


}



- (UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize {
    
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage *)maskImage:(UIImage *)image withMask:(UIImage *)maskImage point:(CGPoint)point {
    
    CGRect myImageArea = CGRectMake (point.x, point.y, maskImage.size.width, maskImage.size.height);
    
    CGImageRef mySubimage = CGImageCreateWithImageInRect (image.CGImage, myImageArea);
    
    CGImageRef maskRef = maskImage.CGImage;
    
    CGImageRef mask = CGImageMaskCreate(CGImageGetWidth(maskRef),
                                        CGImageGetHeight(maskRef),
                                        CGImageGetBitsPerComponent(maskRef),
                                        CGImageGetBitsPerPixel(maskRef),
                                        CGImageGetBytesPerRow(maskRef),
                                        CGImageGetDataProvider(maskRef), NULL, false);
    
    CGImageRef masked = CGImageCreateWithMask(mySubimage, mask);
    
    UIImage * maskedImage = [UIImage imageWithCGImage:masked];
    
    return maskedImage;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch* touch = [touches anyObject];
    
    CGPoint pointOnMainView = [touch locationInView:self.view];
    
    UIView* view = [self.view hitTest:pointOnMainView withEvent:event];
    
    if (![view isEqual:self.view]) {
        
        self.draggingView = view;
        
        [self.view bringSubviewToFront:self.draggingView];
        
        CGPoint touchPoint = [touch locationInView:self.draggingView];
        
        self.touchOffset = CGPointMake(CGRectGetMidX(self.draggingView.bounds) - touchPoint.x,
                                       CGRectGetMidY(self.draggingView.bounds) - touchPoint.y);
        
        [UIView animateWithDuration:0.3
                         animations:^{
                             self.draggingView.transform = CGAffineTransformMakeScale(1.1f, 1.1f);
                             self.draggingView.alpha = 0.3f;
                         }];
        
    } else {
        
        self.draggingView = nil;
        
    }
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    if (self.draggingView) {
        
        UITouch* touch = [touches anyObject];
        
        CGPoint pointOnMainView = [touch locationInView:self.view];
        
        CGPoint correction = CGPointMake(pointOnMainView.x + self.touchOffset.x,
                                         pointOnMainView.y + self.touchOffset.y);
        
        self.draggingView.center = correction;
    }
    
}

- (void) onTouchesEnded {
    
    [UIView animateWithDuration:0.3
                     animations:^{
                         self.draggingView.transform = CGAffineTransformIdentity;
                         self.draggingView.alpha = 1.f;
                     }];
    
    if (self.draggingView.tag > 0 && self.draggingView.tag <= [self.arrayOfPoint count]) {
        CGRect rect = [[self.arrayOfPoint objectAtIndex:self.draggingView.tag - 1] CGRectValue];
        
        if (CGRectIntersectsRect(rect,self.draggingView.frame)) {
            
            [UIView animateWithDuration:0.3
                             animations:^{
                                 self.draggingView.frame = rect;
                             }];
            
        }

    }
    self.draggingView = nil;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self onTouchesEnded];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self onTouchesEnded];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectImageBtn:(id)sender {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    
    [self cretePuzzlesWithImage:chosenImage andPuzzlesCount:self.slider.value];
    
    self.slider.hidden = YES;
    self.selectImageBtn.hidden = YES;
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:nil];
}




- (IBAction)changeValueSlider:(id)sender {
    
      NSLog(@"%f",self.slider.value);
}
@end
