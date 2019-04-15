FROM fedora:29

RUN dnf update -y
RUN dnf install -y vim-enhanced nodejs nodejs-yarn git-core python3-virtualenv aws-shell fzf powerline powerline-fonts the_silver_searcher ripgrep dnf-plugins-core
RUN dnf copr enable -y thindil/universal-ctags && dnf install universal-ctags -y
RUN pip3 install autopep8 python-language-server
RUN yarnpkg global add prettier eslint
RUN /bin/bash -c 'curl -L -o /tmp/pt_linux_amd64.tar.gz https://github.com/monochromegane/the_platinum_searcher/releases/download/v2.2.0/pt_linux_amd64.tar.gz'
RUN /bin/bash -c 'cd /tmp && tar zxvf pt_linux_amd64.tar.gz && if [ -f /tmp/pt_linux_amd64/pt ]; then mv /tmp/pt_linux_amd64/pt /usr/bin/pt; fi'
RUN useradd -u 501 -g 20 allen
CMD ["bash", "-login"]
