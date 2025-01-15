call plug#begin()
	Plug 'neoclide/coc.nvim'	" 出现”[coc.nvim] build/index.js not found, please install dependencies and compile coc.nvim by: npm ci“的处理方法https://github.com/neoclide/coc.nvim/issues/3258
	Plug 'majutsushi/tagbar'

	Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
	Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
	Plug 'adamatom/blameline.vim'

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'bling/vim-bufferline'

	" 同步工具
	Plug 'kenn7/vim-arsync'

	"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" git工具
	Plug 'airblade/vim-gitgutter'

	" airline显示分支
	Plug 'tpope/vim-fugitive'

	" cpp 高亮
	Plug 'octol/vim-cpp-enhanced-highlight'

	" 皮肤
	Plug 'morhetz/gruvbox'
	Plug 'tyrannicaltoucan/vim-quantum'
call plug#end()


source ~/.vim_my/plugs/blameline.vim
source ~/.vim_my/plugs/airline.vim
source ~/.vim_my/plugs/bufferline.vim
source ~/.vim_my/plugs/arsync.vim
source ~/.vim_my/plugs/tagbar.vim
source ~/.vim_my/plugs/coc.vim
source ~/.vim_my/plugs/gitgutter.vim
