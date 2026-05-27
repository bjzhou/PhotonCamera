.class public final Lcwl;
.super Ljava/lang/Object;

# interfaces
.implements Lcwj;


# static fields
.field private static final i:Lnak;


# instance fields
.field public final a:Lcrz;

.field public final b:Lcvx;

.field public final c:Lcwq;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public e:I

.field public f:J

.field public g:Lnph;

.field public h:Lnou;

.field private final j:Ljud;

.field private final k:Lico;

.field private final l:Ldbf;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/snapshot/SnapshotTakerFrameServerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcwl;->i:Lnak;

    return-void
.end method

.method public constructor <init>(Lctv;Lcsa;Lico;Lcvx;Ldbf;Lcwq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "snapshot-taker"

    invoke-static {v0}, Ljvd;->j(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcwl;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcwl;->m:Z

    invoke-virtual {p1}, Lctv;->b()Ljud;

    move-result-object p1

    iput-object p1, p0, Lcwl;->j:Ljud;

    iput-object p3, p0, Lcwl;->k:Lico;

    invoke-virtual {p2}, Lcsa;->a()Lcrz;

    move-result-object p1

    iput-object p1, p0, Lcwl;->a:Lcrz;

    iput-object p4, p0, Lcwl;->b:Lcvx;

    iput-object p5, p0, Lcwl;->l:Ldbf;

    iput-object p6, p0, Lcwl;->c:Lcwq;

    return-void
.end method


# virtual methods
.method public final a(Lgxz;)Lnou;
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcwl;->e:I

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lcwl;->g:Lnph;

    const/4 v1, 0x0

    iput-object v1, p0, Lcwl;->h:Lnou;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcwl;->f:J

    invoke-virtual {p0, p1, v1}, Lcwl;->c(Lgxz;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final b(Lklv;Lkab;)Lnou;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lgxz;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcwl;->h:Lnou;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    :cond_0
    iget-boolean v0, p0, Lcwl;->m:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcwl;->g:Lnph;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Snapshot taker has been closed."

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcwl;->l:Ldbf;

    invoke-virtual {v0}, Ldbf;->d()Lklv;

    move-result-object v0

    iget v1, p0, Lcwl;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcwl;->e:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    iget-object p2, p0, Lcwl;->j:Ljud;

    new-instance v1, Lblx;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v0, p1, v2}, Lblx;-><init>(Lcwl;Lklv;Lgxz;I)V

    invoke-virtual {p2, v1}, Ljud;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sget-object p1, Lcwl;->i:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Failed to take snapshot."

    const/16 v1, 0x2ec

    invoke-static {p1, v0, v1, p2}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object p1, p0, Lcwl;->g:Lnph;

    invoke-virtual {p1, p2}, Lnph;->a(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lcwl;->k:Lico;

    sget-object p2, Licm;->d:Licm;

    invoke-virtual {p1, p2}, Lico;->c(Licm;)V

    return-void
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcwl;->m:Z

    iget-object v0, p0, Lcwl;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
