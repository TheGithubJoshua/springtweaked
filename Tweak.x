@interface CALayer (seconds)
@property struct CGColor*contentsMultiplyColor;
@end

@interface PUIProgressWindow : NSObject {
	CALayer * _layer;
	CALayer * _progressLayer;
}

@property (nonatomic, readonly) CALayer *layer;

@end

@interface UIImage (twofers)
-(UIImage *)_flatImageWithColor:(UIColor *)color;
@end

// Hide the dock
%hook SBDockView
-(void)setBackgroundAlpha:(double)arg1 {
%orig(0);
}
%end

// Hide the home bar
%hook MTLumaDodgePillSettings

-(void)setMinWidth:(double)arg1  {
	%orig(0);
}

%end
