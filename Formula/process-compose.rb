# typed: false
# frozen_string_literal: true

# Vendored from https://github.com/F1bonacc1/homebrew-tap (Apache-2.0), reformatted to
# pass `brew audit --strict`.
#
# Why a copy rather than `depends_on "f1bonacc1/tap/process-compose"`:
# Homebrew 6 refuses to load a formula from an untrusted tap, and auto-trusts
# only the formula named on the command line. A cross-tap dependency would make
# every install stop for a trust prompt on a tap the user never named.
#
# Regenerate with scripts/update-process-compose-formula.sh in
# ang-ee/angee-operator. Do not edit by hand.
class ProcessCompose < Formula
  desc "Scheduler and orchestrator for non-containerized applications"
  homepage "https://github.com/F1bonacc1/process-compose"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/F1bonacc1/process-compose/releases/download/v1.120.0/process-compose_darwin_amd64.tar.gz"
      sha256 "844756b341772fdcb9f4abe076c041077cde0128e5c06d4afa0c1d41bc316663"
    end
    on_arm do
      url "https://github.com/F1bonacc1/process-compose/releases/download/v1.120.0/process-compose_darwin_arm64.tar.gz"
      sha256 "21c83530a13e156d207be17db4d9fe6b76629ca9ac33560554cf2f416b1d8e4b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/F1bonacc1/process-compose/releases/download/v1.120.0/process-compose_linux_amd64.tar.gz"
      sha256 "3792e1ed9f383832eb2362154444e8564fbc8e7e8e7cff8754c68aea5eca086e"
    end
    on_arm do
      url "https://github.com/F1bonacc1/process-compose/releases/download/v1.120.0/process-compose_linux_arm64.tar.gz"
      sha256 "c5f4fcfc63e849279ac531bce2394a918fb28746339088a7d3d02bb5fb218a68"
    end
  end

  def install
    bin.install "process-compose"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/process-compose version")
  end
end
