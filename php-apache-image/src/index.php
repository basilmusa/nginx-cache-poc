<?php
header('Cache-Control: max-age=0, public');
echo '<pre>';
print_r(getallheaders());
echo '</pre>';
?>
