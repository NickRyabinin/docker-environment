<?php

phpinfo();

if (function_exists('xdebug_info')) {
    echo "Xdebug установлен и работает!<br>";
    echo "Информация о Xdebug:<br>";
    xdebug_info();
} else {
    echo "Xdebug не установлен.<br>";
}
