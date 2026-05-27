.class public final Lbbp;
.super Ljava/lang/Object;

# interfaces
.implements Lbbn;


# instance fields
.field private final a:Lapt;

.field private final b:Lapo;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbp;->a:Lapt;

    new-instance v0, Lbbo;

    invoke-direct {v0, p1}, Lbbo;-><init>(Lapt;)V

    iput-object v0, p0, Lbbp;->b:Lapo;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lapy;->g(ILjava/lang/String;)V

    iget-object p1, p0, Lbbp;->a:Lapt;

    invoke-virtual {p1}, Lapt;->l()V

    iget-object p1, p0, Lbbp;->a:Lapt;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lapy;->j()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lapy;->j()V

    throw v1
.end method

.method public final b(Lbbm;)V
    .locals 1

    iget-object v0, p0, Lbbp;->a:Lapt;

    invoke-virtual {v0}, Lapt;->l()V

    iget-object v0, p0, Lbbp;->a:Lapt;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    iget-object v0, p0, Lbbp;->b:Lapo;

    invoke-virtual {v0, p1}, Lapo;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lbbp;->a:Lapt;

    invoke-virtual {p1}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbbp;->a:Lapt;

    invoke-virtual {p1}, Lapt;->o()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lbbp;->a:Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    throw p1
.end method
