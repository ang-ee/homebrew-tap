# typed: false
# frozen_string_literal: true

# Vendored from https://github.com/F1bonacc1/homebrew-tap (Apache-2.0).
#
# Why a copy rather than `depends_on "f1bonacc1/tap/process-compose"`:
# Homebrew 6 will not auto-tap a third-party dependency and additionally
# requires an explicit `brew trust` for it, which turns `brew install angee`
# into three commands and a trust prompt for a tap the user never asked for.
# Carrying the formula here keeps installation to one command.
#
# Refresh with scripts/update-process-compose-formula.sh in ang-ee/angee-operator.
class ProcessCompose < Formula
  desc "Scheduler and orchestrator for non-containerized applications"
  homepage "https://github.com/F1bonacc1/process-compose"
  version "1.120.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/F1bonacc1/process-compose/releases/download/v1.120.0/process-compose_darwin_amd64.tar.gz"
      sha256 "844756b341772fdcb9f4abe076c041077cde0128e5c06d4afa0c1d41bc316663"

      def install
        bin.install "process-compose"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/F1bonacc1/process-compose/releases/download/v1.120.0/process-compose_darwin_arm64.tar.gz"
      sha256 "21c83530a13e156d207be17db4d9fe6b76629ca9ac33560554cf2f416b1d8e4b"

      def install
        bin.install "process-compose"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/F1bonacc1/process-compose/releases/download/v1.120.0/process-compose_linux_amd64.tar.gz"
        sha256 "3792e1ed9f383832eb2362154444e8564fbc8e7e8e7cff8754c68aea5eca086e"

        def install
          bin.install "process-compose"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/F1bonacc1/process-compose/releases/download/v1.120.0/process-compose_linux_arm.tar.gz"
        sha256 "039791eaeff304b96ba409a9b8477a7c5417afd5c7ada4fad21a0c36237a2343"

        def install
          bin.install "process-compose"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/F1bonacc1/process-compose/releases/download/v1.120.0/process-compose_linux_arm64.tar.gz"
        sha256 "c5f4fcfc63e849279ac531bce2394a918fb28746339088a7d3d02bb5fb218a68"

        def install
          bin.install "process-compose"
        end
      end
    end
  end
end
