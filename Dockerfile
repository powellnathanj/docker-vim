FROM fedora

# clone and symlink my vim files
WORKDIR /root
RUN dnf update -y
RUN dnf install vim git -y
RUN git clone https://github.com/powellnathanj/vim.git
RUN mv vim .vim
RUN ln -s /root/.vim/vimrc /root/.vimrc

RUN mkdir /vim
WORKDIR /vim

ENTRYPOINT ["vim"]
