<?php
//permet de faire redirect(");
function redirect(string $url): void{
    header("Location: $url");
    exit();
}