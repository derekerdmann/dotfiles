syn match pythonSphinxParamName "\s\w\+" contained

syn region pythonSphinxDirective start="^\s*:" end=":"
    \ contains=pythonSphinxParamName
    \ contained containedin=pythonString,pythonRawString

syn region pythonSphinxRType
    \ start="^\s*:rtype:\s" end="$"
    \ contained contains=ALLBUT,pythonSphinxType,pythonDecoratorName,pythonDecorator,pythonFunction,pythonDoctestValue
    \ containedin=pythonString,pythonRawString

highlight default link pythonSphinxDirective SpecialComment
highlight default link pythonSphinxRType SpecialComment
highlight default link pythonSphinxParamName Identifier
