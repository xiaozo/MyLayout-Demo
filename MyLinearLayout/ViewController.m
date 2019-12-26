//
//  ViewController.m
//  MyLinearLayout
//
//  Created by jsl on 2019/12/26.
//  Copyright © 2019 zlx. All rights reserved.
//

#import "ViewController.h"
#import "MyLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    [self LinearLayout_h];
    [self MyFrameLayout];
    
    
}

- (void)LinearLayout_v {
    MyLinearLayout *S = [MyLinearLayout linearLayoutWithOrientation:MyOrientation_Vert];
    //      S.myWidth = 120;
    S.subviewSpace = 15;
    S.leftPos.equalTo(@0.1);
    S.rightPos.equalTo(@0.2);
    
    UIView *A = [UIView new];
    A.myLeft = A.myRight = 5;
    A.myHeight = 40;
    [S addSubview:A];
    
    UIView *B = [UIView new];
    B.myLeft = 20;
    B.myWidth = B.myHeight = 40;
    [S addSubview:B];
    
    UIView *C = [UIView new];
    C.myRight = 40;
    C.myWidth = 50;
    C.myHeight = 40;
    [S addSubview:C];
    
    UIView *D = [UIView new];
    D.myLeft = D.myRight = 10;
    D.myHeight = 40;
    D.myBottom = 10;
    [S addSubview:D];
    
    [self.view addSubview:S];
    S.backgroundColor = [UIColor redColor];A.backgroundColor = [UIColor greenColor];
    B.backgroundColor = [UIColor blueColor];C.backgroundColor = [UIColor orangeColor];
    D.backgroundColor = [UIColor cyanColor];
    
    CGSize size = [S sizeThatFits:CGSizeMake(500, 0)];
    NSLog(@"sizeThatFits:%@",NSStringFromCGSize(size));
    
}

- (void)LinearLayout_h {
    
     MyLinearLayout *S = [MyLinearLayout linearLayoutWithOrientation:MyOrientation_Horz];
    S.subviewSpace = 15;
    S.myRight = S.myLeft = 5;
    S.myHeight = MyLayoutSize.wrap;
    [self.view addSubview:S];
    
    UIView *A = [UIView new];
       A.myLeft = 20;
        A.myWidth = 100;
       A.myHeight = 40;
       [S addSubview:A];
//
       UIView *B = [UIView new];
    B.myTop = 20;
     B.myWidth = 20;
        B.myHeight = 40;
    B.myBottom = 20;
       [S addSubview:B];
    
    S.backgroundColor = [UIColor redColor];
    A.backgroundColor = [UIColor greenColor];
       B.backgroundColor = [UIColor blueColor];
    
    CGSize size = [S sizeThatFits:CGSizeMake(500, 0)];
      NSLog(@"sizeThatFits:%@",NSStringFromCGSize(size));
}

- (void)RelativeLayout {
    MyRelativeLayout *S = [MyRelativeLayout new];
    S.widthSize.equalTo(@170);
    S.heightSize.equalTo(@150);
    [self.view addSubview:S];
    
    UIView *A = [UIView new];
    A.leftPos.equalTo(@20);
    A.topPos.equalTo(@20);
    A.widthSize.equalTo(@60);
    A.heightSize.equalTo(A.widthSize);
    [S addSubview:A];
    
    
    UIView *B = [UIView new];
    B.leftPos.equalTo(A.centerXPos);
    B.topPos.equalTo(A.bottomPos).offset(10);
    B.widthSize.equalTo(@60);
    B.heightSize.equalTo(A.heightSize);
    [S addSubview:B];
    
    UIView *C = [UIView new];
    C.centerYPos.equalTo(@0);
    C.centerXPos.equalTo(@0);
    C.heightSize.equalTo(@20);
    C.widthSize.equalTo(S.widthSize).add(-60);
    [S addSubview:C];
    
    S.backgroundColor = [UIColor redColor];
    A.backgroundColor = [UIColor greenColor];
    B.backgroundColor = [UIColor blueColor];
    C.backgroundColor = [UIColor blackColor];
    
}

- (void)MyFrameLayout {
    MyFrameLayout *S = [MyFrameLayout new];
    S.mySize = CGSizeMake(320,300);
    [self.view addSubview:S];
    
    UIView *A = [UIView new];
    A.mySize = CGSizeMake(40,40);
    [S addSubview:A];
    
    UIView *B = [UIView new];
    B.mySize = CGSizeMake(40,40);
    B.myCenterY = 0;
    [S addSubview:B];
    
    UIView *C = [UIView new];
    C.mySize = CGSizeMake(40,40);
    C.myBottom = 0;
    [S addSubview:C];
    
    UIView *D = [UIView new];
    D.mySize = CGSizeMake(40,40);
    D.myCenter = CGPointZero;
    [S addSubview:D];
    
    S.backgroundColor = [UIColor redColor];
    A.backgroundColor = [UIColor greenColor];
    B.backgroundColor = [UIColor blueColor];
    C.backgroundColor = [UIColor orangeColor];
    D.backgroundColor = [UIColor cyanColor];
    
}
@end
