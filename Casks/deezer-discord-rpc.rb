cask "deezer-discord-rpc" do
  name "Deezer Discord RPC"
  desc "A Discord RPC for Deezer"
  homepage "https://github.com/CuteTenshii/deezer-discord-rpc"
  version :latest
  sha256 :no_check

  on_intel do
    url "https://github.com/CuteTenshii/deezer-discord-rpc/releases/latest/download/DeezerDiscordRPC-mac-x64.dmg"
  end
  on_arm do
    url "https://github.com/CuteTenshii/deezer-discord-rpc/releases/latest/download/DeezerDiscordRPC-mac-arm64.dmg"
  end

  app "Deezer Discord RPC.app"

  zap trash: [
    "~/Library/Application Support/deezer-discord-rpc",
    "~/Library/Preferences/com.github.yuuto.deezerdiscordrpc.plist",
  ]
end
