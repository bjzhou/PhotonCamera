.class final Lgjs;
.super Lkfg;


# instance fields
.field final synthetic a:Lgjt;

.field private final b:Lkeb;

.field private final c:Lfzz;

.field private final d:Lfzy;

.field private final e:Lnph;

.field private final f:Lgkr;


# direct methods
.method public constructor <init>(Lgjt;Lkeb;Lgkr;Lnph;[B[B)V
    .locals 0

    iput-object p1, p0, Lgjs;->a:Lgjt;

    invoke-direct {p0}, Lkfg;-><init>()V

    iput-object p2, p0, Lgjs;->b:Lkeb;

    iput-object p3, p0, Lgjs;->f:Lgkr;

    iget-object p1, p3, Lgkr;->b:Ljava/lang/Object;

    iput-object p1, p0, Lgjs;->c:Lfzz;

    invoke-interface {p1}, Lfzz;->h()V

    invoke-interface {p1}, Lfzz;->c()Lfzy;

    move-result-object p1

    iput-object p1, p0, Lgjs;->d:Lfzy;

    iput-object p4, p0, Lgjs;->e:Lnph;

    return-void
.end method


# virtual methods
.method public final bF()V
    .locals 1

    iget-object v0, p0, Lgjs;->d:Lfzy;

    invoke-interface {v0}, Lfzy;->h()V

    return-void
.end method

.method public final bj()V
    .locals 3

    sget-object v0, Lgjt;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "onAbort"

    const/16 v2, 0xb1b

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Lgjs;->e:Lnph;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bk()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lgjs;->a:Lgjt;

    iget-object v1, p0, Lgjs;->b:Lkeb;

    iget-object v2, v0, Lgjt;->b:Lkfj;

    iget-object v3, p0, Lgjs;->f:Lgkr;

    invoke-interface {v1, v2}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v2

    invoke-interface {v1}, Lkeb;->c()Lkou;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Lglo;

    invoke-direct {v4}, Lglo;-><init>()V

    :cond_0
    invoke-interface {v1}, Lkeb;->close()V

    const/4 v5, 0x0

    if-nez v2, :cond_1

    sget-object v0, Lgjt;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "Image available for %s but the image was null!"

    const/16 v3, 0xb28

    invoke-static {v0, v2, v1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, v0, Lgjt;->c:Lfyz;

    invoke-interface {v0, v3}, Lfyz;->a(Lgkr;)Lfyy;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    :try_start_2
    invoke-static {v4}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lfyy;->a(Lkpb;Lnou;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Lfyy;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lkdf; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    const/4 v5, 0x1

    :goto_0
    :try_start_4
    iget-object v0, p0, Lgjs;->e:Lnph;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lkdf; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    :try_start_5
    invoke-interface {v0}, Lfyy;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v5

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    :goto_1
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lkdf; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_8
    sget-object v1, Lgjt;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Error saving image."

    const/16 v3, 0xb27    # 4.001E-42f

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catch Lkdf; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    :goto_3
    iget-object v1, p0, Lgjs;->e:Lnph;

    invoke-virtual {v1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final bq()V
    .locals 0

    return-void
.end method

.method public final bw(Lkou;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lgjs;->e:Lnph;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {p1}, Lkou;->b()J

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    return-void
.end method
