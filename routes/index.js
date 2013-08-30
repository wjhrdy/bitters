
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index', { title: 'About Me' });
};

exports.about = function(req, res){
	res.render('index', { title: 'About Bitters'});
};