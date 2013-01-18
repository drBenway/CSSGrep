mkdir CSSGrep-result

find . -name "*.css" > CSSGrep-result/files.txt
cat CSSGrep-result/files.txt |xargs grep "float" > CSSGrep-result/float.txt
cat CSSGrep-result/files.txt |xargs grep "font-size" > CSSGrep-result/font-size.txt
cat CSSGrep-result/files.txt |xargs grep "color" > CSSGrep-result/color.txt
cat CSSGrep-result/files.txt |xargs grep "line-height" > CSSGrep-result/line-height.txt
cat CSSGrep-result/files.txt |xargs grep "h1" > CSSGrep-result/h1.txt
cat CSSGrep-result/files.txt |xargs grep "h2" > CSSGrep-result/h2.txt
cat CSSGrep-result/files.txt |xargs grep "h3" > CSSGrep-result/h3.txt
cat CSSGrep-result/files.txt |xargs grep "h4" > CSSGrep-result/h4.txt
cat CSSGrep-result/files.txt |xargs grep "h5" > CSSGrep-result/h5.txt
cat CSSGrep-result/files.txt |xargs grep "h6" > CSSGrep-result/h6.txt
cat CSSGrep-result/files.txt |xargs grep "width:" > CSSGrep-result/width.txt
cat CSSGrep-result/files.txt |xargs grep "margin: 0" > CSSGrep-result/margin0.txt
cat CSSGrep-result/files.txt |xargs grep "padding: 0" > CSSGrep-result/padding0.txt
cat CSSGrep-result/files.txt |xargs grep "!important" > CSSGrep-result/important.txt
# omit quotes
cat CSSGrep-result/files.txt |xargs egrep "url\('|url\(\"" > CSSGrep-result/url.txt
# search for ids (only lines beginning with #)
cat CSSGrep-result/files.txt |xargs egrep "^#[a-zA-Z]?" > CSSGrep-result/id.txt
cd CSSGrep-result
#print the summary
wc -l * | sed -e "s/.txt/ occurences found/"