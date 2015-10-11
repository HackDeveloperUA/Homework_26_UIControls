
#import "ViewController.h"

@interface ViewController ()
@property (assign, nonatomic) CGFloat scaleFloat;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)actionRotateSwitch:(UISwitch*)sender {
    
    if (sender.isOn) {
        
        [UIView animateWithDuration:self.sliderSpeed.value
                              delay:0
                            options: UIViewAnimationOptionCurveLinear
                         animations:^{
                             
                             self.testImage.transform = CGAffineTransformRotate(self.testImage.transform, 2*M_PI/5);
                             
                         } completion:^(BOOL finished) {
                             
                             NSLog(@"Norm !");
                             [self actionRotateSwitch:sender];
                         }];
    }
  
}

- (IBAction)actionScaleSwitch:(UISwitch*)sender {

    
    if (sender.isOn){
        
        if (self.scaleFloat==2)
            self.scaleFloat=0.5;
        else self.scaleFloat=2;
        
        [UIView animateWithDuration:self.sliderSpeed.value
                              delay:0
                            options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             
                             self.testImage.transform = CGAffineTransformScale (self.testImage.transform, self.scaleFloat, self.scaleFloat);
                         } completion:^(BOOL finished){
                             
                             [self actionScaleSwitch:sender];
                         }];
    }
}

- (IBAction)actionTranslationSwitch:(UISwitch *)sender {
    
    
    if (sender.isOn){
        
        NSInteger myX = (CGRectGetWidth(self.testImage.bounds))/2 + arc4random() % ((int)CGRectGetMaxX(self.view.bounds) - (int)CGRectGetWidth(self.testImage.bounds)/2);
        NSInteger myY = (CGRectGetHeight(self.testImage.bounds))/2 + arc4random() % ((int)CGRectGetMidY(self.view.bounds) - (int)CGRectGetHeight(self.testImage.bounds)/2);

    
        [UIView animateWithDuration:self.sliderSpeed.value
                              delay:0
                            options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             
                             self.testImage.center = CGPointMake(myX, myY);
                         } completion:^(BOOL finished){
                             
                             [self actionTranslationSwitch:sender];
                         }];
    }
    
}





- (IBAction)actionSegmentControl:(UISegmentedControl *)sender {
    
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.testImage.image=[UIImage imageNamed:@"Green-Earth.png"];
            break;
        case 1:
            self.testImage.image=[UIImage imageNamed:@"earth-america.png"];
            break;
            
        case 2:
            self.testImage.image=[UIImage imageNamed:@"Earth 3.png"];
            break;
        case 3:
            self.testImage.image=[UIImage imageNamed:@"earth.png"];
            break;
            
            
        default:
            break;
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)actionSpeedSlider:(UISlider *)sender {
    
    
}

@end
