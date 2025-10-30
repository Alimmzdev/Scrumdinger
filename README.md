# Scrumdinger

<p align="center">
  <img src="https://img.shields.io/badge/iOS-15.0+-blue.svg" alt="iOS 15.0+">
  <img src="https://img.shields.io/badge/Swift-5.5+-orange.svg" alt="Swift 5.5+">
  <img src="https://img.shields.io/badge/Xcode-13.0+-blue.svg" alt="Xcode 13.0+">
  <img src="https://img.shields.io/badge/SwiftUI-3.0+-green.svg" alt="SwiftUI 3.0+">
</p>

An iOS app that helps users manage their daily scrums, built following Apple's official SwiftUI App Dev Training tutorial. Scrumdinger uses visual and audio cues to keep meetings short and focused, showing when and how long each attendee should speak.

## 📱 Features

- **Scrum Management**: Create, edit, and delete daily scrum meetings
- **Meeting Timer**: Visual progress indicators and audio cues for timed meetings
- **Speaker Tracking**: Automatic rotation through meeting attendees with individual time allocation
- **Meeting History**: Automatically saved transcripts and meeting records
- **Customization**: Choose from various theme colors for different scrums
- **Data Persistence**: Local storage of scrums using JSON encoding
- **Speech Recognition**: Optional meeting transcription (requires physical device)
- **Accessibility**: Full VoiceOver support and accessible color schemes

## 🎯 Learning Objectives

This project demonstrates essential iOS development concepts:

### SwiftUI Essentials
- Building adaptive user interfaces
- Creating reusable custom views
- Implementing accessibility features
- Using stacks (HStack, VStack, ZStack)

### Navigation & Modal Presentation
- NavigationView and NavigationLink
- Sheet presentation for modal views
- Navigation hierarchies
- Passing data between views

### State Management
- @State and @Binding property wrappers
- @StateObject and @ObservableObject protocols
- Data flow in SwiftUI
- Source of truth patterns

### Data Persistence
- FileManager for local storage
- Encoding and decoding JSON data
- Async/await for file operations
- Error handling

### Advanced Features
- Custom drawing with Canvas and shapes
- AVFoundation for audio playback
- Speech framework for transcription
- Timer management

## 🚀 Getting Started

### Prerequisites

- macOS 12.0 or later
- Xcode 13.0 or later
- iOS 15.0+ device or simulator

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Alimmzdev/Scrumdinger.git
cd scrumdinger
```

2. Open the project in Xcode:
```bash
open Scrumdinger.xcodeproj
```

3. Build and run the project:
   - Select your target device or simulator
   - Press `Cmd + R` or click the Run button

## 📖 Project Structure

```
Scrumdinger/
├── Models/
│   ├── DailyScrum.swift          # Main scrum data model
│   ├── Theme.swift                # Color theme definitions
│   ├── History.swift              # Meeting history records
│   └── ScrumStore.swift           # Data persistence layer
├── Views/
│   ├── ScrumsView.swift           # Main list view
│   ├── DetailView.swift           # Scrum details
│   ├── MeetingView.swift          # Active meeting interface
│   ├── EditView.swift             # Edit scrum form
│   ├── MeetingHeaderView.swift    # Timer header
│   ├── MeetingFooterView.swift    # Speaker controls
│   └── MeetingTimerView.swift     # Progress indicators
├── Components/
│   ├── CardView.swift             # Scrum list cards
│   ├── ThemePicker.swift          # Theme selection
│   └── TrailingIconLabelStyle.swift
├── Resources/
│   └── ding.wav                   # Meeting timer sound
└── ScrumdingerApp.swift           # App entry point
```

## 🎨 Key Concepts Implemented

### Property Wrappers
- **@State**: For local view state
- **@Binding**: For two-way data flow between views
- **@StateObject**: For reference type objects owned by the view
- **@ObservedObject**: For observing reference types owned elsewhere
- **@EnvironmentObject**: For app-wide shared data

### Async/Await Pattern
```swift
Task {
    do {
        scrums = try await ScrumStore.load()
    } catch {
        // Handle error
    }
}
```

### Custom Drawing
The app includes a custom circular progress ring drawn using SwiftUI's Canvas API.

## 🔧 Configuration

### Speech Recognition Setup
To enable speech recognition features:
1. Add microphone and speech recognition permissions to Info.plist
2. Test on a physical device (simulator support is limited)
3. Grant permissions when prompted

### Audio Playback
The app uses AVFoundation for timer alerts. The sound file is included in the Resources folder.

## 📝 Tutorial Chapters

This implementation follows Apple's complete tutorial series:

1. **SwiftUI Essentials** - Creating views and layouts
2. **Views** - Building the view hierarchy
3. **Navigation and Modal Presentation** - Navigation flows
4. **Passing Data** - Data flow with bindings
5. **State Management** - Managing app state
6. **Persistence** - Saving data locally
7. **Drawing** - Custom graphics with Canvas
8. **Recording Audio** - AVFoundation integration
9. **Speech Recognition** - Transcription features

## 🧪 Testing

The app includes basic data validation and error handling. To test:

- Create multiple scrums with different themes
- Edit existing scrums
- Start a meeting and observe timer behavior
- Check that data persists after app restart
- Test VoiceOver support (requires physical device)

## 🤝 Contributing

This is a learning project based on Apple's tutorial. Feel free to fork and experiment with your own improvements!

## 📄 License

This project follows Apple's sample code license. The tutorial content and original design are © Apple Inc.

### Audio Attribution
- `ding.wav` sound created by [Aiwha](https://freesound.org/people/Aiwha/sounds/196106/)

## 🔗 Resources

- [Apple's SwiftUI App Dev Training](https://developer.apple.com/tutorials/app-dev-training/)
- [SwiftUI Documentation](https://developer.apple.com/documentation/swiftui/)
- [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)

## 👨‍💻 Author

Alimmzdev - [Alimmzdev]([https://github.com/yourusername](https://github.com/Alimmzdev))

## 🙏 Acknowledgments

- Apple Developer Training team for the excellent tutorial
- Apple's SwiftUI framework documentation
- The iOS development community

---

Built with ❤️ using SwiftUI
