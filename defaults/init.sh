defaults write com.apple.HIToolbox AppleEnabledInputSources -array \
'{InputSourceKind="Keyboard Layout"; "KeyboardLayout Name"="U.S."; "KeyboardLayout ID"=0;}' \
'{InputSourceKind="Keyboard Layout"; "KeyboardLayout Name"="RussianWin"; "KeyboardLayout ID"=19458;}'

# tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1

# 3-finger drag
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 0

# 4-finger swipe
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 2

# menu-bar date
defaults write com.apple.menuextra.clock "ShowDate" -int 2
defaults write com.apple.menuextra.clock "ShowDayOfWeek" -int 1

defaults write com.apple.dock "orientation" -string "left"
defaults write com.apple.dock "tilesize" -int 32
