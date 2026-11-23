class SwitchRelay < Formula
  desc "WebSocket relay that gives the Switch-Wasm emulator Internet access"
  homepage "https://git.tenshii.moe/Tenshii/Switch-Wasm"

  on_macos do
    on_intel do
      url "https://git.tenshii.moe/Tenshii/Switch-Wasm/releases/download/relay-v0.1.0/switch-relay-0.1.0-universal-macos"
      sha256 "0e9f66f8d684a86929d619527a39a47c94b1d31080cd881a1b9b956f6daf4a27"
    end
    on_arm do
      url "https://git.tenshii.moe/Tenshii/Switch-Wasm/releases/download/relay-v0.1.0/switch-relay-0.1.0-universal-macos"
      sha256 "0e9f66f8d684a86929d619527a39a47c94b1d31080cd881a1b9b956f6daf4a27"
    end
  end

  on_linux do
    on_intel do
      url "https://git.tenshii.moe/Tenshii/Switch-Wasm/releases/download/relay-v0.1.0/switch-relay-0.1.0-x86_64-linux"
      sha256 "ce6b713bf6e6ae213b16d10237e58f0d0ca15b8c9bbc60bfcc80513e5d8dacb2"
    end
    on_arm do
      url "https://git.tenshii.moe/Tenshii/Switch-Wasm/releases/download/relay-v0.1.0/switch-relay-0.1.0-aarch64-linux"
      sha256 "41d4790a1b207796e96ef01ffa762cfa0e968a09d051a6e83b262b6383761e71"
    end
  end

  livecheck do
    url "https://git.tenshii.moe/Tenshii/Switch-Wasm.git"
    regex(/^relay-v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  def install
    bin.install Dir["switch-relay-*"].first => "switch-relay"
  end
end
