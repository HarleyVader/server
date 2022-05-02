app.get('/', function (req, res) {
    // JSON response
    res.json({
        'myJson':'object'
    });

    // Generate file download
    res.download('/path-to-file.txt');

    // redirect to other url
    res.redirect('/foo/bar');
    res.redirect('http://example.com');

    // Other response types
    res.send(new Buffer('whoop'));
    res.send({ some: 'json' });
    res.send('<p>some html</p>');
    res.status(404).send('Sorry, we cannot find that!');
    res.status(500).send({ error: 'something blew up' });
});