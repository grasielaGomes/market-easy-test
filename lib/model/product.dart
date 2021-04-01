class Product {
  int internalCode = 0;
  String description = '';
  double unitPrice = 0;
  String barCode = '';

  Product(this.internalCode, this.description, this.unitPrice, this.barCode);

  Product.fromJson(Map<String, dynamic> json) {
   internalCode = json['Codigo'];
   description = json['Descricao'];
   unitPrice = json['Preco'];
   barCode = json['CodigoBarras'];
  }


}