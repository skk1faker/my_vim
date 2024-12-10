let s:plugin_manager=expand('~/.vim/autoload/plug.vim')
let s:plugin_url='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if empty(glob(s:plugin_manager))
	echom 'vim-plug not found. Installing...'
	if executable('curl')
		silent exec '!curl -fLo ' . s:plugin_manager . ' --create-dirs ' . s:plugin_url
	elseif executable('wget')
		call mkdir(fnamemodify(s:plugin_manager, ':h'), 'p')
		silent exec '!wget --force-directories --no-check-certificate -O ' . expand(s:plugin_manager) . ' ' . s:plugin_url
	else
		echom 'Could not download plugin manager. No plugins were installed.'
		finish
	endif
	augroup vimplug
		autocmd!
		autocmd VimEnter * PlugInstall
	augroup END
endif

call plug#begin()
	"Plug 'prabirshrestha/vim-lsp'
	"Plug 'mattn/vim-lsp-settings'

	"Plug 'prabirshrestha/async.vim'
	"Plug 'prabirshrestha/asyncomplete.vim'
	"Plug 'prabirshrestha/asyncomplete-lsp.vim'

	Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
	Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
	Plug 'adamatom/blameline.vim'

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'bling/vim-bufferline'

	" 同步工具
	Plug 'kenn7/vim-arsync'
	Plug 'tyrannicaltoucan/vim-quantum'
call plug#end()

"source ~/.vim_my/plugs/lsp_config.vim
"source ~/.vim_my/plugs/async.vim						" 代码补全
"source ~/.vim_my/plugs/lsp/clangd.vim
"source ~/.vim_my/plugs/lsp/gopls.vim

source ~/.vim_my/plugs/blameline.vim
source ~/.vim_my/plugs/airline.vim
source ~/.vim_my/plugs/bufferline.vim
source ~/.vim_my/plugs/arsync.vim
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
"Plug 'ryanoasis/vim-devicons' Icons without colours
