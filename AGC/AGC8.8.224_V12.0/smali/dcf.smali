.class public final synthetic Ldcf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcvf;Lhpx;JI)V
    .locals 0

    iput p5, p0, Ldcf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldcf;->c:Ljava/lang/Object;

    iput-wide p3, p0, Ldcf;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Ldch;Lkbo;JI)V
    .locals 0

    iput p5, p0, Ldcf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldcf;->c:Ljava/lang/Object;

    iput-wide p3, p0, Ldcf;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Ldlk;JLj$/time/Instant;I)V
    .locals 0

    iput p5, p0, Ldcf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcf;->b:Ljava/lang/Object;

    iput-wide p2, p0, Ldcf;->a:J

    iput-object p4, p0, Ldcf;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfqu;JLfqy;I)V
    .locals 0

    iput p5, p0, Ldcf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcf;->b:Ljava/lang/Object;

    iput-wide p2, p0, Ldcf;->a:J

    iput-object p4, p0, Ldcf;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfrc;Lgxy;JI)V
    .locals 0

    iput p5, p0, Ldcf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldcf;->c:Ljava/lang/Object;

    iput-wide p3, p0, Ldcf;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Liqj;Ljava/lang/String;JI)V
    .locals 0

    iput p5, p0, Ldcf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldcf;->c:Ljava/lang/Object;

    iput-wide p3, p0, Ldcf;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;JLjava/util/Map;I)V
    .locals 0

    iput p5, p0, Ldcf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcf;->c:Ljava/lang/Object;

    iput-wide p2, p0, Ldcf;->a:J

    iput-object p4, p0, Ldcf;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lken;Lgxl;JI)V
    .locals 0

    iput p5, p0, Ldcf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcf;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldcf;->b:Ljava/lang/Object;

    iput-wide p3, p0, Ldcf;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lkfp;JLjava/util/Set;I)V
    .locals 0

    iput p5, p0, Ldcf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcf;->b:Ljava/lang/Object;

    iput-wide p2, p0, Ldcf;->a:J

    iput-object p4, p0, Ldcf;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkib;JLjava/util/Set;I)V
    .locals 0

    iput p5, p0, Ldcf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcf;->b:Ljava/lang/Object;

    iput-wide p2, p0, Ldcf;->a:J

    iput-object p4, p0, Ldcf;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Ldcf;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Ldcf;->b:Ljava/lang/Object;

    iget-wide v2, v1, Ldcf;->a:J

    iget-object v4, v1, Ldcf;->c:Ljava/lang/Object;

    check-cast v0, Lkib;

    iget-object v0, v0, Lkib;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_0
    iget-object v0, v1, Ldcf;->b:Ljava/lang/Object;

    iget-wide v2, v1, Ldcf;->a:J

    iget-object v4, v1, Ldcf;->c:Ljava/lang/Object;

    check-cast v0, Lkfp;

    iget-object v0, v0, Lkfp;->a:Lkfg;

    invoke-virtual {v0, v2, v3, v4}, Lkfg;->bu(JLjava/util/Set;)V

    return-void

    :pswitch_1
    iget-object v0, v1, Ldcf;->b:Ljava/lang/Object;

    iget-object v3, v1, Ldcf;->c:Ljava/lang/Object;

    iget-wide v4, v1, Ldcf;->a:J

    check-cast v0, Liqj;

    iget-object v0, v0, Liqj;->j:Lipw;

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    sget-object v2, Lipn;->b:Lipn;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_0
    iget-object v6, v2, Lnwn;->b:Lnws;

    check-cast v6, Lipn;

    iput-wide v4, v6, Lipn;->a:J

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lipn;

    invoke-virtual {v2}, Lnve;->J()[B

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_0
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lipw;->d(Ljava/lang/String;[B)V

    return-void

    :pswitch_2
    iget-object v0, v1, Ldcf;->c:Ljava/lang/Object;

    iget-object v2, v1, Ldcf;->b:Ljava/lang/Object;

    iget-wide v6, v1, Ldcf;->a:J

    :try_start_0
    invoke-interface {v0}, Lken;->d()Lker;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v2}, Lgxl;->h()Lgxy;

    move-result-object v0

    iget v0, v0, Lgxy;->a:I

    sget-object v0, Liuw;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    sget-object v3, Livb;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v3, v9}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v3

    invoke-static {v0, v3}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    new-instance v3, Lgmm;

    invoke-direct {v3, v2}, Lgmm;-><init>(Lgxl;)V

    invoke-interface {v8, v0, v3}, Lker;->j(Ljava/util/Set;Lkfg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v8}, Lker;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lkdf; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-interface {v8}, Lker;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    const-class v0, Ljava/lang/Throwable;

    const-string v8, "addSuppressed"

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Throwable;

    aput-object v10, v9, v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lkdf; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    sget-object v2, Lgmn;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xbc4

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "3A_DEBUG request for frame=%d failed."

    invoke-interface {v0, v2, v6, v7}, Lnah;->q(Ljava/lang/String;J)V

    return-void

    :pswitch_3
    iget-object v0, v1, Ldcf;->b:Ljava/lang/Object;

    iget-wide v2, v1, Ldcf;->a:J

    iget-object v4, v1, Ldcf;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lfqu;

    iget-object v6, v5, Lfqu;->b:Lfrc;

    iget-object v6, v6, Lfrc;->b:Lkaq;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Microvideo ended at <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v5, v5, Lfqu;->b:Lfrc;

    monitor-enter v5

    :try_start_6
    move-object v6, v4

    check-cast v6, Lfqy;

    iget-object v6, v6, Lfqy;->c:Lmym;

    invoke-virtual {v6}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v2}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v2

    check-cast v4, Lfqy;

    iput-object v2, v4, Lfqy;->c:Lmym;

    check-cast v0, Lfqu;

    iget-object v0, v0, Lfqu;->b:Lfrc;

    invoke-virtual {v0}, Lfrc;->k()V

    monitor-exit v5

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_4
    iget-object v0, v1, Ldcf;->b:Ljava/lang/Object;

    iget-object v2, v1, Ldcf;->c:Ljava/lang/Object;

    iget-wide v3, v1, Ldcf;->a:J

    check-cast v2, Lgxy;

    check-cast v0, Lfrc;

    invoke-virtual {v0, v2, v3, v4}, Lfrc;->i(Lgxy;J)V

    return-void

    :pswitch_5
    iget-object v2, v1, Ldcf;->b:Ljava/lang/Object;

    iget-wide v6, v1, Ldcf;->a:J

    iget-object v8, v1, Ldcf;->c:Ljava/lang/Object;

    :try_start_7
    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->g:Ldlm;

    invoke-interface {v0, v6, v7}, Ldlm;->b(J)Ldlu;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v9, v8

    check-cast v9, Lj$/time/Instant;

    invoke-virtual {v9}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v9

    iput-wide v9, v0, Ldlu;->f:J

    iput-wide v9, v0, Ldlu;->g:J

    move-object v9, v2

    check-cast v9, Ldlk;

    iget-object v9, v9, Ldlk;->g:Ldlm;

    invoke-interface {v9, v0}, Ldlm;->c(Ldlu;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_2
    return-void

    :catch_3
    move-exception v0

    check-cast v2, Ldlk;

    iget-object v2, v2, Ldlk;->d:Lkaq;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v8, v3, v5

    const-string v4, "SQLite error in deletedImpl for id=%d time=%s"

    invoke-static {v4, v3}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_6
    iget-object v2, v1, Ldcf;->b:Ljava/lang/Object;

    iget-wide v6, v1, Ldcf;->a:J

    iget-object v8, v1, Ldcf;->c:Ljava/lang/Object;

    :try_start_8
    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->g:Ldlm;

    invoke-interface {v0, v6, v7}, Ldlm;->b(J)Ldlu;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v9, v8

    check-cast v9, Lj$/time/Instant;

    invoke-virtual {v9}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v9

    iput-wide v9, v0, Ldlu;->d:J

    iput-wide v9, v0, Ldlu;->g:J

    move-object v9, v2

    check-cast v9, Ldlk;

    iget-object v9, v9, Ldlk;->g:Ldlm;

    invoke-interface {v9, v0}, Ldlm;->c(Ldlu;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_3
    return-void

    :catch_4
    move-exception v0

    check-cast v2, Ldlk;

    iget-object v2, v2, Ldlk;->d:Lkaq;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v8, v3, v5

    const-string v4, "SQLite error in persistedImpl for id=%d time=%s"

    invoke-static {v4, v3}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_7
    iget-object v2, v1, Ldcf;->b:Ljava/lang/Object;

    iget-wide v6, v1, Ldcf;->a:J

    iget-object v8, v1, Ldcf;->c:Ljava/lang/Object;

    :try_start_9
    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->g:Ldlm;

    invoke-interface {v0, v6, v7}, Ldlm;->b(J)Ldlu;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v9, v0, Ldlu;->k:Z

    if-nez v9, :cond_4

    iput-boolean v5, v0, Ldlu;->k:Z

    move-object v9, v2

    check-cast v9, Ldlk;

    iget-object v9, v9, Ldlk;->g:Ldlm;

    invoke-interface {v9, v0}, Ldlm;->c(Ldlu;)V

    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->h:Ldlv;

    const-string v9, "marked stuck"

    move-object v10, v8

    check-cast v10, Lj$/time/Instant;

    invoke-static {v6, v7, v10, v9}, Ldlk;->j(JLj$/time/Instant;Ljava/lang/String;)Ldma;

    move-result-object v9

    invoke-interface {v0, v9}, Ldlv;->b(Ldma;)V

    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->h:Ldlv;

    invoke-interface {v0, v6, v7}, Ldlv;->a(J)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ldlk;->k(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v2

    check-cast v9, Ldlk;

    iget-object v9, v9, Ldlk;->d:Lkaq;

    const-string v10, "Stuck shot %s detected. Log contents:\n%s"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v4

    aput-object v0, v11, v5

    invoke-static {v10, v11}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lkaq;->d(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->d:Lkaq;

    const-string v9, "Attempted to mark shot %s as stuck, but couldn\'t find it"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lkaq;->i(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_5

    return-void

    :catch_5
    move-exception v0

    check-cast v2, Ldlk;

    iget-object v2, v2, Ldlk;->d:Lkaq;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v8, v3, v5

    const-string v4, "SQLite error in markShotStuckImpl for id=%d time=%s"

    invoke-static {v4, v3}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_8
    iget-object v2, v1, Ldcf;->b:Ljava/lang/Object;

    iget-wide v6, v1, Ldcf;->a:J

    iget-object v8, v1, Ldcf;->c:Ljava/lang/Object;

    :try_start_a
    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->g:Ldlm;

    move-object v9, v8

    check-cast v9, Lj$/time/Instant;

    invoke-virtual {v9}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v9

    invoke-interface {v0, v6, v7, v9, v10}, Ldlm;->a(JJ)I

    move-result v0

    if-eq v0, v5, :cond_6

    move-object v9, v2

    check-cast v9, Ldlk;

    iget-object v9, v9, Ldlk;->d:Lkaq;

    const-string v10, "makingProgress updated %d rows for id=%d with time=%s (expected 1)"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v5

    aput-object v8, v11, v3

    invoke-static {v10, v11}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lkaq;->d(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6

    :cond_6
    return-void

    :catch_6
    move-exception v0

    check-cast v2, Ldlk;

    iget-object v2, v2, Ldlk;->d:Lkaq;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v8, v3, v5

    const-string v4, "SQLite error in makingProgressImpl for id=%d time=%s"

    invoke-static {v4, v3}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_9
    iget-object v2, v1, Ldcf;->b:Ljava/lang/Object;

    iget-wide v6, v1, Ldcf;->a:J

    iget-object v8, v1, Ldcf;->c:Ljava/lang/Object;

    :try_start_b
    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->g:Ldlm;

    invoke-interface {v0, v6, v7}, Ldlm;->b(J)Ldlu;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v9, v8

    check-cast v9, Lj$/time/Instant;

    invoke-virtual {v9}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v9

    iput-wide v9, v0, Ldlu;->e:J

    iput-wide v9, v0, Ldlu;->g:J

    move-object v9, v2

    check-cast v9, Ldlk;

    iget-object v9, v9, Ldlk;->g:Ldlm;

    invoke-interface {v9, v0}, Ldlm;->c(Ldlu;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_7

    :cond_7
    return-void

    :catch_7
    move-exception v0

    check-cast v2, Ldlk;

    iget-object v2, v2, Ldlk;->d:Lkaq;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v8, v3, v5

    const-string v4, "SQLite error in canceledImpl for id=%d time=%s"

    invoke-static {v4, v3}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_a
    iget-object v2, v1, Ldcf;->b:Ljava/lang/Object;

    iget-wide v6, v1, Ldcf;->a:J

    iget-object v8, v1, Ldcf;->c:Ljava/lang/Object;

    :try_start_c
    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->g:Ldlm;

    invoke-interface {v0, v6, v7}, Ldlm;->b(J)Ldlu;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v9, v0, Ldlu;->l:Z

    if-nez v9, :cond_8

    iput-boolean v5, v0, Ldlu;->l:Z

    move-object v9, v2

    check-cast v9, Ldlk;

    iget-object v9, v9, Ldlk;->g:Ldlm;

    invoke-interface {v9, v0}, Ldlm;->c(Ldlu;)V

    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->h:Ldlv;

    const-string v9, "marked failed"

    move-object v10, v8

    check-cast v10, Lj$/time/Instant;

    invoke-static {v6, v7, v10, v9}, Ldlk;->j(JLj$/time/Instant;Ljava/lang/String;)Ldma;

    move-result-object v9

    invoke-interface {v0, v9}, Ldlv;->b(Ldma;)V

    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->h:Ldlv;

    invoke-interface {v0, v6, v7}, Ldlv;->a(J)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ldlk;->k(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v2

    check-cast v9, Ldlk;

    iget-object v9, v9, Ldlk;->d:Lkaq;

    const-string v10, "Failed shot %s detected. Log contents:\n%s"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v4

    aput-object v0, v11, v5

    invoke-static {v10, v11}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lkaq;->d(Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    move-object v0, v2

    check-cast v0, Ldlk;

    iget-object v0, v0, Ldlk;->d:Lkaq;

    const-string v9, "Attempted to mark shot %s as failed, but couldn\'t find it"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lkaq;->i(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_8

    return-void

    :catch_8
    move-exception v0

    check-cast v2, Ldlk;

    iget-object v2, v2, Ldlk;->d:Lkaq;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v8, v3, v5

    const-string v4, "SQLite error in markShotFailedImpl for id=%d time=%s"

    invoke-static {v4, v3}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_b
    iget-object v0, v1, Ldcf;->c:Ljava/lang/Object;

    iget-wide v2, v1, Ldcf;->a:J

    iget-object v4, v1, Ldcf;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldga;

    invoke-interface {v5, v2, v3, v4}, Ldga;->by(JLjava/util/Map;)V

    goto :goto_3

    :cond_a
    return-void

    :pswitch_c
    iget-object v0, v1, Ldcf;->c:Ljava/lang/Object;

    iget-wide v2, v1, Ldcf;->a:J

    iget-object v4, v1, Ldcf;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldft;

    invoke-interface {v5, v2, v3, v4}, Ldft;->g(JLjava/util/Map;)V

    goto :goto_4

    :cond_b
    return-void

    :pswitch_d
    iget-object v0, v1, Ldcf;->b:Ljava/lang/Object;

    iget-object v2, v1, Ldcf;->c:Ljava/lang/Object;

    iget-wide v7, v1, Ldcf;->a:J

    sget-object v4, Lgya;->n:Lgya;

    check-cast v2, Lhpx;

    iget-object v3, v2, Lhpx;->d:Lctd;

    invoke-interface {v3}, Lctd;->d()Lmqp;

    move-result-object v5

    iget-object v3, v2, Lhpx;->d:Lctd;

    invoke-interface {v3}, Lctd;->c()Lmqp;

    move-result-object v6

    iget-object v9, v2, Lhpx;->l:Ljava/lang/String;

    iget-boolean v11, v2, Lhpx;->m:Z

    iget-object v12, v2, Lhpx;->n:Lgxz;

    move-object v3, v0

    check-cast v3, Lcvf;

    const-string v10, ""

    invoke-virtual/range {v3 .. v12}, Lcvf;->e(Lgya;Lmqp;Lmqp;JLjava/lang/String;Ljava/lang/String;ZLgxz;)V

    return-void

    :pswitch_e
    iget-object v0, v1, Ldcf;->b:Ljava/lang/Object;

    iget-object v3, v1, Ldcf;->c:Ljava/lang/Object;

    iget-wide v6, v1, Ldcf;->a:J

    check-cast v0, Ldch;

    iget-object v8, v0, Ldch;->e:Ldja;

    invoke-virtual {v8}, Ldja;->b()V

    iget-object v8, v0, Ldch;->b:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v8}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->w()Ldck;

    move-result-object v8

    check-cast v3, Lkbo;

    iget v9, v3, Lkbo;->u:I

    move-object v10, v8

    check-cast v10, Ldcp;

    iget-object v11, v10, Ldcp;->a:Lapt;

    invoke-virtual {v11}, Lapt;->m()V

    :try_start_d
    new-instance v11, Ldcj;

    invoke-direct {v11, v9}, Ldcj;-><init>(I)V

    move-object v12, v8

    check-cast v12, Ldcp;

    iget-object v12, v12, Ldcp;->a:Lapt;

    invoke-virtual {v12}, Lapt;->l()V

    move-object v12, v8

    check-cast v12, Ldcp;

    iget-object v12, v12, Ldcp;->a:Lapt;

    invoke-virtual {v12}, Lapt;->m()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    move-object v12, v8

    check-cast v12, Ldcp;

    iget-object v12, v12, Ldcp;->b:Lapo;

    invoke-virtual {v12, v11}, Lapo;->c(Ljava/lang/Object;)V

    move-object v11, v8

    check-cast v11, Ldcp;

    iget-object v11, v11, Ldcp;->a:Lapt;

    invoke-virtual {v11}, Lapt;->q()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    move-object v11, v8

    check-cast v11, Ldcp;

    iget-object v11, v11, Ldcp;->a:Lapt;

    invoke-virtual {v11}, Lapt;->o()V

    const-string v11, "SELECT * FROM EnumerationErrorCounts WHERE errorCode = ?"

    invoke-static {v11, v5}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v11

    int-to-long v12, v9

    invoke-virtual {v11, v5, v12, v13}, Lapy;->e(IJ)V

    move-object v9, v8

    check-cast v9, Ldcp;

    iget-object v9, v9, Ldcp;->a:Lapt;

    invoke-virtual {v9}, Lapt;->l()V

    move-object v9, v8

    check-cast v9, Ldcp;

    iget-object v9, v9, Ldcp;->a:Lapt;

    invoke-static {v9, v11, v4}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    const-string v9, "errorCode"

    invoke-static {v4, v9}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v12, "failuresBeforeReboot"

    invoke-static {v4, v12}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "failuresAfterReboot"

    invoke-static {v4, v13}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "rebootCount"

    invoke-static {v4, v14}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "lastFailureTimestamp"

    invoke-static {v4, v15}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v9, Ldcj;

    invoke-direct {v9, v2}, Ldcj;-><init>(I)V

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v9, Ldcj;->b:I

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v9, Ldcj;->c:I

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v9, Ldcj;->d:I

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v9, Ldcj;->e:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object v2, v9

    goto :goto_5

    :cond_c
    :goto_5
    :try_start_11
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Lapy;->j()V

    check-cast v8, Ldcp;

    iget-object v4, v8, Ldcp;->a:Lapt;

    invoke-virtual {v4}, Lapt;->q()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    iget-object v4, v10, Ldcp;->a:Lapt;

    invoke-virtual {v4}, Lapt;->o()V

    iget-wide v8, v2, Ldcj;->e:J

    invoke-static {v6, v7, v8, v9}, Ldch;->a(JJ)J

    move-result-wide v8

    iget-object v4, v0, Ldch;->d:Lmrl;

    invoke-interface {v4}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v10, v4

    cmp-long v4, v8, v10

    if-ltz v4, :cond_d

    iget-object v2, v0, Ldch;->b:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->w()Ldck;

    move-result-object v2

    invoke-virtual {v2}, Ldck;->a()V

    new-instance v2, Ldcj;

    iget v3, v3, Lkbo;->u:I

    invoke-direct {v2, v3}, Ldcj;-><init>(I)V

    :cond_d
    iget v3, v2, Ldcj;->d:I

    if-nez v3, :cond_e

    iget v3, v2, Ldcj;->b:I

    add-int/2addr v3, v5

    iput v3, v2, Ldcj;->b:I

    goto :goto_6

    :cond_e
    iget v3, v2, Ldcj;->c:I

    add-int/2addr v3, v5

    iput v3, v2, Ldcj;->c:I

    :goto_6
    iput-wide v6, v2, Ldcj;->e:J

    iget-object v3, v0, Ldch;->b:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->w()Ldck;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ldcp;

    iget-object v6, v4, Ldcp;->a:Lapt;

    invoke-virtual {v6}, Lapt;->l()V

    iget-object v6, v4, Ldcp;->a:Lapt;

    invoke-virtual {v6}, Lapt;->m()V

    :try_start_12
    move-object v6, v3

    check-cast v6, Ldcp;

    iget-object v6, v6, Ldcp;->c:Lapo;

    invoke-virtual {v6, v2}, Lapo;->a(Ljava/lang/Object;)V

    check-cast v3, Ldcp;

    iget-object v3, v3, Ldcp;->a:Lapt;

    invoke-virtual {v3}, Lapt;->q()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    iget-object v3, v4, Ldcp;->a:Lapt;

    invoke-virtual {v3}, Lapt;->o()V

    iget v3, v2, Ldcj;->a:I

    iget v4, v2, Ldcj;->b:I

    iget v6, v2, Ldcj;->c:I

    iget-wide v7, v2, Ldcj;->e:J

    iget v2, v2, Ldcj;->d:I

    iget-object v7, v0, Ldch;->c:Lfbz;

    invoke-interface {v7, v3, v4, v6, v2}, Lfbz;->d(IIII)V

    const-string v2, "Suspected camera device error"

    invoke-virtual {v0, v2, v5}, Ldch;->d(Ljava/lang/String;Z)V

    return-void

    :catchall_3
    move-exception v0

    iget-object v2, v4, Ldcp;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    throw v0

    :catchall_4
    move-exception v0

    :try_start_13
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Lapy;->j()V

    throw v0

    :catchall_5
    move-exception v0

    check-cast v8, Ldcp;

    iget-object v2, v8, Ldcp;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :catchall_6
    move-exception v0

    iget-object v2, v10, Ldcp;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    throw v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkfg;

    invoke-virtual {v5, v2, v3, v4}, Lkfg;->bu(JLjava/util/Set;)V

    goto :goto_7

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
