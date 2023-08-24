function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'NonProd'
  }
//  var config = {
//    env: env,
//    globalURL: 'https://reqres.in/api/',
//    globalContentType: 'application/json'
//  }
//  if (env == 'dev') {
//    // customize
//    // e.g. config.foo = 'bar';
//  } else if (env == 'e2e') {
//    // customize
//  }
//  return config;
    var getConfig = karate.read("classpath:karate/configurations.yml");
    return getConfig[env];
}