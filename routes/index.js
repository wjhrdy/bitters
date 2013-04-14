
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index', { title: 'Bitters' });
};

exports.about = function(req, res){
	res.render('index', { title: 'About Bitters'});
};