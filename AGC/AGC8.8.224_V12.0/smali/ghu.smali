.class public final Lghu;
.super Ljava/lang/Object;

# interfaces
.implements Lghh;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:Lgvu;

.field private final c:Ljuh;

.field private final d:Z

.field private e:I

.field private final f:Ljava/lang/Object;

.field private final g:Lbkb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/aaa/illumination/SelfieFlashIlluminationController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lghu;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Lgvu;Ljuh;Lbkb;Ldhi;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lghu;->f:Ljava/lang/Object;

    iput-object p1, p0, Lghu;->a:Lgvu;

    iput-object p2, p0, Lghu;->c:Ljuh;

    iput-object p3, p0, Lghu;->g:Lbkb;

    sget-object p1, Ldho;->aD:Ldhj;

    invoke-interface {p4, p1}, Ldhi;->k(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lghu;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lker;)Lghg;
    .locals 11

    new-instance v0, Lght;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lght;-><init>(I)V

    :try_start_0
    iget-object v2, p0, Lghu;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v3, p0, Lghu;->e:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lghu;->e:I

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lker;->a()Lkdz;

    move-result-object v3

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lkhs;

    iput-object v5, v6, Lkhs;->c:Ljava/lang/Integer;

    iget-boolean v5, p0, Lghu;->d:Z

    const/4 v6, 0x2

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v7, v3

    check-cast v7, Lkhs;

    iput-object v5, v7, Lkhs;->e:Ljava/lang/Integer;

    check-cast v3, Lkhs;

    invoke-virtual {v3}, Lkhs;->d()Lkht;

    move-result-object v3

    invoke-interface {p1, v3}, Lker;->d(Lkea;)Lnou;

    move-result-object p1

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v3

    iget-object v5, p0, Lghu;->c:Ljuh;

    new-instance v7, Lghq;

    invoke-direct {v7, p0, v3}, Lghq;-><init>(Lghu;Lnph;)V

    invoke-virtual {v5, v7}, Ljuh;->execute(Ljava/lang/Runnable;)V

    new-array v5, v6, [Lnou;

    aput-object p1, v5, v1

    aput-object v3, v5, v4

    invoke-static {v5}, Lnsy;->y([Lnou;)Lnou;

    move-result-object p1

    invoke-interface {p1}, Lnou;->get()Ljava/lang/Object;

    invoke-interface {v3}, Lnou;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljad;

    iget-object v4, p0, Lghu;->g:Lbkb;

    iget-wide v5, p1, Ljad;->a:J

    new-instance p1, Lgdg;

    invoke-direct {p1, v5, v6}, Lgdg;-><init>(J)V

    new-instance v5, Lghm;

    invoke-direct {v5, p1}, Lghm;-><init>(Lgdg;)V

    iget-object v1, v4, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Lgfz;

    invoke-virtual {v1, v5}, Lgfz;->n(Lkfg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p1, Lgdg;->a:Lnph;

    new-instance v10, Lfqt;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lfqt;-><init>(Lbkb;Lghm;I[B[B[B)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v10, v3}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p1, Lgdg;->a:Lnph;

    invoke-interface {p1}, Lnou;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lkdf; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    :goto_2
    sget-object v1, Lghu;->b:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Couldn\'t turn on selfie flash"

    const/16 v3, 0xa6b

    invoke-static {v1, v2, v3, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lghu;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lghu;->e:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lghu;->e:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lghu;->c:Ljuh;

    new-instance v2, Lghc;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lghc;-><init>(Lghu;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
