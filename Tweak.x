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
