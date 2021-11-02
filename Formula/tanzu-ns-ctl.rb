# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TanzuNsCtl < Formula
  desc "A Kubernetes operator which applies namespace tenancy best practices."
  homepage "https://github.com/vmware-tanzu-labs/namespace-operator"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-labs/namespace-operator/releases/download/v0.2.0/tanzu-ns-ctl_v0.2.0_Darwin_x86_64.tar.gz"
      sha256 "06c189a5b8097e16ba04ef9070c0412b4e23b55faba27dd8950b4f48ac598728"

      def install
        bin.install "tanzu-ns-ctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu-labs/namespace-operator/releases/download/v0.2.0/tanzu-ns-ctl_v0.2.0_Darwin_arm64.tar.gz"
      sha256 "7e63b4b43c476e9640a61ebdc7787b3ce5b420b116a84938ab3fe3bae1e787a1"

      def install
        bin.install "tanzu-ns-ctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-labs/namespace-operator/releases/download/v0.2.0/tanzu-ns-ctl_v0.2.0_Linux_x86_64.tar.gz"
      sha256 "65a8c202ffbfd8be89f5f50711a3ae9763fa531a2004344ec4603d286da2e65b"

      def install
        bin.install "tanzu-ns-ctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vmware-tanzu-labs/namespace-operator/releases/download/v0.2.0/tanzu-ns-ctl_v0.2.0_Linux_arm64.tar.gz"
      sha256 "05262d44c16c089feb2a4343c9e6fa865bdafc6486bc0b7d86a32a49ff5f101b"

      def install
        bin.install "tanzu-ns-ctl"
      end
    end
  end

  depends_on "kubectl"

  test do
    system "#{bin}/tanzu-ns-ctl version"
  end
end