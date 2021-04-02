class API {
  final String host = 'servicosflex.rpinfo.com.br';
  final String productPath =
      'v2.0/produtounidade/listaprodutos/0/unidade/83402711000110';

  Uri tokenUri() =>
      Uri(scheme: 'http', host: host, port: 9000, path: 'v1.1/auth');

  Uri productsUri() => Uri(
      scheme: 'http', host: host, port: 9000, path: productPath);
}
