class Filme{
  //Id sera criado pelo sqLite
  final int? id;
  final String titulo;
  final bool assistindo;

  const Filme({
    this.id,
    required this.titulo,
    required this.assistindo

  });

  //Objeto map(variaveis que serão salvas no BD)
  Map<String,dynamic> toMap() => {
    'id': id,
    'titulo': titulo,
    'assistindo': assistindo ? 1:0
  };
  //Vai ler o banco de dados
  factory Filme.fromMap(Map<String, dynamic> map) => 
  Filme(
    id: map['id'] as int?,
    titulo: map['titulo'] as String,
    //Não coloquei "as bool" pos em SQLite não existe variavel boleamna
    assistindo: map['assistindo'] == 0
  );
}