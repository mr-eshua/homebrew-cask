cask "mmex" do
  version "1.5.11"
  sha256 "6782cbe040ae55fdea71936402050f30aee90a2665339f69cbc36d69fabf54eb"

  url "https://downloads.sourceforge.net/moneymanagerex/mmex-#{version}-Darwin.dmg",
      verified: "downloads.sourceforge.net/moneymanagerex/"
  name "Money Manager Ex"
  desc "Money management application"
  homepage "https://www.moneymanagerex.org/"

  livecheck do
    url "https://sourceforge.net/projects/moneymanagerex/rss"
    strategy :page_match
    regex(/mmex[._-]?(\d+(?:\.\d+)+)[._-]?Darwin\.dmg/i)
  end

  app "MMEX.app"

  zap trash: [
    "~/Library/Application Support/MoneyManagerEx",
    "~/Library/Caches/com.yourcompany.MMEX",
    "~/Library/Preferences/com.yourcompany.MMEX.plist",
  ]
end
