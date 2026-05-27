.class public final Ldls;
.super Ljava/lang/Object;

# interfaces
.implements Ldlm;


# instance fields
.field public final a:Lapt;

.field public final b:Lapo;

.field public final c:Laqa;

.field private final d:Lapn;

.field private final e:Laqa;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldls;->a:Lapt;

    new-instance v0, Ldln;

    invoke-direct {v0, p1}, Ldln;-><init>(Lapt;)V

    iput-object v0, p0, Ldls;->b:Lapo;

    new-instance v0, Ldlo;

    invoke-direct {v0, p1}, Ldlo;-><init>(Lapt;)V

    new-instance v0, Ldlp;

    invoke-direct {v0, p1}, Ldlp;-><init>(Lapt;)V

    iput-object v0, p0, Ldls;->d:Lapn;

    new-instance v0, Ldlq;

    invoke-direct {v0, p1}, Ldlq;-><init>(Lapt;)V

    iput-object v0, p0, Ldls;->c:Laqa;

    new-instance v0, Ldlr;

    invoke-direct {v0, p1}, Ldlr;-><init>(Lapt;)V

    iput-object v0, p0, Ldls;->e:Laqa;

    return-void
.end method


# virtual methods
.method public final a(JJ)I
    .locals 2

    iget-object v0, p0, Ldls;->a:Lapt;

    invoke-virtual {v0}, Lapt;->l()V

    iget-object v0, p0, Ldls;->e:Laqa;

    invoke-virtual {v0}, Laqa;->e()Larf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Lare;->e(IJ)V

    const/4 p3, 0x2

    invoke-virtual {v0, p3, p1, p2}, Lare;->e(IJ)V

    iget-object p1, p0, Ldls;->a:Lapt;

    invoke-virtual {p1}, Lapt;->m()V

    :try_start_0
    invoke-virtual {v0}, Larf;->a()I

    move-result p1

    iget-object p2, p0, Ldls;->a:Lapt;

    invoke-virtual {p2}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Ldls;->a:Lapt;

    invoke-virtual {p2}, Lapt;->o()V

    iget-object p2, p0, Ldls;->e:Laqa;

    invoke-virtual {p2, v0}, Laqa;->g(Larf;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Ldls;->a:Lapt;

    invoke-virtual {p2}, Lapt;->o()V

    iget-object p2, p0, Ldls;->e:Laqa;

    invoke-virtual {p2, v0}, Laqa;->g(Larf;)V

    throw p1
.end method

.method public final b(J)Ldlu;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM shots WHERE shot_id = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v3

    move-wide/from16 v4, p1

    invoke-virtual {v3, v2, v4, v5}, Lapy;->e(IJ)V

    iget-object v0, v1, Ldls;->a:Lapt;

    invoke-virtual {v0}, Lapt;->l()V

    iget-object v0, v1, Ldls;->a:Lapt;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "shot_id"

    invoke-static {v5, v0}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "title"

    invoke-static {v5, v6}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "start_millis"

    invoke-static {v5, v7}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "persisted_millis"

    invoke-static {v5, v8}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "canceled_millis"

    invoke-static {v5, v9}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "deleted_millis"

    invoke-static {v5, v10}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "most_recent_event_millis"

    invoke-static {v5, v11}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "capture_session_type"

    invoke-static {v5, v12}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "capture_session_shot_id"

    invoke-static {v5, v13}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "pid"

    invoke-static {v5, v14}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "stuck"

    invoke-static {v5, v15}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "failed"

    invoke-static {v5, v2}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_5

    new-instance v4, Ldlu;

    invoke-direct {v4}, Ldlu;-><init>()V

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Ldlu;->a:J

    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v4, Ldlu;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Ldlu;->b:Ljava/lang/String;

    :goto_0
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Ldlu;->c:J

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Ldlu;->d:J

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Ldlu;->e:J

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Ldlu;->f:J

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Ldlu;->g:J

    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v4, Ldlu;->h:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Ldlu;->h:Ljava/lang/String;

    :goto_1
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v4, Ldlu;->i:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Ldlu;->i:Ljava/lang/String;

    :goto_2
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Ldlu;->j:J

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v4, Ldlu;->k:Z

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v4, Ldlu;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    move-object v4, v0

    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Lapy;->j()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Lapy;->j()V

    throw v0
.end method

.method public final c(Ldlu;)V
    .locals 1

    iget-object v0, p0, Ldls;->a:Lapt;

    invoke-virtual {v0}, Lapt;->l()V

    iget-object v0, p0, Ldls;->a:Lapt;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    iget-object v0, p0, Ldls;->d:Lapn;

    invoke-virtual {v0, p1}, Lapn;->a(Ljava/lang/Object;)I

    iget-object p1, p0, Ldls;->a:Lapt;

    invoke-virtual {p1}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ldls;->a:Lapt;

    invoke-virtual {p1}, Lapt;->o()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ldls;->a:Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    throw p1
.end method
