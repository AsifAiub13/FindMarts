//
//  MapsViewController.m
//  Shenzhen Eye
//
//  Created by Asif Seraje on 12/25/17.
//  Copyright © 2017 serajeorg. All rights reserved.
//

#import "MapsViewController.h"
#define BETWEEN(value, min, max) (value < max && value > min)
@interface MapsViewController ()

@end

@implementation MapsViewController
UIImageView *imgV;
UIScrollView *scrollView2;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *img = [UIImage imageNamed:@"MapImage.jpg"];
    self.myImageView =[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, img.size.width, img.size.height)];
    self.myImageView.image=img;
    self.myImageView.contentMode = UIViewContentModeCenter;
    self.myScrollView.contentSize = img.size;
    self.myScrollView.contentMode = UIViewContentModeCenter;
    self.myScrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.myScrollView addSubview:self.myImageView];
    [self configureZoomScale];
    self.myScrollView.delegate=self;
    [self configureZoomScale];
    
    UITapGestureRecognizer *singleTap =  [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapping:)];
    [singleTap setNumberOfTapsRequired:1];
    [self.myScrollView addGestureRecognizer:singleTap];
    
    [self.view addSubview:self.myScrollView];
    
}
-(void)singleTapping:(UIGestureRecognizer *)recognizer {
    if(recognizer.state == UIGestureRecognizerStateRecognized)
    {
        CGPoint point = [recognizer locationInView:recognizer.view];
        //        NSLog(@"withoutZoom X pos: %f",point.x);
        //        NSLog(@"withoutZoom Y pos: %f",point.y);
        double tappedX = point.x/self.myScrollView.zoomScale;
        double tappedY = point.y/self.myScrollView.zoomScale;
        NSLog(@"withZoom tapped X pos: %lf",tappedX);
        NSLog(@"withZoom tapped Y pos: %lf",tappedY);
        
        if(BETWEEN(tappedX, 340.00, 360.00) && BETWEEN(tappedY, 270.00, 290.00)){
            NSLog(@"You tapped 13");
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"Market Watch 钟表市场"
                                         message:@"Address: building 505, zhenxing west road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区振兴西路505栋 Mechanical watches,electronic watches,wholesale and repair 机械手表，电子手表，批发维修"
                                         preferredStyle:UIAlertControllerStyleActionSheet];
            
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"OK"
                                        style:UIAlertActionStyleCancel
                                        handler:^(UIAlertAction * action) {
                                        }];
            
            
            UIViewController *viewController = [[UIViewController alloc]init];
            [viewController.view setBackgroundColor:[UIColor clearColor]];
            
            
            UIImage* imgMyImage = [UIImage imageNamed:@"13 ÷”±Ì –≥°.jpg"];
            UIImageView* ivMyImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, imgMyImage.size.width, imgMyImage.size.height-100)];
            [ivMyImageView setImage:imgMyImage];
            ivMyImageView.contentMode = UIViewContentModeCenter;
            ivMyImageView.clipsToBounds = YES;
            
            [viewController.view addSubview:ivMyImageView];
            [alert setValue:viewController forKey:@"contentViewController"];
            NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:self.view.frame.size.height * 0.9];
            NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth  multiplier:1 constant:self.view.frame.size.width * 2];
            
            [alert.view addConstraint:width];
            [alert.view addConstraint:height];
    
            [alert addAction:yesButton];
            [self presentViewController:alert animated:YES completion:nil];
        }else if (BETWEEN(tappedX, 470.00, 490.00) && BETWEEN(tappedY, 545.00, 560.00)){
            NSLog(@"You tapped 12");
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"High-Tech Electronics Market 高科德电子市场"
                                         message:@"Address: no.159 - 29 Zhenhua road, Futian district, Shenzhen 地址：深圳市福田区振华路159-29号 Branded retail electronic components,brand integration,SMT components,branded discrete components,electronic tool galleries,instruments,meters,industrial control system devices 品牌电子元器件零售、品牌集成、贴片元器件；品牌分立元件；电子工具、仪器、仪表展区，工业控制系统器件"
                                         preferredStyle:UIAlertControllerStyleActionSheet];
            
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"OK"
                                        style:UIAlertActionStyleCancel
                                        handler:^(UIAlertAction * action) {
                                        }];
            
            
            UIViewController *viewController = [[UIViewController alloc]init];
            [viewController.view setBackgroundColor:[UIColor clearColor]];
            
            
            UIImage* imgMyImage = [UIImage imageNamed:@"12 ∏ﬂø∆µ¬µÁ◊” –≥°.jpg"];
            UIImageView* ivMyImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, imgMyImage.size.width, imgMyImage.size.height-100)];
            [ivMyImageView setImage:imgMyImage];
            ivMyImageView.contentMode = UIViewContentModeCenter;
            ivMyImageView.clipsToBounds = YES;
            
            [viewController.view addSubview:ivMyImageView];
            [alert setValue:viewController forKey:@"contentViewController"];
            NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:self.view.frame.size.height * 0.9];
            NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth  multiplier:1 constant:self.view.frame.size.width * 2];
            
            [alert.view addConstraint:width];
            [alert.view addConstraint:height];
            
            [alert addAction:yesButton];
            [self presentViewController:alert animated:YES completion:nil];
        }else if (BETWEEN(tappedX, 515.00, 530.00) && BETWEEN(tappedY, 550.00, 575.00)){
            NSLog(@"You tapped 11");
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"Hua Qiang Plaza-office Building 华强广场"
                                         message:@"Address: no 1019 Huaqiang north road, Futian district, Shenzhen city 地址：深圳市福田区华强北路1019号 Base class electronic products exhibition area;electronic components exhibition area,  connectors, cables, instrumentation and other supporting electronic products exhibition area 基础类电子产品展销区，电脑、单反相机、行车记录仪、导航等消费电子产品展销区，接插件、线缆、仪器仪表等配套电子产品展销区"
                                         preferredStyle:UIAlertControllerStyleActionSheet];
            
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"OK"
                                        style:UIAlertActionStyleCancel
                                        handler:^(UIAlertAction * action) {
                                        }];
            
            
            UIViewController *viewController = [[UIViewController alloc]init];
            [viewController.view setBackgroundColor:[UIColor clearColor]];
            
            
            UIImage* imgMyImage = [UIImage imageNamed:@"11 ª™«øπ„≥°.jpg"];
            UIImageView* ivMyImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, imgMyImage.size.width, imgMyImage.size.height-100)];
            [ivMyImageView setImage:imgMyImage];
            ivMyImageView.contentMode = UIViewContentModeCenter;
            ivMyImageView.clipsToBounds = YES;
            
            [viewController.view addSubview:ivMyImageView];
            [alert setValue:viewController forKey:@"contentViewController"];
            NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:self.view.frame.size.height * 0.9];
            NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth  multiplier:1 constant:self.view.frame.size.width * 2];
            
            [alert.view addConstraint:width];
            [alert.view addConstraint:height];
            
            [alert addAction:yesButton];
            [self presentViewController:alert animated:YES completion:nil];
        }else if (BETWEEN(tappedX, 470.00, 490.00) && BETWEEN(tappedY, 545.00, 560.00)){
            NSLog(@"You tapped 12");
            UIAlertController * alert = [UIAlertController
                                         alertControllerWithTitle:@"High-Tech Electronics Market 高科德电子市场"
                                         message:@"Address: no.159 - 29 Zhenhua road, Futian district, Shenzhen 地址：深圳市福田区振华路159-29号 Branded retail electronic components,brand integration,SMT components,branded discrete components,electronic tool galleries,instruments,meters,industrial control system devices 品牌电子元器件零售、品牌集成、贴片元器件；品牌分立元件；电子工具、仪器、仪表展区，工业控制系统器件"
                                         preferredStyle:UIAlertControllerStyleActionSheet];
            
            UIAlertAction* yesButton = [UIAlertAction
                                        actionWithTitle:@"OK"
                                        style:UIAlertActionStyleCancel
                                        handler:^(UIAlertAction * action) {
                                        }];
            
            
            UIViewController *viewController = [[UIViewController alloc]init];
            [viewController.view setBackgroundColor:[UIColor clearColor]];
            
            
            UIImage* imgMyImage = [UIImage imageNamed:@"12 ∏ﬂø∆µ¬µÁ◊” –≥°.jpg"];
            UIImageView* ivMyImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, imgMyImage.size.width, imgMyImage.size.height-100)];
            [ivMyImageView setImage:imgMyImage];
            ivMyImageView.contentMode = UIViewContentModeCenter;
            ivMyImageView.clipsToBounds = YES;
            
            [viewController.view addSubview:ivMyImageView];
            [alert setValue:viewController forKey:@"contentViewController"];
            NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:self.view.frame.size.height * 0.9];
            NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth  multiplier:1 constant:self.view.frame.size.width * 2];
            
            [alert.view addConstraint:width];
            [alert.view addConstraint:height];
            
            [alert addAction:yesButton];
            [self presentViewController:alert animated:YES completion:nil];
        }else if (BETWEEN(tappedX, 400.00, 430.00) && BETWEEN(tappedY, 590.00, 610.00)){//10
            [self showAlertForTappedPosition:@"New Asia Guoli Building 新亚洲国利大厦" messageText:@"Address: 18 zhonghang road, Futian district, Shenzhen city 地址：深圳市福田区中航路18 Stores,supermarket,ICs,electronic company offices 天虹超市，IC，电子元器件公司办公室" imageNameOfalert:@"10 –¬—«÷ﬁπ˙¿˚¥Ûœ√.JPG"];
        }else if (BETWEEN(tappedX, 580.00, 610.00) && BETWEEN(tappedY, 600.00, 650.00)){//9
            [self showAlertForTappedPosition:@"Hua Qiang Jewelry World 华强珠宝世界" messageText:@"Address: floor 1 - 3, Huaqiang square, Huaqiang north road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区华强北路华强广场1-3层 Diamonds,gold products,jewelry 钻戒，黄金制品，珠宝类" imageNameOfalert:@"9 ª™«ø÷È±¶ ¿ΩÁ.jpg"];
        }else if (BETWEEN(tappedX, 410.00, 440.00) && BETWEEN(tappedY, 620.00, 670.00)){//8
            [self showAlertForTappedPosition:@"New Asia Electronic Mall 2 新亚洲电子商城二期" messageText:@"Address: no.18 - 2 zhonghang road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区中航路18-2号 Branded retail electronic components,brand integration,SMT components,branded discrete components,electronic tool galleries,instruments,meters,industrial control system devices 品牌电子元器件零售、品牌集成、贴片元器件；品牌分立元件；电子工具、仪器、仪表展区，工业控制系统器件" imageNameOfalert:@"8 –¬—«÷ﬁµÁ◊”…Ã≥«∂˛∆⁄.JPG"];
        }else if (BETWEEN(tappedX, 510.00, 540.00) && BETWEEN(tappedY, 680.00, 720.00)){//7
            [self showAlertForTappedPosition:@"Huaqiang Plaza-Office Building D 华强广场D座" messageText:@"Address: no 1019 Huaqiang north road, Futian district, Shenzhen city 地址：深圳市福田区华强北路1019号 Branded retail electronic components,brand integration,SMT components,branded discrete components,electronic tool galleries,instruments,meters,industrial control system devices品牌电子元器件零售、品牌集成、贴片元器件；品牌分立元件；电子工具、仪器、仪表展区，工业控制系统器件" imageNameOfalert:@"7 ª™«øπ„≥°D◊˘.JPG"];
        }else if (BETWEEN(tappedX, 390.00, 430.00) && BETWEEN(tappedY, 700.00, 730.00)){//6
            [self showAlertForTappedPosition:@"New Asia Electronic Mall 1 新亚洲电子商城一期" messageText:@"Address: junction of zhenzhong road and zhonghang road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区振中路与中航路交汇处 Branded retail electronic components,brand integration,SMT components,branded discrete components,electronic tool galleries,instruments,meters,industrial control system devices 品牌电子元器件零售、品牌集成、贴片元器件；品牌分立元件；电子工具、仪器、仪表展区，工业控制系统器件" imageNameOfalert:@"6 –¬—«÷ﬁµÁ◊”…Ã≥«.jpg"];
        }else if (BETWEEN(tappedX, 400.00, 445.00) && BETWEEN(tappedY, 750.00, 800.00)){//5
            [self showAlertForTappedPosition:@"Duhui 100 Electronic City 都会100大厦" messageText:@"Address: No.4 zhonghang road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区中航路4号 Operation of electronic components and related tools,instruments and accessories 经营电子元器件及相关的工具、仪器、仪表和辅料" imageNameOfalert:@"5 ∂ºª·100¥Ûœ√.JPG"];
        }else if (BETWEEN(tappedX, 500.00, 550.00) && BETWEEN(tappedY, 740.00, 780.00)){//4
            [self showAlertForTappedPosition:@"Hua Qiang Electronic World-Digital Mall 华强电子世界2、3栋" messageText:@"Address: 1c049, floor 1, Huaqiang sandian Jiahe building, shennan middle road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区深南中路华强三店佳和大厦1楼1C049 Comprehensive professional electronic trading market,business electronics,security,computer,communications,digital,integrated LED products stores,aerial aircraft,electronic music keyboards 综合电子专业交易市场，经营电子、安防、电脑、通讯、数码、LED等产品综合性实体卖场，航拍飞机，电子琴" imageNameOfalert:@"4 ª™«øµÁ◊” ¿ΩÁ2°¢3∂∞.jpg"];
        }else if (BETWEEN(tappedX, 400.00, 460.00) && BETWEEN(tappedY, 810.00, 870.00)){//3
            [self showAlertForTappedPosition:@"JiaHe Huaqiang Building 佳和华强大厦" messageText:@"Address: no 3006 shennan middle road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区深南中路3006号 IC and electronic components in a comprehensive shopping mall IC和电子元器件为一体的综合性商场" imageNameOfalert:@"3 º—∫Õª™«ø¥Ûœ√.JPG"];
        }else if (BETWEEN(tappedX, 560.00, 590.00) && BETWEEN(tappedY, 890.00, 920.00)){//2
            [self showAlertForTappedPosition:@"Hua Qiang Electronic World-Digital Mall 华强电子世界" messageText:@"Address: floor 1 - 4, building 1, Huaqiang property, no.1001 Huaqiang north road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区华强北路1001号华强物业1栋1-4层 Branded retail electronic components,brand integration,SMT components,branded discrete components,electronic tool galleries,instruments,meters,industrial control system devices 品牌电子元器件零售、品牌集成、贴片元器件；品牌分立元件；电子工具、仪器、仪表展区，工业控制系统器件" imageNameOfalert:@"2 ª™«øµÁ◊” ¿ΩÁ.jpg"];
        }else if (BETWEEN(tappedX, 700.00, 740.00) && BETWEEN(tappedY, 880.00, 920.00)){//1
            [self showAlertForTappedPosition:@"SEG Plaza 赛格广场" messageText:@"Address: 1002 Huaqiang north road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区华强北路1002号 Electronic components,connectors,wire and cable,instruments,meters,tools,hardware,switched power supplies, IT products,branded electronic products,computer peripherals and consumable materials,computer software. communications,networkong,security,audio-visual and other products 电子元器件，接插件，线材，仪器，仪表，工具，五金，开关电源，IT精品店，品牌电子产品，电脑外设与耗材，电脑软件、通信、网络、安防、视听等产品" imageNameOfalert:@"1 »¸∏Òπ„≥°.jpg"];
        }else if (BETWEEN(tappedX, 690.00, 720.00) && BETWEEN(tappedY, 970.00, 990.00)){//36
            [self showAlertForTappedPosition:@"Chiwei Building 赤尾大厦" messageText:@"Address: 2093 shennan middle road, Futian district, Shenzhen city 地址：深圳市福田区深南中路2093号 Mobile phones, accessories, refurbished phones, and other electronic communications products 手机，手机配件，翻新手机，等电子通讯产品" imageNameOfalert:@"36 ≥‡Œ≤¥Ûœ√.JPG"];
        }else if (BETWEEN(tappedX, 830.00, 870.00) && BETWEEN(tappedY, 970.00, 1100.00)){//37
            [self showAlertForTappedPosition:@"Pangyuan Communication Market 庞源通讯市场" messageText:@"Address: no 2081 shennan middle road, Shenzhen city 地址：深圳市深南中路2081号 Mobile phones, accessories, refurbished phones, and other electronic communications products 手机，手机配件，翻新手机，等电子通讯产品" imageNameOfalert:@"37 ≈”‘¥Õ®—∂ –≥°.jpg"];
        }else if (BETWEEN(tappedX, 620.00, 670.00) && BETWEEN(tappedY, 800.00, 860.00)){//33
            [self showAlertForTappedPosition:@"B Huitong Security Digital Market 汇通安防数码港" messageText:@"Address: Beijing building, no 168 zhenzhong road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区振中路168号附近京华大厦 Mobile accessories, portable audio, digital products, computer accessories, office equipment /consumables, network equipment, storage equipment/ card reading,sound equipment, monitoring equipment, video on demand 手机配件，便携音响，数码产品，电脑配件，办公设备/耗材，网络设备，存储/读卡设备，音箱设备，监控设备，点歌系统" imageNameOfalert:@"33 ª„Õ®∞≤∑¿ ˝¬Î∏€.JPG"];
        }else if (BETWEEN(tappedX, 790.00, 830.00) && BETWEEN(tappedY, 830.00, 860.00)){//34
            [self showAlertForTappedPosition:@"B Huitong Security Digital Market 汇通安防数码港" messageText:@"Address: 2070 shennan middle road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区深南中路2070号 Mobile power products including nesting,speakers,TF card, U disk, self-timers,3d glasses,MP3,MP4,mini fans,batteries, mobile power supplies, mobile phone chargers, wireless headsets, LOGO products processing 移动电源成品和套料，数据线，音箱，TF卡，U盘，自拍杆，3D眼镜，MP3，MP4，迷你风扇，电池，移动电源和TF卡包装，手机无线充电器，耳机，产品LOGO加工" imageNameOfalert:@"34 µÁ◊”ø∆ºº¥Ûœ√.jpg"];
        }else if (BETWEEN(tappedX, 720.00, 780.00) && BETWEEN(tappedY, 730.00, 770.00)){//35
            [self showAlertForTappedPosition:@"Mini Port 迷你港" messageText:@"Address: No.29 - 9 tongsha road, Nanshan district, Shenzhen city, Guangdong province 地址：广东省深圳市南山区同沙路29-9号 Battery, cables, DVDs, TF cards, U disks, speakers 电池，数据线，DVD，TF卡，U盘，音箱" imageNameOfalert:@"35 √‘ƒ„∏€.jpg"];
        }else if (BETWEEN(tappedX, 700.00, 750.00) && BETWEEN(tappedY, 700.00, 740.00)){//31
            [self showAlertForTappedPosition:@"SEG Communication Market 赛格通信市场" messageText:@"Address: saige industrial building, 1034 Huaqiang north road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区华强北路1034号赛格工业大厦 Toughened phone membranes, mobile phone shells, mobile power supplies, cable, TF cards, speakers, mobile phone holders, tablet computer protective shells, self-timers , electronic cigarettes, sports cameras, mobile phone LCDs , mobile phone accessories 手机钢化膜，手机壳，移动电源，数据线，TF卡，音箱，手机支架，平板电脑保护壳，自拍杆，电子烟，运动相机，手机液晶屏，手机配件" imageNameOfalert:@"31 »¸∏ÒÕ®–≈ –≥°.JPG"];
        }else if (BETWEEN(tappedX, 790.00, 840.00) && BETWEEN(tappedY, 650.00, 710.00)){//32
            [self showAlertForTappedPosition:@"Longsheng Mobile Phone Wholesale Center 龙胜配件城AB座" messageText:@"Address: No.1, huafa north road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区华发北路1号 Toughened phone membranes, mobile phone shells, mobile power supplies, cable, TF cards, U disks,speakers, mobile phone holders, tablets,protective shells, self-timers,headset 手机钢化膜，手机壳，移动电源，数据线，TF卡，U盘，音箱，手机支架，平板电脑保护壳，自拍杆，耳机" imageNameOfalert:@"32 ¡˙ §≈‰º˛≥«AB◊˘.jpg"];
        }else if (BETWEEN(tappedX, 620.00, 670.00) && BETWEEN(tappedY, 670.00, 720.00)){//29
            [self showAlertForTappedPosition:@"Saige kang Lok Building 赛格康乐大厦" messageText:@"Address: 1026 Huaqiang north road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区华强北路1026号 Toughened phone membranes, mobile phone shells, mobile power supplies, cable, TF cards, U disks,speakers, mobile phone holders, tablets,protective shells, self-timers 手机钢化膜，手机壳，移动电源，数据线，TF卡，U盘，音箱，手机支架，平板电脑保护壳，自拍杆" imageNameOfalert:@"29 »¸∏Òøµ¿÷¥Ûœ√.JPG"];
        }else if (BETWEEN(tappedX, 750.00, 790.00) && BETWEEN(tappedY, 670.00, 710.00)){//30b
            [self showAlertForTappedPosition:@"B Huitong Security Digital Market 汇通安防数码港" messageText:@"Address: Beijing building, no 168 zhenzhong road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区振中路168号附近京华大厦 Security equipment: cameras, fire protection equipment 安防设备：摄像头、防火设备" imageNameOfalert:@"30-2 ª„Õ®∞≤∑¿ ˝¬Î∏€.jpg"];
        }else if (BETWEEN(tappedX, 750.00, 790.00) && BETWEEN(tappedY, 620.00, 660.00)){//30a
            [self showAlertForTappedPosition:@"A Pacific Security Professional Market 太平洋安防专业市场" messageText:@"Address: building 3, jinghua compound, 175 zhenzhong road, Huaqiang north street, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区华强北街道振中路175号京华大院3栋Intercoms, monitoring equipment, entrance guards,theft protection, fire and blast protection, GPS, traffic safety, intelligent buildings, parking management, and other security communication products 对讲机、监控器材、门禁防盗、防火防爆、GPS、交通安全、楼宇智能、停车场管理等安防通讯产品" imageNameOfalert:@"30-1 Ã´∆Ω—Û∞≤∑¿ –≥°.jpg"];
        }else if (BETWEEN(tappedX, 650.00, 690.00) && BETWEEN(tappedY, 620.00, 650.00)){//27
            [self showAlertForTappedPosition:@"SEG Economy Building 赛格经济大厦" messageText:@"Address: seg economic building, 1046 Huaqiang north road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区华强北路1046号赛格经济大厦 Toughened phone membranes, mobile phone shells, mobile power supplies, cable, TF cards, speakers, mobile phone holders, tablet computer protective shells, self-timers , electronic cigarettes, sports cameras, mobile phone LCDs , mobile phone accessories 手机钢化膜，手机壳，移动电源，数据线，TF卡，音箱，手机支架，平板电脑保护壳，自拍杆，电子烟，运动相机，手机液晶屏，手机配件" imageNameOfalert:@"27 »¸∏Òæ≠º√¥Ûœ√.JPG"];
        }else if (BETWEEN(tappedX, 780.00, 820.00) && BETWEEN(tappedY, 560.00, 600.00)){//28
            [self showAlertForTappedPosition:@"Longsheng Mobile Phone Wholesale Center 龙胜配件城" messageText:@"Address: No. 5 - 12 huafa north road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区华发北路5-12号 Toughened phone membranes, mobile phone shells, mobile power supplies, cable, TF cards, U disks,speakers, mobile phone holders,tablets,protective shells, self-timers 手机钢化膜，手机壳，移动电源，数据线，TF卡，U盘，音箱，手机支架，平板电脑保护壳，自拍杆" imageNameOfalert:@"28 ¡˙ §≈‰º˛≥«.jpg"];
        }else if (BETWEEN(tappedX, 650.00, 690.00) && BETWEEN(tappedY, 520.00, 570.00)){//26
            [self showAlertForTappedPosition:@"Cyber Digital Square 广博数码广场" messageText:@"Address: Huaqiang beisaige science park, Futian district, Shenzhen city, Guangdong province 地址：广东深圳市福田区华强北赛格科技园 Smart phones, branded computers, laptops, digital products, computer accessories, digital services 行货手机，品牌电脑、手提、数码产品、电脑配件、数码维修" imageNameOfalert:@"26 π„≤© ˝¬Îπ„≥°.JPG"];
        }else if (BETWEEN(tappedX, 670.00, 710.00) && BETWEEN(tappedY, 470.00, 510.00)){//25
            [self showAlertForTappedPosition:@"International Electronic City Foreign Trade Wholesale Market 国际电子城外贸批发市场" messageText:@"Address: 150 meters southeast of zhenzhong 3rd street and zhenzhong road intersection, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区振中三街与振中路交叉口东南150米 Branded mobile phones, wireless intercoms, smart security devices, electronic communication instruments and equipment , home appliances,communication products,branded home theater, professional stage audio, cameras, video cameras, video on demand ,polymer batteries, portable power,projectors,mini audio 品牌手机、无线对讲机、安防智能设备、通讯电子仪器及设备、通讯产品附件、家电；品牌家庭影院、专业舞台音响、照相机、摄像机、点歌台、移动电源、投影仪、聚合物电池、迷你音响" imageNameOfalert:@"25 π˙º µÁ◊”≥«Õ‚√≥≈˙∑¢ –≥°.jpg"];
        }else if (BETWEEN(tappedX, 680.00, 720.00) && BETWEEN(tappedY, 430.00, 470.00)){//24 doneee
            [self showAlertForTappedPosition:@"Hualianfa Building 华联发大厦" messageText:@"Address: no.2006 Huaqiang north road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区华强北路2006号 Domestic mobile phone brand offices, other offices 国内品牌手机办公室、仓库" imageNameOfalert:@"24 ª™¡™∑¢¥Ûœ√ .jpg"];
        }else if (BETWEEN(tappedX, 770.00, 810.00) && BETWEEN(tappedY, 350.00, 390.00)){//19
            [self showAlertForTappedPosition:@"Zhen Hua Mobile Phone City 振华手机城" messageText:@"Address: floor 1 - 4, building 416, huafa north road, Huaqiang north commercial center 地址：华强北商业中心华发北路416栋建筑群的1-4层 primarily cable wholesale 数据线批发为主" imageNameOfalert:@"19 ’Òª™ ÷ª˙≥«.jpg"];
        }else if (BETWEEN(tappedX, 630.00, 670.00) && BETWEEN(tappedY, 350.00, 390.00)){//18
            [self showAlertForTappedPosition:@"Yuan Wang Digital Mall 远望数码商城" messageText:@"Address: no.2014 Huaqiang north road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区华强北路2014号 The world 's major brands of mobile phones, all kinds of mobile phone accessories and products 世界各大全新品牌手机，平板电脑，各类手机配件和产品，手机维修" imageNameOfalert:@"18 ‘∂Õ˚ ˝¬Î…Ã≥«.jpg"];
        }else if (BETWEEN(tappedX, 720.00, 780.00) && BETWEEN(tappedY, 730.00, 770.00)){//26
            [self showAlertForTappedPosition:@"Cyber Digital Square 广博数码广场" messageText:@"Address: Huaqiang beisaige science park, Futian district, Shenzhen city, Guangdong province 地址：广东深圳市福田区华强北赛格科技园 Smart phones, branded computers, laptops, digital products, computer accessories, digital services 行货手机，品牌电脑、手提、数码产品、电脑配件、数码维修" imageNameOfalert:@"26 π„≤© ˝¬Îπ„≥°.JPG"];
        }else if (BETWEEN(tappedX, 740.00, 780.00) && BETWEEN(tappedY, 310.00, 340.00)){
            [self showAlertForTappedPosition:@"Manhattan Digital Communication Plaza / (shopping mall) 曼哈通讯数码（购物）广场" messageText:@"Address: 2022 Huaqiang north road, Futian district, Shenzhen 地址:深圳福田区华强北路2022 China's mobile phones and accessories wholesale and retail, flash memory CARDS, MP3, MP4, digital cameras,digital services,newsletter design,PSP video games,photographic equipment,audio equipment, etc 国产手机及配件的零售批发，TF卡、MP3、MP4、数码相机等，内设手机维修、数码维修、通迅设计、电玩PSP、摄影器材、音响设备等" imageNameOfalert:@"17 ¬¸π˛ ˝¬Îπ„≥°.jpg"];
        }else if (BETWEEN(tappedX, 660.00, 700.00) && BETWEEN(tappedY, 220.00, 260.00)){//15
            [self showAlertForTappedPosition:@"Wan Shang Computer City 万商电脑城" messageText:@"Address: No. 3002 Huaqiang north road, Futian district, Shenzhen city, Guangdong province地址：广东省深圳市福田区华强北路3002号 Business computers,electrical appliances,communication products and various game consoles,video game accessories,HI-FI speakers 经营电脑、电器、通讯产品及各种游戏机，电玩配件，音响 HI-FI" imageNameOfalert:@"15 ÕÚ…ÃµÁƒ‘≥«.jpg"];
        }else if (BETWEEN(tappedX, 780.00, 820.00) && BETWEEN(tappedY, 210.00, 250.00)){//16
            [self showAlertForTappedPosition:@"Seg Science Park Building 4 赛格科技园4栋" messageText:@"Address: near zhenxing road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区振兴路附近 Office,foreign and domestic logistics companies 写字楼，办公室，国内外物流公司" imageNameOfalert:@"16 »¸∏Òø∆ºº‘∞4∂∞.JPG"];
        }else if (BETWEEN(tappedX, 640.00, 680.00) && BETWEEN(tappedY, 110.00, 140.00)){//14
            [self showAlertForTappedPosition:@"Seg Science Park Building 2 赛格科技园2栋" messageText:@"Address: east, building 2, seg science park, Futian district, Shenzhen city, Guangdong province ( south of St. ting yuan hotel, central China ) 地址：广东省深圳市福田区赛格科技园二栋东(中洲圣廷苑酒店南) Offices 写字楼，办公室" imageNameOfalert:@"14 »¸∏Òø∆ºº‘∞∂˛∂∞.jpg"];
        }else if (BETWEEN(tappedX, 800.00, 840.00) && BETWEEN(tappedY, 410.00, 450.00)){//23
            [self showAlertForTappedPosition:@"Ming Tong Digital City 明通数码城" messageText:@"Address: no.23, huafa north road, Futian district, Shenzhen city 地址：深圳市福田区华发北路23号 Mobile phone wholesale market 国产手机批发市场，手机配件批发" imageNameOfalert:@"23 √˜Õ® ˝¬Î≥«.jpg"];
        }else if (BETWEEN(tappedX, 990.00, 1120.00) && BETWEEN(tappedY, 320.00, 360.00)){//21
            [self showAlertForTappedPosition:@"Hua Fa Building 华发大厦" messageText:@"Address: Address: No.33, zhenxing road, Futian district, Shenzhen city 地址：深圳市福田区振兴路33号 Domestic mobile phone brand offices, other office 国内品牌手机办公室，写字楼" imageNameOfalert:@"21 ª™∑¢¥Ûœ√.JPG"];
        }else if (BETWEEN(tappedX, 930.00, 950.00) && BETWEEN(tappedY, 340.00, 380.00)){//20
            [self showAlertForTappedPosition:@"Sang Da Ya Yue 桑达雅苑" messageText:@"Address: south of intersection of huafa north road and zhenxing road, Futian district, Shenzhen city 地址：深圳市福田区华发北路与振兴路交叉口南侧 Office,foreign and domestic logistics companies 写字楼，办公室，国内外物流公司" imageNameOfalert:@"20 …£¥Ô—≈‘∑.jpg"];
        }else if (BETWEEN(tappedX, 920.00, 945.00) && BETWEEN(tappedY, 460.00, 480.00)){//22
            [self showAlertForTappedPosition:@"SED Electronic Communications Market 桑达电子通讯市场" messageText:@"Address: no.46, huafa north road 地址：华发北路46号 Tablets, all kinds of wearable electronic products, car accessories 平板电脑，各类穿戴产品，平衡车" imageNameOfalert:@"22 …£¥ÔµÁ◊”Õ®—∂ –≥°.jpg"];
        }else if (BETWEEN(tappedX, 910.00, 940.00) && BETWEEN(tappedY, 1020.00, 1060.00)){//38
            [self showAlertForTappedPosition:@"Fei Yang Times 飞代扬时" messageText:@"Address: huafa south road, Futian district, Shenzhen city, Guangdong province 地址： 广东省深圳市福田区华发南路 Second - hand mobile phone market, branded second-hand mobile phone wholesale market, all kinds of repair and replacement 二手手机市场，品牌二手手机批发市场，各类维修置换" imageNameOfalert:@"38 ∑…¥˙—Ô ±.jpg"];
        }else if (BETWEEN(tappedX, 1010.00, 1199.00) && BETWEEN(tappedY, 1020.00, 1060.00)){
            [self showAlertForTappedPosition:@"E Tongtianbi Communication Market E 通双通通讯市场" messageText:@"Address: huaken building, shennan middle road, nanyuan street, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区南园街道深南中路华垦大厦 International lesser known brand second - hand mobile phones, accessories 国际冷门盘品牌二手手机，配件" imageNameOfalert:@"40 Õ®À´Õ®Õ®—∂ –≥°.jpg"];
        }else if (BETWEEN(tappedX, 950.00, 990.00) && BETWEEN(tappedY, 1000.00, 1030.00)){
            //unused 39
        }else if (BETWEEN(tappedX, 1300.00, 1390.00) && BETWEEN(tappedY, 750.00, 780.00)){
            //unused 1
        }else if (BETWEEN(tappedX, 1410.00, 1440.00) && BETWEEN(tappedY, 760.00, 790.00)){
            //unused 2
        }else if (BETWEEN(tappedX, 1450.00, 1470.00) && BETWEEN(tappedY, 760.00, 790.00)){
            //unused 3
        }else if (BETWEEN(tappedX, 1350.00, 1390.00) && BETWEEN(tappedY, 730.00, 760.00)){
            //unused 5
        }else if (BETWEEN(tappedX, 1410.00, 1440.00) && BETWEEN(tappedY, 730.00, 750.00)){
            //unused 6
        }else if (BETWEEN(tappedX, 1450.00, 1470.00) && BETWEEN(tappedY, 710.00, 740.00)){
            //unused 7
        }else if (BETWEEN(tappedX, 950.00, 970.00) && BETWEEN(tappedY, 970.00, 1000.00)){//39A
            [self showAlertForTappedPosition:@"A Longsheng Communication Market A 龙胜通讯市场" messageText:@"Address: 2061 shennan middle road, Futian district, Shenzhen city, Guangdong province地址：广东省深圳市福田区深南中路2061号 Recycling Second - hand mobile phones and mobile phone LCD screens, main boards, cables, mobile phone batteries, speakers, mobile phones,mobile phone service machines, mobile phone shells, mobile phone LOGO processing 二手手机回收，手机液晶屏、主板、数据线、手机电池、喇叭、手机维修、手机维修机器、手机外壳、手机LOGO加工" imageNameOfalert:@"39-1 ¡˙ §Õ®—∂ –≥°.JPG"];
        }else if (BETWEEN(tappedX, 990.00, 1050.00) && BETWEEN(tappedY, 980.00, 995.00)){//39B
            [self showAlertForTappedPosition:@"B Tongtiandi Communication Market B 通天地通讯市场" messageText:@"Address: 2071 shennan middle road, Futian district, Shenzhen city 地址：深圳市福田区深南中路2071号 Recycling Second - hand mobile phones and mobile phone LCD screens, main boards, cables, mobile phone batteries, speakers, mobile phones,mobile phone service machines, mobile phone shells, mobile phone LOGO processing二手手机回收，手机液晶屏、主板、数据线、手机电池、喇叭、手机维修、手机维修机器、手机外壳、手机LOGO加工" imageNameOfalert:@"39-2 Õ®ÃÏµÿÕ®—∂ –≥°.JPG"];
        }else if (BETWEEN(tappedX, 1030.00, 1060.00) && BETWEEN(tappedY, 982.00, 995.00)){//39C
            [self showAlertForTappedPosition:@"C Kinglong Communication Market C 金龙通讯市场" messageText:@"Address: 2069 shennan middle road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区深南中路2069号 Recycling Second - hand mobile phones and mobile phone LCD screens, main boards, cables, mobile phone batteries, speakers, mobile phones,mobile phone service machines, mobile phone shells, mobile phone LOGO processing 二手手机回收，手机液晶屏、主板、数据线、手机电池、喇叭、手机维修、手机维修机器、手机外壳、手机LOGO加工" imageNameOfalert:@"39-3 Ω¡˙Õ®—∂ –≥°.JPG"];
        }else if (BETWEEN(tappedX, 1080.00, 1100.00) && BETWEEN(tappedY, 970.00, 1000.00)){//39D
            [self showAlertForTappedPosition:@"D Shuanglong Communication Market D 双龙通讯市场" messageText:@"Address: floor 1, huaken building, 2073 shennan middle road, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区深南中路2073号华垦大厦1层 Recycling Second - hand mobile phones and mobile phone LCD screens, main boards, cables, mobile phone batteries, speakers, mobile phones,mobile phone service machines, mobile phone shells, mobile phone LOGO processing 二手手机回收，手机液晶屏、主板、数据线、手机电池、喇叭、手机维修、手机维修机器、手机外壳、手机LOGO加工" imageNameOfalert:@"39-4 À´¡˙Õ®—∂ –≥°.JPG"];
        }else if (BETWEEN(tappedX, 1130.00, 1160.00) && BETWEEN(tappedY, 960.00, 990.00)){//39E
            [self showAlertForTappedPosition:@"E Tongtianbi Communication Market E 通双通通讯市场" messageText:@"Address: huaken building, shennan middle road, nanyuan street, Futian district, Shenzhen city, Guangdong province 地址：广东省深圳市福田区南园街道深南中路华垦大厦 Recycling Second - hand mobile phones and mobile phone LCD screens, main boards, cables, mobile phone batteries, speakers, mobile phones,mobile phone service machines, mobile phone shells, mobile phone LOGO processing 二手手机回收，手机液晶屏、主板、数据线、手机电池、喇叭、手机维修、手机维修机器、手机外壳、手机LOGO加工" imageNameOfalert:@"39-5 Õ®À´Õ®Õ®—∂ –≥°.jpg"];
        }
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) showAlertForTappedPosition:(NSString*)titleText messageText:(NSString*)messageText imageNameOfalert:(NSString*) imageNameOfalert{
    
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:titleText
                                 message:messageText
                                 preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"OK"
                                style:UIAlertActionStyleCancel
                                handler:^(UIAlertAction * action) {
                                }];
    
    
    UIViewController *viewController = [[UIViewController alloc]init];
    [viewController.view setBackgroundColor:[UIColor clearColor]];
    
    
    UIImage* imgMyImage = [UIImage imageNamed:imageNameOfalert];
    UIImageView* ivMyImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, imgMyImage.size.width, imgMyImage.size.height-100)];
