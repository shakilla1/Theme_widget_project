# Widget Demonstration of Theme

In Flutter, the theme determines the entire look of the application including color scheme, text style and brightness preference (dark or light mode).

## Method of Execution
Requirements: Flutter should be installed on the computer used for development.
Steps:
- Run: flutter pub get
- Start the app using: flutter run -d chrome or in case there is an emulator use: flutter run followed by selection of the device.

## Key Properties and Changes (The three properties)

### 1) colorScheme
- Default value: Deep Purple, created with Colors.deepPurple.
- Modifications done: I chose Green, which lead to the change of application's color scheme on screen.
- Reason for modification: To create uniformity with the brand and colors that do not need additional styling for individual widgets.

### 2) textTheme
- Default value: bodyMedium with font size of 16.
- Modifications done: Switched to Large Text making bodyMedium font size increase to 32.
- Reason for modification: To make the text more readable for people who like to have larger font.

### 3) brightness
- Default value: Light mode (Brightness.light).
- Modifications done: Switch to Dark mode changing the entire color scheme to dark one.
- Reason for modification: To satisfy user preferences.

## screenshot
Picture showing the final user interface:
![Final UI](screenshots/final_ui.png)