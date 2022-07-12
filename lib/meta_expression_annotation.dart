class MetaContext {
  final Map<String, dynamic> arguments;

  final Map<String, dynamic> typeArguments;

  MetaContext({
    required this.arguments,
    required this.typeArguments,
  });

  String getArgument(String name) {
    if (!arguments.containsKey(name)) {
      throw ArgumentError.value(
          name, 'name', 'Meta argument does not exist: $name');
    }

    final result = arguments[name];
    return '$result';
  }

  String getTypeArgument(String name) {
    if (!typeArguments.containsKey(name)) {
      throw ArgumentError.value(
          name, 'name', 'Meta type argument does not exist: $name');
    }

    final result = typeArguments[name];
    return '$result';
  }
}

class MetaExpression {
  const MetaExpression(String Function(MetaContext context) impl);
}
