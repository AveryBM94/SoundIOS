//
//  ViewController.m
//  ButtonSounds
//
//  Created by Avery Barrantes on 5/4/17.
//  Copyright © 2017 Avery Barrantes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController
-(IBAction)Button1Sound:(id)sender{
    AudioServicesPlaySystemSound(Button1);
}
- (void)viewDidLoad {
    
    
    NSURL*Button1Sound = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"epicSound" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)Button1Sound, & Button1);
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