//    ivMyImageView.contentMode=UIViewContentModeScaleAspectFit;
//    CGPoint centerImageView = ivMyImageView.center;
//    centerImageView.x = self.view.center.x-300;
//    ivMyImageView.center = centerImageView;
    ivMyImageView.contentMode=UIViewContentModeCenter;
    [ivMyImageView setImage:imgMyImage];
//    ivMyImageView.contentMode = UIViewContentModeCenter;
//    ivMyImageView.clipsToBounds = YES;
    
    [viewController.view addSubview:ivMyImageView];
    [alert setValue:viewController forKey:@"contentViewController"];
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:self.view.frame.size.height * 0.9];
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:alert.view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth  multiplier:1 constant:self.view.frame.size.width * 2];
    
    [alert.view addConstraint:width];
    [alert.view addConstraint:height];
    
    [alert addAction:yesButton];
    [self presentViewController:alert animated:YES completion:nil];
    
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


//************************ NEW **************************
//DELEGATE METHOD - this is called when the bounds of the scrollview changes.
//this is the case when the devices is rotate to a different orientation
//we can use this method to adjust our zoom scale again to fit the orientation
-(void) viewWillLayoutSubviews{
}

//************************ NEW **************************
/** define a custom method to resize the content of the scroll**/
-(void) configureZoomScale{
    
    CGFloat xZoomScale = self.myScrollView.bounds.size.width/self.myImageView.bounds.size.width;
    CGFloat yZoomScale = self.myScrollView.bounds.size.height/self.myImageView.bounds.size.height;
    CGFloat minZoomScale = MAX(xZoomScale,yZoomScale);
    self.myScrollView.minimumZoomScale = minZoomScale;
    //allow up to 4x zoom
    self.myScrollView.maximumZoomScale = 4;
    //set the starting zoom scale
    self.myScrollView.zoomScale = minZoomScale;
}

-(UIView *) viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.myImageView;
}

@end
