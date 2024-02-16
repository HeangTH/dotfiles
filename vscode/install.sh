# VSCode itself is installed via Homebrew.
# Only plugins will be installed here.

echo "Installing VSCode"

# Install Standard plugins
code --install-extension dkundel.vscode-new-file
code --install-extension ms-python.python
code --install-extension donjayamanne.githistory
code --install-extension esbenp.prettier-vscode
code --install-extension eamodio.gitlens

# User
code --install-extension editorconfig.editorconfig
code --install-extension davidanson.vscode-markdownlint
code --install-extension hookyqr.beautify
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension florianloch.text-transform
code --install-extension emmanuelbeziat.vscode-great-icons
code --install-extension pkief.material-icon-theme
code --install-extension zhuangtongfa.material-theme
code --install-extension bierner.markdown-preview-github-styles
code --install-extension ritwickdey.create-file-folder
code --install-extension ria.elastic
code --install-extension thomas-baumgaertner.vcl

# Install JS plugins
code --install-extension dbaeumer.vscode-eslint
code --install-extension eg2.vscode-npm-script
code --install-extension christian-kohler.npm-intellisense
code --install-extension jpoissonnier.vscode-styled-components

# Copy User settings
mkdir -p $HOME/Library/Application\ Support/Code/User/
cp `pwd`/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/

