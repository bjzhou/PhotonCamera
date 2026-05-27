.class public final Lgaf;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lgam;

.field private final c:Ljvs;

.field private final d:Lgcx;

.field private final e:Lmbe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/photo/commands/PortraitCaptureCommand"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgaf;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgcx;Lmbe;Lgam;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgaf;->d:Lgcx;

    iput-object p2, p0, Lgaf;->e:Lmbe;

    iput-object p3, p0, Lgaf;->b:Lgam;

    iget-object p1, p1, Lgcx;->a:Ljwe;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1, p4}, Ljvw;->e(Ljvs;Ljava/lang/Comparable;)Ljvs;

    move-result-object p1

    const/4 p4, 0x2

    new-array p4, p4, [Ljvs;

    invoke-interface {p3}, Lgam;->a()Ljvs;

    move-result-object p3

    const/4 p5, 0x0

    aput-object p3, p4, p5

    aput-object p1, p4, p2

    invoke-static {p4}, Ljvw;->d([Ljvs;)Ljvs;

    move-result-object p1

    iput-object p1, p0, Lgaf;->c:Ljvs;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgaf;->c:Ljvs;

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lgaf;->b:Lgam;

    invoke-interface {v0}, Lgam;->b()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 6

    iget-object v0, p0, Lgaf;->d:Lgcx;

    iget-object v1, v0, Lgcx;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lgcx;->f:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v2, v0, Lgcx;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lgcx;->e:I

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lgcx;->e:I

    iget-object v2, v0, Lgcx;->d:Ljwd;

    invoke-virtual {v0}, Lgcx;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Ljwd;->a:Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lgcx;->d:Ljwd;

    invoke-virtual {v1}, Ljwd;->c()V

    if-eqz v4, :cond_1

    new-instance v1, Lgcz;

    invoke-direct {v1, v0, v3}, Lgcz;-><init>(Lgcx;I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lgaf;->d:Lgcx;

    iget-object v0, v0, Lgcx;->a:Ljwe;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    if-nez v1, :cond_2

    sget-object p1, Lgaf;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Ticket not available"

    const/16 v0, 0x9e7

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_2
    iget-object v0, p2, Lgkr;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lgwx;

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lgaf;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    const-string v4, "Capture session not a MultiImageCaptureSession: %s"

    const/16 v5, 0x9e6

    invoke-static {v3, v4, v0, v5}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_3
    iget-object v0, p0, Lgaf;->e:Lmbe;

    invoke-virtual {v0, p2}, Lmbe;->d(Lgkr;)Lffr;

    move-result-object v0

    invoke-virtual {v0}, Lffr;->b()V

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lffr;->a()Lmqp;

    move-result-object v3

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgwx;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfgd;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iput-object v3, v2, Lgwx;->c:Lmqp;

    :cond_4
    iget-object v2, p2, Lgkr;->d:Ljava/lang/Object;

    check-cast v2, Lfte;

    iget-object v2, v2, Lfte;->f:Ljuf;

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lgaf;->b:Lgam;

    invoke-interface {v1, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    invoke-virtual {v0}, Lffr;->c()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
