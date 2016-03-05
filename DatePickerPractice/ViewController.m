//
//  ViewController.m
//  DatePickerPractice
//
//  Created by student on 05/03/16.
//  Copyright © 2016 BRN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    datepicker=[[UIDatePicker alloc]init];
    datepicker.datePickerMode=UIDatePickerModeDate;
    datepicker.backgroundColor=[UIColor orangeColor];
    [self.dobTF setInputView:datepicker];
    
    
    UIToolbar*toolbar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolbar.backgroundColor=[UIColor greenColor];
    
    UIBarButtonItem*doneBtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneBtnClicked)];
    UIBarButtonItem*spaceBtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    [toolbar setItems:[NSArray arrayWithObjects:spaceBtn,doneBtn, nil]];
    
    [self.dobTF setInputAccessoryView:toolbar];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)doneBtnClicked
{
    NSDateFormatter*formater=[[NSDateFormatter alloc]init];
    [formater setDateFormat:@"dd-MMM-YYYY hh:mm"];
    
    self.dobTF.text=[NSString stringWithFormat:@"%@",[formater stringFromDate:datepicker.date]];
    
    [self.dobTF resignFirstResponder];
    
    
    
}
    // Do any additional setup after loading the view, typically from a nib.


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
