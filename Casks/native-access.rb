cask "native-access" do
  version "1.13.1.134"
  sha256 "a8bdba63def7b4a9ce79d2bc3f0bec68922672d294a21d9dfb6f8c43c5842214"

  url "https://native-instruments.com/fileadmin/downloads/Native_Access_Installer.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_sizeandmodified.cgi?url=https://native-instruments.com/fileadmin/downloads/Native_Access_Installer.dmg"
  name "Native Access"
  desc "Administration tool for Native Instruments products"
  homepage "https://native-instruments.com/specials/native-access"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Native Access.app"

  uninstall quit:      "com.native-instruments.Native Access",
            launchctl: "com.native-instruments.NativeAccess.Helper2",
            delete:    [
              "/Library/PrivilegedHelperTools/com.native-instruments.NativeAccess.Helper2",
              "/Library/Application Support/Native Instruments/Helper/NIHelperAuth",
            ],
            rmdir:     [
              "/Library/Application Support/Native Instruments/*",
              "/Library/Application Support/Native Instruments",
            ]

  zap trash: [
    "/Library/Application Support/Native Instruments/Service Center/NativeAccess.xml",
    "~/Library/Application Support/Native Instruments/Native Access*",
    "~/Library/Application Support/Native Instruments/Service Center",
    "~/Library/Application Support/CrashReporter/Native Access_*.plist",
    "~/Library/Caches/Native Instruments/Native Access*",
    "~/Library/Preferences/com.native-instruments.Native Access.plist",
    "~/Library/Preferences/com.native-instruments.Shared.plist",
    "/private/var/folders/*/*/*/com.native-instruments.Native Access",
    "/private/var/folders/*/*/*/metalink-*.meta4",
  ],
      rmdir: [
        "/Library/Application Support/Native Instruments/*",
        "/Library/Application Support/Native Instruments",
        "~/Library/Application Support/Native Instruments",
        "/private/var/log/Native Instruments",
      ]
end
