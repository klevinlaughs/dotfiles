let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   Files']            },
    \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
    \ { 'type': 'sessions',  'header': ['   Sessions']       },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
    \ ]

let g:startify_bookmarks = [
    \ { 'fr': 'C:/Data/Solutions/TradeMe.FrEnd'},
    \ { 'nv': $MYVIMRC },
    \ { 'z': '~/.zshrc' },
    \ ]

let g:startify_change_to_vcs_root = 1

let g:startify_session_persistence = 1
