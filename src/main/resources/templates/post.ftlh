[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>

<h1>${post.title}</h1>
<table class="u-full-width">
    <thead>
    <tr>
        <th>Název</th>
        <th>Autor</th>
        <th>Datum vydání</th>
        <th>Malá ochutnávka</th>
        <th>Recept</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>${post.title}</td>
        <td>${post.author}</td>
        <td>${post.published?date?string}</td>
        <td>${post.perex?no_esc}</td>
        <td>${post.body?no_esc}</td>
    </tr>
    </tbody>
</table>
</body>
</html>