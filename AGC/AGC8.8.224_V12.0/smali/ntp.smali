.class final Lntp;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field final synthetic a:Lntq;


# direct methods
.method public constructor <init>(Lntq;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lntp;->a:Lntq;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    iget-object v0, p0, Lntp;->a:Lntq;

    iget-object v0, v0, Lntq;->b:Lnti;

    iget-object v0, v0, Lnti;->d:Ljava/lang/String;

    sget-object v1, Lntq;->d:Lloi;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "Creating SQLite table as:\n%s"

    invoke-virtual {v1, v3, v2}, Lloi;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "In-memory database will never call onUpgrade."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
