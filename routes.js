var express = require('express');
var router = express.Router();
/*@GET home page
 *Melkaneas first GET  
 */
router.get('/', function(req, res, next) {
    res.render('index', { title: 'Express' });
});
module.express = router;