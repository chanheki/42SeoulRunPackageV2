import ProjectDescription

// MARK: Constants
let projectName = "Run42SeoulPackage2"
let organizationName = "Run42"
let bundleID = "com.Run42SeoulPackage2"
let targetVersion = "11.0"

// MARK: Struct
let project = Project(
  name: projectName,
  organizationName: organizationName,
  packages: [],
  settings: nil,
  targets: [
	Target(name: projectName,
		   platform: .macOS,
		   product: .app, // unitTests, .appExtension, .framework, dynamicLibrary, staticFramework
		   bundleId: bundleID,
		   deploymentTarget: .macOS(targetVersion: targetVersion),
		   infoPlist: .file(path: "\(projectName)/src/Info.plist"),
		   sources: ["\(projectName)/**"],
		   resources: ["\(projectName)/src/Assets.xcassets"],
		   entitlements: "\(projectName)/src/Run42SeoulPackage2.entitlements",
		   dependencies: [] // tuist generate할 경우 pod install이 자동으로 실행
		  )
  ],
  schemes: [
	Scheme(name: "\(projectName)-Debug"),
	Scheme(name: "\(projectName)-Release")
  ],
  fileHeaderTemplate: nil,
  additionalFiles: [],
  resourceSynthesizers: []
)
