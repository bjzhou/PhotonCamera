.class final Lbdf;
.super Lbdg;


# instance fields
.field final synthetic a:Lazd;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method public constructor <init>(Lazd;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lbdf;->a:Lazd;

    iput-object p2, p0, Lbdf;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lbdf;->c:Z

    invoke-direct {p0}, Lbdg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lbdf;->a:Lazd;

    iget-object v0, v0, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v1

    iget-object v2, p0, Lbdf;->b:Ljava/lang/String;

    const-string v3, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v3

    if-nez v2, :cond_0

    invoke-virtual {v3, v4}, Lapy;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v4, v2}, Lapy;->g(ILjava/lang/String;)V

    :goto_0
    move-object v2, v1

    check-cast v2, Lbcy;

    iget-object v2, v2, Lbcy;->a:Lapt;

    invoke-virtual {v2}, Lapt;->l()V

    check-cast v1, Lbcy;

    iget-object v1, v1, Lbcy;->a:Lapt;

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Lapy;->j()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lbdf;->a:Lazd;

    invoke-static {v3, v2}, Lbdf;->c(Lazd;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lapt;->q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lapt;->o()V

    iget-boolean v0, p0, Lbdf;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbdf;->a:Lazd;

    invoke-static {v0}, Lbdf;->d(Lazd;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Lapy;->j()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lapt;->o()V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
