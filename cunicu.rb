# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cunicu < Formula
  desc "A zeroconf peer-to-peer mesh VPN using Wireguard® and Interactive Connectivity Establishment (ICE)"
  homepage "https://cunicu.li"
  version "0.1.2"
  license "Apache-2.0"

  depends_on "bash-completion" => :optional
  depends_on "wireguard-tools" => :optional

  on_macos do
    url "https://github.com/stv0g/cunicu/releases/download/v0.1.2/cunicu_0.1.2_darwin_all.tar.gz"
    sha256 "c51a30ba1480d1df60aace2938a5bf0279164693fb490b00a4d060f8419d744e"

    def install
      bin.install "cunicu"
      etc.install "etc/cunicu.yaml"
      bash_completion.install "completions/cunicu.bash" => "cunicu"
      zsh_completion.install "completions/cunicu.zsh" => "_cunicu"
      fish_completion.install "completions/cunicu.fish"
      man1.install Dir["man/*.1"]
      man5.install Dir["man/*.5"]
      man7.install Dir["man/*.7"]
      man8.install Dir["man/*.8"]
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stv0g/cunicu/releases/download/v0.1.2/cunicu_0.1.2_linux_arm64.tar.gz"
      sha256 "9d7332548bc64f480872bf951970d964a8bd34fa9db5d3ddfd451b363b6fd0e5"

      def install
        bin.install "cunicu"
        etc.install "etc/cunicu.yaml"
        bash_completion.install "completions/cunicu.bash" => "cunicu"
        zsh_completion.install "completions/cunicu.zsh" => "_cunicu"
        fish_completion.install "completions/cunicu.fish"
        man1.install Dir["man/*.1"]
        man5.install Dir["man/*.5"]
        man7.install Dir["man/*.7"]
        man8.install Dir["man/*.8"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stv0g/cunicu/releases/download/v0.1.2/cunicu_0.1.2_linux_amd64.tar.gz"
      sha256 "836dc487753bffd3b4a0c52aeebcb450059d815cee23dc48df343eb61c97fea9"

      def install
        bin.install "cunicu"
        etc.install "etc/cunicu.yaml"
        bash_completion.install "completions/cunicu.bash" => "cunicu"
        zsh_completion.install "completions/cunicu.zsh" => "_cunicu"
        fish_completion.install "completions/cunicu.fish"
        man1.install Dir["man/*.1"]
        man5.install Dir["man/*.5"]
        man7.install Dir["man/*.7"]
        man8.install Dir["man/*.8"]
      end
    end
  end
end
