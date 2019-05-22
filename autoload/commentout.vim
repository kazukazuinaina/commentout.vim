if !exists('g:loaded_commentout')
    finish
endif

let s:save_cpo = &cpo
set cpo&vim

function! commentout#comment(start, end) abort
    let commentout = commentout#returncomment#new(&filetype)
    echo commentout
    "execute(a:start.','.a:end.'s/^/'.commentout/')
    for for_count in range(a:start, a:end)
        let line = getline(for_count)
        call setline(for_count, commentout.line)
    endfor
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
