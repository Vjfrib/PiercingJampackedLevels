SELECT "Hello world!";
SELECT "Hello world!";
SELECT "Hello world!";

public class BancoDados extends SQLiteOpenHelper {
    public static final String NOME_BANCO = "banco.db";
    public static final String NOME_TABELA = "usuario";
    public static final int VERSAO_BANCO = 1;

    public BancoDados(Context context) {
        super(context, NOME_BANCO, null, VERSAO_BANCO);

    }

    @Override
    public void onCreate(SQLiteDatabase bd) {
        bd.execSQL("create table if not exists " +
                "usuario(_id integer primary key autoincrement, " +
                "nome text not null," +
                "login text not null," +
                " senha text not null," +
                " email text not null);");
    }

    @Override
    public void onUpgrade(SQLiteDatabase bd, int oldVersion, int newVersion) {

    }
}