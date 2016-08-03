//
//  EIRadioButton.m
//  EInsure
//
//  Created by ivan on 13-7-9.
//  Copyright (c) 2013年 ivan. All rights reserved.
//

#import "XJButton.h"

@interface XJButton ()

@property (nonatomic, assign) CGFloat buttonImageW_H;
@property (nonatomic, assign) XJBtnImgDirection imageDirection;
@property (nonatomic, assign) CGFloat btnImgX;
@property (nonatomic, assign) CGFloat btnImgY;

@end

#define IMAGE_SPACE 5
#define TITLE_SPACE 10
@implementation XJButton

-(instancetype)initWithFrame:(CGRect)frame
             btnImgDirection:(XJBtnImgDirection)ImgDirection
              buttonImageW_H:(CGFloat)buttonImageW_H
                       title:(NSString*)title
                    fontSize:(CGFloat)fontSize
                  titleColor:(UIColor *)titleColor
                   imageName:(NSString*)imageName
                      target:(id)target
                      action:(SEL)action
                         tag:(NSInteger)tag
              {

    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.frame = frame;
        _imageDirection = ImgDirection;
        _buttonImageW_H = buttonImageW_H;
        [self setTitle:title forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        self.tag = tag;
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        
        if (ImgDirection == imgDirectionTop) {
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
        }
    }
    return self;

}


- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    
    CGFloat height = CGRectGetHeight(contentRect);
    CGFloat width = CGRectGetWidth(contentRect);
    _btnImgX = 0.0;
    _btnImgY = 0.0;

    switch (_imageDirection) {
            
        case imgDirectionLeft:
            _btnImgX = IMAGE_SPACE;
            _btnImgY = (height - _buttonImageW_H) / 2;
            
            break;
        case imgDirectionTop:
            _btnImgX = (width - _buttonImageW_H) / 2;
            _btnImgY =  IMAGE_SPACE;
            
            break;
   
        default:
            break;
    }
    CGRect frame = CGRectMake(_btnImgX, _btnImgY, _buttonImageW_H, _buttonImageW_H);
    
    return frame;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    
    CGFloat width = CGRectGetWidth(contentRect);
    CGFloat height = CGRectGetHeight(contentRect);

    CGFloat btnTitleX = 0.0;
    CGFloat btnTitleY = 0.0;
    CGFloat btnTitleW = 0.0;
    CGFloat btnTitleH = 0.0;

    switch (_imageDirection) {
            
        case imgDirectionLeft:
            btnTitleX = _buttonImageW_H + IMAGE_SPACE * 2;
            btnTitleW = width - btnTitleX;
            btnTitleH = height;
            
            break;
        case imgDirectionTop:
            
            btnTitleY =  IMAGE_SPACE + _buttonImageW_H;
            btnTitleW = width;
            btnTitleH = height - btnTitleY;
            break;
            
        default:
            break;
    }
    CGRect titleFrame = CGRectMake(btnTitleX, btnTitleY, btnTitleW, btnTitleH );
    
    return titleFrame;
}


@end
