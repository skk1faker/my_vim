" 浏览代码
noremap <C-d> 10j
noremap <C-u> 10k
noremap <C-j> 5j
noremap <C-k> 5k


" buffer跳转
noremap ]b :bnext<CR>
noremap [b :bprevious<CR>

" quickfix 跳转
noremap ]q :cnext<CR>
noremap [q :cprevious<CR>

"tab 跳转
noremap [t gt
noremap ]t gT

noremap <Down> gj
noremap <Up> gk


" 禁止shift上下键在插入模式下翻页
map <S-Down> <Nop>
map <S-Up> <Nop>
imap <S-Down> <Nop>
imap <S-Up> <Nop>

" 打开终端

command! CallTermainal :botright split|resize 10|term++curwin
noremap <leader>t :CallTermainal<CR>

vmap < <gv
vmap > >gv

map <C-Left> <nop>
map <C-Right> <nop>
imap <C-Left> <nop>
imap <C-Right> <nop>
map <PageUp> <nop>
map <PageDown> <nop>
imap <PageUp> <nop>
imap <PageDown> <nop>
vmap <PageUp> <nop>
vmap <PageDown> <nop>

imap <C-l> <ESC>ea
imap <C-h> <ESC>gea

noremap <F6> :set paste!<CR>

source ~/.vim_my/keys/coc_key.vim
source ~/.vim_my/keys/blameline.vim
source ~/.vim_my/keys/bufferline.vim
source ~/.vim_my/keys/arsync.vim
source ~/.vim_my/keys/markdown-preview.vim
source ~/.vim_my/keys/acm.vim
source ~/.vim_my/keys/translator.vim


