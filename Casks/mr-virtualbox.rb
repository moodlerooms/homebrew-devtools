cask 'mr-virtualbox' do
  version '5.1.30-118389'
  sha256 'bc1c6c341fcc04a8e214f9e4ced44058c6239f30ddd0e1a923f04c8d01c92d91'

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/VirtualBox-#{version}-OSX.dmg"
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/'

  pkg 'VirtualBox.pkg'

  uninstall_preflight do
    if File.exist?("#{HOMEBREW_PREFIX}/Caskroom/virtualbox-extension-pack")
      system_command 'brew', args: ['cask', 'uninstall', 'virtualbox-extension-pack']
    end
  end

  uninstall script:  {
                       executable: 'VirtualBox_Uninstall.tool',
                       args:       ['--unattended'],
                       sudo:       true,
                     },
            pkgutil: 'org.virtualbox.pkg.*'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualbox.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualboxvm.sfl',
                '~/Library/Saved Application State/org.virtualbox.app.VirtualBox.savedState',
                '~/Library/Saved Application State/org.virtualbox.app.VirtualBoxVM.savedState',
              ],
      trash:  [
                '/Library/Application Support/VirtualBox',
                '~/Library/VirtualBox',
                '~/Library/Preferences/org.virtualbox.app.VirtualBox.plist',
                '~/Library/Preferences/org.virtualbox.app.VirtualBoxVM.plist',
              ],
      rmdir:  '~/VirtualBox VMs'
end