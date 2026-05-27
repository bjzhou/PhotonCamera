.class public final synthetic Ldcg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldch;

.field public final synthetic b:Lkll;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Ldch;Lkll;JZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcg;->a:Ldch;

    iput-object p2, p0, Ldcg;->b:Lkll;

    iput-wide p3, p0, Ldcg;->c:J

    iput-boolean p5, p0, Ldcg;->d:Z

    iput-wide p6, p0, Ldcg;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Ldcg;->a:Ldch;

    iget-object v2, v1, Ldcg;->b:Lkll;

    iget-wide v3, v1, Ldcg;->c:J

    iget-boolean v5, v1, Ldcg;->d:Z

    iget-wide v13, v1, Ldcg;->e:J

    iget-object v6, v0, Ldch;->e:Ldja;

    invoke-virtual {v6}, Ldja;->b()V

    iget-object v6, v0, Ldch;->b:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->x()Ldcr;

    move-result-object v6

    iget-object v7, v2, Lkll;->a:Ljava/lang/String;

    move-object v8, v6

    check-cast v8, Ldcw;

    iget-object v9, v8, Ldcw;->a:Lapt;

    invoke-virtual {v9}, Lapt;->m()V

    :try_start_0
    new-instance v9, Ldcq;

    invoke-direct {v9, v7}, Ldcq;-><init>(Ljava/lang/String;)V

    move-object v10, v6

    check-cast v10, Ldcw;

    iget-object v10, v10, Ldcw;->a:Lapt;

    invoke-virtual {v10}, Lapt;->l()V

    move-object v10, v6

    check-cast v10, Ldcw;

    iget-object v10, v10, Ldcw;->a:Lapt;

    invoke-virtual {v10}, Lapt;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v10, v6

    check-cast v10, Ldcw;

    iget-object v10, v10, Ldcw;->b:Lapo;

    invoke-virtual {v10, v9}, Lapo;->a(Ljava/lang/Object;)V

    move-object v9, v6

    check-cast v9, Ldcw;

    iget-object v9, v9, Ldcw;->a:Lapt;

    invoke-virtual {v9}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object v9, v6

    check-cast v9, Ldcw;

    iget-object v9, v9, Ldcw;->a:Lapt;

    invoke-virtual {v9}, Lapt;->o()V

    const-string v9, "SELECT * FROM FatalErrorCounts WHERE cameraId = ?"

    const/4 v15, 0x1

    invoke-static {v9, v15}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v9

    if-nez v7, :cond_0

    invoke-virtual {v9, v15}, Lapy;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v15, v7}, Lapy;->g(ILjava/lang/String;)V

    :goto_0
    move-object v7, v6

    check-cast v7, Ldcw;

    iget-object v7, v7, Ldcw;->a:Lapt;

    invoke-virtual {v7}, Lapt;->l()V

    move-object v7, v6

    check-cast v7, Ldcw;

    iget-object v7, v7, Ldcw;->a:Lapt;

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v10, "cameraId"

    invoke-static {v7, v10}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "failuresBeforeRebootDuringOpen"

    invoke-static {v7, v11}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "failuresAfterRebootDuringOpen"

    invoke-static {v7, v12}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v15, "failuresBeforeRebootDuringSession"

    invoke-static {v7, v15}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "failuresAfterRebootDuringSession"

    invoke-static {v7, v1}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move-wide/from16 v16, v13

    const-string v13, "lastFatalErrorTimestamp"

    invoke-static {v7, v13}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "rebootCount"

    invoke-static {v7, v14}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    const/16 v19, 0x0

    if-eqz v18, :cond_2

    invoke-interface {v7, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v10, v19

    goto :goto_1

    :cond_1
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v10, v19

    :goto_1
    move/from16 v18, v5

    new-instance v5, Ldcq;

    invoke-direct {v5, v10}, Ldcq;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v5, Ldcq;->b:I

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v5, Ldcq;->c:I

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v5, Ldcq;->d:I

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v5, Ldcq;->e:I

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v5, Ldcq;->f:J

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v5, Ldcq;->g:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_2
    move/from16 v18, v5

    move-object/from16 v5, v19

    :goto_2
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Lapy;->j()V

    check-cast v6, Ldcw;

    iget-object v1, v6, Ldcw;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v1, v8, Ldcw;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    iget-wide v6, v5, Ldcq;->f:J

    invoke-static {v3, v4, v6, v7}, Ldch;->a(JJ)J

    move-result-wide v6

    iget-object v1, v0, Ldch;->d:Lmrl;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-ltz v1, :cond_3

    new-instance v5, Ldcq;

    iget-object v1, v2, Lkll;->a:Ljava/lang/String;

    invoke-direct {v5, v1}, Ldcq;-><init>(Ljava/lang/String;)V

    :cond_3
    if-nez v18, :cond_4

    iget v1, v5, Ldcq;->g:I

    if-nez v1, :cond_4

    iget v1, v5, Ldcq;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v5, Ldcq;->b:I

    goto :goto_3

    :cond_4
    if-nez v18, :cond_5

    iget v1, v5, Ldcq;->g:I

    if-lez v1, :cond_5

    iget v1, v5, Ldcq;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v5, Ldcq;->c:I

    goto :goto_3

    :cond_5
    if-eqz v18, :cond_6

    iget v1, v5, Ldcq;->g:I

    if-nez v1, :cond_6

    iget v1, v5, Ldcq;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v5, Ldcq;->d:I

    goto :goto_3

    :cond_6
    if-eqz v18, :cond_7

    iget v1, v5, Ldcq;->g:I

    if-lez v1, :cond_7

    iget v1, v5, Ldcq;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v5, Ldcq;->e:I

    :cond_7
    :goto_3
    iput-wide v3, v5, Ldcq;->f:J

    iget-object v1, v0, Ldch;->b:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->x()Ldcr;

    move-result-object v1

    invoke-virtual {v1, v5}, Ldcr;->a(Ldcq;)V

    iget-object v7, v5, Ldcq;->a:Ljava/lang/String;

    iget v8, v5, Ldcq;->b:I

    iget v9, v5, Ldcq;->c:I

    iget v10, v5, Ldcq;->d:I

    iget v11, v5, Ldcq;->e:I

    iget-wide v1, v5, Ldcq;->f:J

    iget v12, v5, Ldcq;->g:I

    iget-object v6, v0, Ldch;->c:Lfbz;

    move-wide/from16 v13, v16

    invoke-interface/range {v6 .. v14}, Lfbz;->e(Ljava/lang/String;IIIIIJ)V

    const-string v1, "Suspected camera device error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ldch;->d(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Lapy;->j()V

    throw v0

    :catchall_1
    move-exception v0

    check-cast v6, Ldcw;

    iget-object v1, v6, Ldcw;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, v8, Ldcw;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0
.end method
