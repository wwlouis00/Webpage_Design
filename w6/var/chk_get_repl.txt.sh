unset kk;aa=1;     kk=${aa:?'沒有給值喔！'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>kk的值是1
#>aa的值是1
echo $?
#>0
unset kk;unset aa; kk=${aa:?'沒有給值喔！'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>bash: aa: 沒有給值喔！
echo $?
#>1
unset kk;aa=;      kk=${aa:?'沒有給值喔！'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>bash: aa: 沒有給值喔！
echo $?
#>1

# =================

unset kk;aa=1;     kk=${aa:-'index.html'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>kk的值是1
#>aa的值是1
unset kk;unset aa; kk=${aa:-'index.html'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>kk的值是index.html
#>aa的值是
unset kk;aa=;      kk=${aa:-'index.html'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>kk的值是index.html
#>aa的值是

# =================

unset kk;aa=1;     kk=${aa:='index.html'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>kk的值是1
#>aa的值是1
unset kk;unset aa; kk=${aa:='index.html'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>kk的值是index.html
#>aa的值是index.html
unset kk;aa=;      kk=${aa:='index.html'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>kk的值是index.html
#>aa的值是index.html

# =================

unset kk;aa=1;     kk=${aa:+'index.html'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>kk的值是index.html
#>aa的值是1
unset kk;unset aa; kk=${aa:+'index.html'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>kk的值是
#>aa的值是
unset kk;aa=;      kk=${aa:+'index.html'};echo "kk的值是 $kk";echo "aa的值是 $aa"
#>kk的值是
#>aa的值是

