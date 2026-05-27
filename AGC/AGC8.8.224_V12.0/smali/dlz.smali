.class public final Ldlz;
.super Ljava/lang/Object;

# interfaces
.implements Ldlv;


# instance fields
.field public final a:Lapt;

.field private final b:Lapo;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldlz;->a:Lapt;

    new-instance v0, Ldlw;

    invoke-direct {v0, p1}, Ldlw;-><init>(Lapt;)V

    iput-object v0, p0, Ldlz;->b:Lapo;

    new-instance v0, Ldlx;

    invoke-direct {v0, p1}, Ldlx;-><init>(Lapt;)V

    new-instance v0, Ldly;

    invoke-direct {v0, p1}, Ldly;-><init>(Lapt;)V

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/util/List;
    .locals 8

    const-string v0, "SELECT * FROM shot_log WHERE shot_id = ? ORDER BY sequence"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Lapy;->e(IJ)V

    iget-object p1, p0, Ldlz;->a:Lapt;

    invoke-virtual {p1}, Lapt;->l()V

    iget-object p1, p0, Ldlz;->a:Lapt;

    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "sequence"

    invoke-static {p1, p2}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v1, "shot_id"

    invoke-static {p1, v1}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "time_millis"

    invoke-static {p1, v2}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "message"

    invoke-static {p1, v3}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ldma;

    invoke-direct {v5}, Ldma;-><init>()V

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Ldma;->a:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Ldma;->b:J

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Ldma;->c:J

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    iput-object v6, v5, Ldma;->d:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ldma;->d:Ljava/lang/String;

    :goto_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lapy;->j()V

    return-object v4

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lapy;->j()V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public final b(Ldma;)V
    .locals 1

    iget-object v0, p0, Ldlz;->a:Lapt;

    invoke-virtual {v0}, Lapt;->l()V

    iget-object v0, p0, Ldlz;->a:Lapt;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    iget-object v0, p0, Ldlz;->b:Lapo;

    invoke-virtual {v0, p1}, Lapo;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Ldlz;->a:Lapt;

    invoke-virtual {p1}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ldlz;->a:Lapt;

    invoke-virtual {p1}, Lapt;->o()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ldlz;->a:Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    throw p1
.end method
