.class public final Lfkc;
.super Ljava/lang/Object;

# interfaces
.implements Lecm;
.implements Lecn;
.implements Lecw;


# instance fields
.field public final a:Lnph;

.field public final b:Lkad;

.field public c:Z

.field final d:Lnph;

.field final e:Lnph;

.field public final synthetic f:Ldqx;

.field private final g:Lnph;


# direct methods
.method public constructor <init>(Ldqx;Lkad;[B[B[B)V
    .locals 0

    iput-object p1, p0, Lfkc;->f:Ldqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfkc;->c:Z

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lfkc;->g:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lfkc;->d:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lfkc;->e:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lfkc;->a:Lnph;

    iput-object p2, p0, Lfkc;->b:Lkad;

    return-void
.end method


# virtual methods
.method public final a(Leea;IJLkou;)V
    .locals 1

    iget-object p1, p0, Lfkc;->f:Ldqx;

    monitor-enter p1

    const/4 p2, 0x1

    :try_start_0
    iput-boolean p2, p0, Lfkc;->c:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lfkc;->f:Ldqx;

    iget-object p1, p1, Ldqx;->d:Ljava/lang/Object;

    invoke-interface {p1, p3, p4}, Lfgg;->c(J)Lkpb;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lfkc;->f:Ldqx;

    iget-object p2, p2, Ldqx;->b:Ljava/lang/Object;

    iget-object p3, p0, Lfkc;->d:Lnph;

    iget-object p4, p0, Lfkc;->e:Lnph;

    iget-object p5, p0, Lfkc;->g:Lnph;

    new-instance v0, Lfjz;

    check-cast p2, Lbkb;

    iget-object p2, p2, Lbkb;->a:Ljava/lang/Object;

    invoke-direct {v0, p2, p3, p4, p5}, Lfjz;-><init>(Ljava/util/concurrent/Executor;Lnou;Lnou;Lnph;)V

    iget-object p2, p0, Lfkc;->d:Lnph;

    invoke-virtual {p2, p1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Lfkc;->a:Lnph;

    iget-object p2, p0, Lfkc;->g:Lnph;

    sget-object p3, Ldeo;->t:Ldeo;

    sget-object p4, Lnnv;->a:Lnnv;

    invoke-static {p2, p3, p4}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnph;->f(Lnou;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lfkc;->a:Lnph;

    sget-object p2, Lmpx;->a:Lmpx;

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final b(Lhjg;Lebd;)V
    .locals 0

    return-void
.end method

.method public final c(Leea;Lecq;)V
    .locals 0

    iget-object p1, p0, Lfkc;->a:Lnph;

    sget-object p2, Lmpx;->a:Lmpx;

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o(Leea;Landroid/graphics/Bitmap;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 0

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lfkc;->e:Lnph;

    invoke-virtual {p2, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p(Leea;)V
    .locals 1

    iget-object p1, p0, Lfkc;->a:Lnph;

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
