" 浏览代码
noremap <C-d> 10j
noremap <C-u> 10k
noremap <C-j> 5j
noremap <C-k> 5k


" buffer跳转
noremap ]b :bnext<CR>
noremap [b :bnext<CR>

" quickfix 跳转
noremap ]q :cnext<CR>
noremap [q :cnext<CR>

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

"noremap <leader>t :sp | resize 10 |terminal<CR>

source ~/.vim_my/keys/coc_key.vim
source ~/.vim_my/keys/blameline.vim
source ~/.vim_my/keys/bufferline.vim
source ~/.vim_my/keys/arsync.vim
source ~/.vim_my/keys/acm.vim


