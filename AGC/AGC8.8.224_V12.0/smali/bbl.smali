.class public final Lbbl;
.super Ljava/lang/Object;

# interfaces
.implements Lbbj;


# instance fields
.field public final a:Lapt;

.field public final b:Lapo;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbl;->a:Lapt;

    new-instance v0, Lbbk;

    invoke-direct {v0, p1}, Lbbk;-><init>(Lapt;)V

    iput-object v0, p0, Lbbl;->b:Lapo;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lapy;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lapy;->g(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lbbl;->a:Lapt;

    invoke-virtual {p1}, Lapt;->l()V

    iget-object p1, p0, Lbbl;->a:Lapt;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lapy;->j()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lapy;->j()V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
