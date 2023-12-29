" Disable toolbar and menu
set guioptions-=T
set guioptions-=m

" Keep the window size constant when adding scrollbars, menus, etc.
set guioptions+=k

if has('win32')
set guifont=CaskaydiaMono_NFM_SemiLight:h8.5,Cascadia_Mono_PL:h8.5,Consolas:h9
elseif has('mac')
set guifont=MesloLGS-NF-Regular:h10
endif

set t_vb=
set noerrorbells
set novisualbell

map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

set lines=74 columns=140
