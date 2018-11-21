<!DOCTYPE HTML>
<html class="h-100">
<head>
    <title>Kotlin für Java-Umsteiger</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="/webjars/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/prism/prism.css" />
    <link rel="stylesheet" href="/css/kotlin-demo.css" />
</head>
<body class="h-100">

<div class="container h-100">
<div class="d-flex h-100 flex-column justify-content-center">
<#include "slides/" + slide + ".ftl" ignore_missing=true>
</div>
</div>

<script src="/webjars/jquery/3.3.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="/prism/prism.js"></script>
<script>
    $(document).keyup(function(event) {
        if (event.key === "ArrowRight") {
            window.location.href = window.location.origin + '/show?slide=${nextSlide}';
        }
        if (event.key === "ArrowLeft") {
            window.location.href = window.location.origin + '/show?slide=${previousSlide}';
        }
    });
</script>

</body>
</html>