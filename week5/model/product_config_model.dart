class ProductConfig {
  // Bu instance sadece bu sayfada görülsün.
  static final ProductConfig instance = ProductConfig._('a');

  final String apiKey;
  ProductConfig._(this.apiKey);
}
