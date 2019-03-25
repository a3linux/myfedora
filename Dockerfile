FROM fedora:29

RUN dnf update -y
RUN dnf install -y vim-enhanced nodejs nodejs-yarn git-core python3-virtualenv aws-shell fzf powerline powerline-fonts
RUN useradd -u 501 -g 20 allen
CMD ["bash"]
