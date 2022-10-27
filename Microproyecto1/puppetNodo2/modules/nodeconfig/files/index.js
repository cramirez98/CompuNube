const Consul = require('consul');
const express = require('express');

const SERVICE_NAME='NodeJSWebServer';
const SERVICE_ID='WebServerNodo2-'+process.argv[2];
const SCHEME='http';
const HOST='192.168.100.8';
const PORT=process.argv[2]*1;
const PID = process.pid;

/* Inicializacion del server */
const app = express();
const consul = new Consul();

app.set('views', './views');
app.set('view engine', 'ejs');

app.get('/health', function (req, res) {
    console.log('Health check!');
    res.end( "Ok." );
    });

app.get('/', (req, res) => {
  res.render('index', {
    SERVICE_NAME: 'SERVICE NAME: ' + SERVICE_NAME,
    SERVICE_ID: 'SERVICE ID: ' + SERVICE_ID,
    HOST: 'SERVICE HOST: ' + HOST + ':' + PORT
  });
});

app.listen(PORT, function () {
    console.log('Servicio iniciado en:'+SCHEME+'://'+HOST+':'+PORT+'!');
    });

/* Registro del servicio */
var check = {
  id: SERVICE_ID,
  name: SERVICE_NAME,
  address: HOST,
  port: PORT, 
  check: {
	   http: SCHEME+'://'+HOST+':'+PORT+'/health',
	   ttl: '5s',
	   interval: '5s',
     timeout: '5s',
     deregistercriticalserviceafter: '1m'
	   }
  };
 
consul.agent.service.register(check, function(err) {
  	if (err) throw err;
  	});