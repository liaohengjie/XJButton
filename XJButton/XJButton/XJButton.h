#import <UIKit/UIKit.h>


/**
 *  XJBtnImgDirection,btn 图片方向的枚举
 */
typedef NS_ENUM(NSInteger,XJBtnImgDirection) {
    /**
     *  左
     */
    imgDirectionLeft = 0,
    /**
     *  上
     */
    imgDirectionTop,
    /**
     *  右
     */
    //imgDirectionRight,
};

@interface XJButton : UIButton


/**
 *  创建button
 *
 *  @param frame          button frame
 *  @param ImgDirection   btn image的方向 ，在左或上
 *  @param title          标题
 *  @param fontSize       字体大小
 *  @param titleColor     标题颜色
 *  @param imageName      图片名称
 *  @param target         target
 *  @param action         点击的方法
 *  @param tag            tag
 *  @param buttonImageW_H btn图片大小
 *
 *  @return btn
 */
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
                ;

@end
