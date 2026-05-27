.class public final Lcpx;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# static fields
.field public static final a:Lnak;


# instance fields
.field public b:Lnou;

.field public c:Lcui;

.field public final d:Ljava/lang/Object;

.field private final e:Lcul;

.field private final f:Lcsa;

.field private final g:Lkbc;

.field private final h:Lfvx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/VideoRecorderProvider"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcpx;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldja;Lcsa;Lfvx;Lkbc;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcpx;->d:Ljava/lang/Object;

    iget-object p1, p1, Ldja;->b:Ljava/lang/Object;

    check-cast p1, Lcul;

    iput-object p1, p0, Lcpx;->e:Lcul;

    iput-object p2, p0, Lcpx;->f:Lcsa;

    iput-object p3, p0, Lcpx;->h:Lfvx;

    iput-object p4, p0, Lcpx;->g:Lkbc;

    return-void
.end method

.method private final c()V
    .locals 4

    iget-object v0, p0, Lcpx;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcpx;->c:Lcui;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcui;->close()V

    iput-object v2, p0, Lcpx;->c:Lcui;

    :cond_0
    iget-object v1, p0, Lcpx;->b:Lnou;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lnou;->cancel(Z)Z

    iput-object v2, p0, Lcpx;->b:Lnou;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Lcsc;)Lcui;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcpx;->g:Lkbc;

    const-string v1, "VRP#getNew"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcpx;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcpx;->b(Lcsc;)Lnou;

    move-result-object p1

    invoke-interface {p1}, Lnou;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcui;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcpx;->g:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    :try_start_4
    sget-object v0, Lcpx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x1e3

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "Error creating video recorder: "

    invoke-interface {p1, v0}, Lnah;->o(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p1, p0, Lcpx;->g:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    const/4 p1, 0x0

    return-object p1

    :goto_1
    iget-object v0, p0, Lcpx;->g:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    throw p1
.end method

.method final b(Lcsc;)Lnou;
    .locals 10

    iget-object v0, p0, Lcpx;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcpx;->c()V

    iget-object v8, p0, Lcpx;->e:Lcul;

    iget-object v3, p0, Lcpx;->h:Lfvx;

    iget-object v1, p0, Lcpx;->f:Lcsa;

    invoke-virtual {v1}, Lcsa;->a()Lcrz;

    move-result-object v5

    iget-object v1, v8, Lcul;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v2, v8, Lcul;->n:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v8, Lcul;->n:Z

    iget-object v2, v8, Lcul;->s:Lcvr;

    sget-object v4, Lcua;->d:Lcua;

    invoke-virtual {v2, v4}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljuf;->d(Lkad;)V

    iget-object v2, v8, Lcul;->b:Loiw;

    check-cast v2, Lcuv;

    invoke-virtual {v2}, Lcuv;->a()Lcuu;

    move-result-object v2

    iput-object v2, v8, Lcul;->m:Ljye;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v9, Lcuk;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-object v2, v8

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcuk;-><init>(Lcul;Lfvx;Lcsc;Lcrz;[B[B)V

    iget-object p1, v8, Lcul;->g:Lctv;

    invoke-virtual {p1}, Lctv;->b()Ljud;

    move-result-object p1

    invoke-static {v9, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    iput-object p1, p0, Lcpx;->b:Lnou;

    new-instance v1, Ldje;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ldje;-><init>(Lcpx;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {p1, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcpx;->b:Lnou;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final close()V
    .locals 0

    invoke-direct {p0}, Lcpx;->c()V

    return-void
.end method
