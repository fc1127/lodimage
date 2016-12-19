//
//  RequestImageVC.m
//  LoadImage
//
//  Created by FC on 16/12/19.
//  Copyright © 2016年 FC. All rights reserved.
//

#import "RequestImageVC.h"

@interface RequestImageVC ()

@end

@implementation RequestImageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//压缩上传
//- (void)saveAvatar:(UIImage *)image
//{
//    [self showNetHud:@"保存中..."];
//    NSMutableArray * uparr=[[NSMutableArray alloc]init];
//    for (UIImage * imagefile in _allPhotos){
//        UIImage *simage = [imagefile scaleImage:300.f / SW];
//        NSData *data = UIImageJPEGRepresentation(simage, .5f);
//        [uparr addObject:data];
//    }
//    if(uparr.count>1){
//        [[KCNetUtil instance]requestWithURLresumme:kUploadResumeUrl param:uparr target:self selector:@selector(didUploadImage:)];
//    }else{
//        UIImage * imageOne=[_allPhotos objectAtIndex:0];
//        
//        UIImage *simage = [imageOne scaleImage:300.f / SW];
//        
//        NSData *data = UIImageJPEGRepresentation(simage, .5f);
//        
//        int rnd = arc4random() % 1000000;
//        
//        NSString *fileName = [NSString stringWithFormat:@"%f_%d",[NSDate timeIntervalSinceReferenceDate],rnd];
//        
//        NSString *filePath = [[KCFileUtil cachePath] stringByAppendingFormat:@"/%@.jpg",fileName];
//        
//        [data writeToFile:filePath atomically:YES];
//        
//        [[KCNetUtil instance] uploadImage:kUploadResumeUrl
//                                 filePath:filePath
//                                      key:@"image"
//                                   target:self
//                                 selector:@selector(didUploadImage:)];
//    }
//    
//    
//}
//单张上传
//- (ASIHTTPRequest *)uploadImage:(NSString *)relativeUrl
//                       filePath:(NSString *)filePath key:(NSString *)key
//                         target:(id)target
//                       selector:(SEL)selector
//{
//    NSString *urlStr = [self createUrlWithRelaveUrl:relativeUrl extra:nil];
//    
//    NSURL *url = [NSURL URLWithString:urlStr];
//    
//    ASIFormDataRequest *request = [[ASIFormDataRequest alloc] initWithURL:url];
//    
//    [request setUserInfo:target flag:relativeUrl];
//    
//    //    [request setValue:filePath forKey:@"image"];
//    
//    [request setFile:filePath forKey:@"image"];
//    
//    [request buildPostBody];
//    
//    request.delegate = target;
//    
//    [request setDidFinishSelector:selector];
//    
//    [request startAsynchronous];
//    
//    return request;
//}
//上传数组
//- (ASIHTTPRequest *)requestWith:(NSString *)relativeUrl
//                          param:(NSArray *)param
//                     extraValue:(NSDictionary *)extraValue
//                         target:(id)target
//                       selector:(SEL)selector
//{
//    NSURL *url = [NSURL URLWithString:[self createUrlWithRelaveUrl:relativeUrl extra:extraValue]];
//    
//    ASIFormDataRequest *request = [[ASIFormDataRequest alloc] initWithURL:url];
//    
//    request.useCookiePersistence = YES;
//    
//    [request setUserInfo:target flag:relativeUrl];
//    
//    [request setRequestMethod:@"POST"];
//    
//    if (param.count > 0)
//    {
//        [request setPostFormat:ASIMultipartFormDataPostFormat];
//        for (NSData* data in param) {
//            NSInteger idx = [param indexOfObject:data];
//            [request addData:data withFileName:[NSString stringWithFormat:@"image%ld.png",idx] andContentType:@"image/png" forKey:@"image[]"];
//        }
//    }
//    request.delegate = target;
//    
//    [request setDidFinishSelector:selector];
//    
//    [request startAsynchronous];
//    
//    return request;
//}
//



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
