let s:gradlew = escape(findfile('gradlew', '.;') . " -b " . '/home/sven/dev/hook/build.gradle', ' \')
if exists("current_compiler")
    finish
endif

if exists(":CompilerSet") != 2      " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let current_compiler = s:gradlew
execute "CompilerSet makeprg=" . s:gradlew
" copied from javac.vim + added the :compileJava bits
CompilerSet errorformat=%E:compileJava%f:%l:\ %m,%E%f:%l:\ %m,%-Z%p^,%-C%.%#,%-G%.%#
