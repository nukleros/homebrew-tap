# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OperatorBuilder < Formula
  desc "A Kubebuilder plugin to accelerate the development of Kubernetes operators."
  homepage "https://github.com/vmware-tanzu-labs/operator-builder"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu-labs/operator-builder/releases/download/v0.4.0/operator-builder_v0.4.0_Darwin_arm64.tar.gz"
      sha256 "af8e16d919226ab35028940d212ffde231ec39cdf34681f87854c3005e90f12f"

      def install
        bin.install "operator-builder"
        bash_completion.install "completions/operator-builder.bash" => "operator-builder"
        zsh_completion.install "completions/operator-builder.zsh" => "_operator-builder"
        fish_completion.install "completions/operator-builder.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-labs/operator-builder/releases/download/v0.4.0/operator-builder_v0.4.0_Darwin_x86_64.tar.gz"
      sha256 "95f55a1b36150d4ad99f35ec08cd55c6463ffac404dd3d7a662f36d5a395dc6a"

      def install
        bin.install "operator-builder"
        bash_completion.install "completions/operator-builder.bash" => "operator-builder"
        zsh_completion.install "completions/operator-builder.zsh" => "_operator-builder"
        fish_completion.install "completions/operator-builder.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vmware-tanzu-labs/operator-builder/releases/download/v0.4.0/operator-builder_v0.4.0_Linux_arm64.tar.gz"
      sha256 "f63af63dddb0db6b29729ac17dbd3baf743d7002079057c1629f4aae3225f11d"

      def install
        bin.install "operator-builder"
        bash_completion.install "completions/operator-builder.bash" => "operator-builder"
        zsh_completion.install "completions/operator-builder.zsh" => "_operator-builder"
        fish_completion.install "completions/operator-builder.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-labs/operator-builder/releases/download/v0.4.0/operator-builder_v0.4.0_Linux_x86_64.tar.gz"
      sha256 "513d7860bae257189438d536d49289fb58334ede04699fdd542f049cf53b8f74"

      def install
        bin.install "operator-builder"
        bash_completion.install "completions/operator-builder.bash" => "operator-builder"
        zsh_completion.install "completions/operator-builder.zsh" => "_operator-builder"
        fish_completion.install "completions/operator-builder.fish"
      end
    end
  end

  depends_on "kubectl"
  depends_on "golang"
  depends_on "make" => :optional

  test do
    system "#{bin}/operator-builder version"
  end
end