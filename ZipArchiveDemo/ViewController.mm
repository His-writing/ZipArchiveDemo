//
//  ViewController.m
//  ZipArchiveDemo
//
//  Created by china on 16/6/24.
//  Copyright © 2016年 china. All rights reserved.
//

#import "ViewController.h"
#import "ZipArchive.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@",NSHomeDirectory());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)encryption:(id)sender {
    //创建/添加一个zip包
    ZipArchive* zipFile = [[ZipArchive alloc] init];
    
    //次数得zipfilename需要一个完整得路径，例如***/Documents/demo.zip
    
    [zipFile CreateZipFile2:@"zipfilename"];
    
    //有两种可选得方式进行创建压缩包，带密码和不带密码的
    
    [zipFile  CreateZipFile2:@"zipfilename" Password:@"your password"];
     //接下来就是将需要压缩的文件添加到这个压缩包中
     
     //这里第一个参数需要完整的路径,例如:***/Documents/a.txt  newname是指文件在压缩包中的名字,不需要路径，只是一个名称
     
     [zipFile addFileToZip:@"fullpath of the file" newname:@"new name of the file without path"];
     
     //如果需要将多个文件进行压缩,即压缩文件夹，重复addFileToZip方法即可
     
     [zipFile CloseZipFile2];
     
     [zipFile release];
     
     //释放内存
     

    
    
    
}

- (IBAction)decryption:(id)sender {
    
    ZipArchive* zipFile = [[ZipArchive alloc] init];
    
    [zipFile UnzipOpenFile:@"zip file name"];
    
    //同样，对应的就有两种打开zip包的方式，带密码和不带密码
    
    [zipFile UnzipOpenFile:@"zip file name" Password:@"password" ];
    
    //压缩包释放到的位置，需要一个完整路径
    
    [zipFile UnzipFileTo:@"output path" overWrite:YES];
    
    
    [zipFile UnzipCloseFile];
    
    [zipFile release];
    
    //记得释放

    
    
    
}



@end
