# github.com/jtdoepke/dotfiles

Managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

Install them with:

    sudo apt-get update;
    sudo apt-get install git pcscd scdaemon gnupg2 pcsc-tools;
    sudo snap install chezmoi --classic;
    gpg --keyserver hkps://keys.openpgp.org --recv-keys 55CFB9ADF1922C48DB9BC520FF0C0E1C4B5140E6;
    chezmoi init https://github.com/jtdoepke/dotfiles.git

Secrets are GPG encrypted.
