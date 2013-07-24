var gith = require('gith').create( 9001 );

var execFile = require('child_process').execFile;

gith({
  repo: 'wjhrdy/bitters'
}).on( 'all', function( payload ) {
    if( payload.branch === 'master' )
      {
        execFile('/home/willy/code/willyhardy/bitters/hook.sh', function(error, stdout, stderr) {
          console.log( 'exec complete' );
        });
      }
});
