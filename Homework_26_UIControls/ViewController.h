
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIView *testView;
@property (weak, nonatomic) IBOutlet UIImageView *testImage;


@property (weak, nonatomic) IBOutlet UISwitch *switchRotation;
@property (weak, nonatomic) IBOutlet UISwitch *switchScale;
@property (weak, nonatomic) IBOutlet UISwitch *switchTranslation;
@property (weak, nonatomic) IBOutlet UISlider *sliderSpeed;




- (IBAction)actionRotateSwitch:(UISwitch*)sender;
- (IBAction)actionScaleSwitch:(UISwitch*)sender;
- (IBAction)actionTranslationSwitch:(UISwitch *)sender;
- (IBAction)actionSpeedSlider:(UISlider *)sender;
- (IBAction)actionSegmentControl:(UISegmentedControl *)sender;

@end

