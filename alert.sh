#!/usr/bin/env bash

cat << HTML
<html lang="en">
<head>
    <title>${3:-Alert}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="icon" type="image/png" href="https://cdn-icons-png.flaticon.com/512/4539/4539476.png" />
    <link rel="apple-touch-icon" href="https://cdn-icons-png.flaticon.com/512/4539/4539476.png" />
    <meta name="msapplication-TileImage" content="https://cdn-icons-png.flaticon.com/512/4539/4539476.png" />
    <meta name="msapplication-TileColor" content="#EDEDF0" />
    <meta name="theme-color" content="#EDEDF0" />
    <style>
        html, body {
            height: 100%;
            background-color: #EDEDF0;
        }

        body {
            margin: 0;
            padding: 0;
            width: 100%;
            display: table;
            font-weight: 100;
            font-family: monospace;
            font-size: 24px;
        }

        .drop-table {
            display: table;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .container {
            text-align: center;
            display: table-cell;
            vertical-align: middle;
        }

        .content {
            text-align: center;
            display: inline-block;
        }

        .content.danger {
            color: #E67c73;
        }

        .content.success {
            color: #97C1AD;
        }

        code {
            color: #E67c73;
            background-color: #fff;
            margin: 0 -8px;
            padding: 0 8px;
            border-radius: 5px;
            -webkit-user-select: all;
            -moz-user-select: all;
            -ms-user-select: all;
            user-select: all;
        }
    </style>
</head>
<body>
<div class="drop-table">
    <div class="container">
        <div class="content $2">
            $1
        </div>
    </div>
</div>
</body>
</html>
HTML
