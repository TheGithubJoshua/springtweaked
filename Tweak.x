#import <AudioToolbox/AudioToolbox.h>

@interface SBCoverSheetBlurView : UIView // LS Blur
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
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

%hook SBCoverSheetBlurView // Hook SBCoverSheetBlurView
- (void)didMoveToWindow {
      self.hidden = YES; // Hide the blur
			%orig; // Run the original code
    }
%end

%hook SBButtonEventsHandler
-(BOOL)handleLockButtonPress {
	AudioServicesPlaySystemSound(4095);
	return %orig;
}
%end
