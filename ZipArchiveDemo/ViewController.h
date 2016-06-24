//
//  ViewController.h
//  ZipArchiveDemo
//
//  Created by china on 16/6/24.
//  Copyright © 2016年 china. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//加密
- (IBAction)encryption:(id)sender;

//解密
- (IBAction)decryption:(id)sender;

//读取文件夹
- (IBAction)readfile:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *readFileLable;
@end

