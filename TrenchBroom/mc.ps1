param(
    [String]$n="stars",
    [Switch]$l,
    [Switch]$v,
    [Switch]$s,
    [String]$o = "../Quake1/ctf/maps"
);

echo "Compiling Quake map $n"

& .\qbsp.exe ".\maps\$n.map" ".\bsp\$n.bsp"

if($l){
    echo "Lighting map"
    & .\light.exe ".\bsp\$n.bsp"
}

if(!$v){
    echo "Vising the map"
    & .\vis.exe ".\bsp\$n.bsp"
}

if($s){
    echo "coppying to game directory"
    cp ".\bsp\$n.bsp" $o
    cp ".\bsp\$n.prt" $o
}