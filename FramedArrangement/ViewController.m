//
//  ViewController.m
//  FramedArrangement
//
//  Created by jonathan thornburg on 4/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong)UIView *redView;
@property(nonatomic, strong)UIView *blueView;
@property(nonatomic, strong)UIView *greenView;
@property(nonatomic, strong)UIView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    
    [self layoutDiagonalRectangles];
}
- (void) layoutSquares
{
    CGFloat width = self.view.frame.size.width / 2;
    CGFloat height = self.view.frame.size.height / 2;
    
    CGFloat secondColumnX = width;
    
    CGFloat topRow = 22;
    
    CGFloat secondRowY = height + topRow;
    
    self.redView.frame = CGRectMake(0, topRow, width, height);
    self.blueView.frame = CGRectMake(width, topRow, width, height);
    self.greenView.frame = CGRectMake(0, secondRowY, width, height);
    self.yellowView.frame = CGRectMake(width, secondRowY, width, height);
    
}
- (void)layoutHorizontalRectangles
{
    CGFloat rectangleWidth = self.view.frame.size.width;
    CGFloat rectangleHeight = self.view.frame.size.width / 2.32;
    
    CGFloat topRow =  21;
    CGFloat secondRow = topRow + rectangleHeight;
    CGFloat thirdRow = secondRow + rectangleHeight;
    CGFloat fourthRow = thirdRow + rectangleHeight;
    
    self.redView.frame = CGRectMake(0, topRow, rectangleWidth, rectangleHeight);
    self.blueView.frame = CGRectMake(0, secondRow, rectangleWidth, rectangleHeight);
    self.greenView.frame = CGRectMake(0, thirdRow, rectangleWidth, rectangleHeight);
    self.yellowView.frame = CGRectMake(0, fourthRow, rectangleWidth, rectangleHeight);
}

- (void)layoutVerticalRectangles
{
    CGFloat rectangleWidth = self.view.frame.size.width / 4;
    CGFloat rectangleHeight = self.view.frame.size.height;
    
    CGFloat topRowY = 21;
    
    CGFloat firstColumnX = 0;
    CGFloat secondColumnX = firstColumnX + rectangleWidth;
    CGFloat thirdColumnX = secondColumnX + rectangleWidth;
    CGFloat fourthColumnX = thirdColumnX + rectangleWidth;
    
    self.redView.frame = CGRectMake(firstColumnX, topRowY, rectangleWidth, rectangleHeight);
    self.blueView.frame = CGRectMake(secondColumnX, topRowY, rectangleWidth, rectangleHeight);
    self.greenView.frame = CGRectMake(thirdColumnX, topRowY, rectangleWidth, rectangleHeight);
    self.yellowView.frame = CGRectMake(fourthColumnX, topRowY, rectangleWidth, rectangleHeight);
    
}
- (void)layoutDiagonalRectangles
{
    //Sets the size of the square
    CGFloat squareWidth = self.view.frame.size.width / 2;
    CGFloat squareHeight = self.view.frame.size.width / 2;
    
    //Sets each square's height relative to the window
    CGFloat topRowY = 64;
    CGFloat secondRowY = topRowY + squareHeight / 3;
    CGFloat thirdRowY = secondRowY + squareHeight / 3;
    CGFloat fourthRowY = thirdRowY  + squareHeight / 3;
    
    //Sets each square's horizontal left starting point
    CGFloat secondColumnX = squareWidth / 3;
    CGFloat thirdColumnX = secondColumnX + squareWidth / 3;
    CGFloat fourthColumnX = thirdColumnX + squareWidth / 3;
    
    //Make
    self.redView.frame = CGRectMake(0, topRowY, squareWidth, squareWidth);
    self.blueView.frame = CGRectMake(secondColumnX, secondRowY, squareWidth, squareWidth);
    self.greenView.frame = CGRectMake(thirdColumnX, thirdRowY, squareWidth, squareWidth);
    self.yellowView.frame = CGRectMake(fourthColumnX, fourthRowY, squareWidth, squareWidth);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
