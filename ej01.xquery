
for $pais in doc("C:\Users\diaz3\OneDrive\Escritorio\1º DAW\EJERCICIOS LENG.MARCAS\XQUERY\eurovision.xml")//pais,
$representante in doc ("C:\Users\diaz3\OneDrive\Escritorio\1º DAW\EJERCICIOS LENG.MARCAS\XQUERY\eurovision.xml")//representante,
$cancion in doc("C:\Users\diaz3\OneDrive\Escritorio\1º DAW\EJERCICIOS LENG.MARCAS\XQUERY\eurovision.xml")//cancion
where $pais/@nombre/data() = $representante/@pais/data()
and $representante/@cancion = $cancion/@codigo/data()
order by $pais/@posicion
return <item>{concat($cancion/@titulo, " - ", $representante/text())}</item>