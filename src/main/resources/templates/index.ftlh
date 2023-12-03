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

    <h1>Předvánoční příprava</h1>
    [#list posty.content as post]
    <table class="u-full-width">
        <thead>
        <tr>
            <th>Název</th>
            <th>Autor</th>
            <th>Datum vydání</th>
            <th>Malá ochutnávka</th>
        </tr>
        </thead>
        <tbody>
            <tr>
                <td>${post.title}</td>
                <td>${post.author}</td>
                <td>${post.published?date?string}</td>
                <td>${post.perex?no_esc}</td>

                <td><a href="/post/${post.slug}">Přečíst</a></td>
            </tr>
        [/#list]
        </tbody>
    </table>
</body>
</html>
