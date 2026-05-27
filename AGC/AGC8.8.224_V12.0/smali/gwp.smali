.class public Lgwp;
.super Ljava/lang/Object;

# interfaces
.implements Lgxl;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lgwd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/session/DelegatingCaptureSession"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgwp;->a:Lnak;

    return-void
.end method

.method protected constructor <init>(Lgwd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgwp;->b:Lgwd;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    invoke-static {}, Ljfc;->l()V

    return-void
.end method

.method public final B(Ligf;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1, p2}, Lgwd;->B(Ligf;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final C(Z)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1}, Lgwd;->C(Z)V

    return-void
.end method

.method public final D()V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->D()V

    return-void
.end method

.method public E()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final F()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->e()Lgpv;

    move-result-object v1

    iget-object v0, v0, Lgwd;->m:Lgpo;

    invoke-virtual {v1, v0}, Lgpv;->a(Lgpx;)V

    return-void
.end method

.method final H(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1}, Lgwd;->W(Ljava/lang/String;)V

    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lgwp;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xcfc

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "[%s] %s"

    invoke-virtual {p0}, Lgwp;->h()Lgxy;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final J()Ljew;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->x:Ljew;

    return-object v0
.end method

.method public M()V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->R()V

    return-void
.end method

.method public final N(Lkou;Z)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1, p2}, Lgwd;->N(Lkou;Z)V

    return-void
.end method

.method public final declared-synchronized O(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lgwp;->b:Lgwd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgwd;->O(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final Q(Ligf;)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1}, Lgwd;->Q(Ligf;)V

    return-void
.end method

.method public S(Lkaf;)V
    .locals 6

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v1, v0, Lgwd;->b:Ldlj;

    iget-object v2, v0, Lgwd;->f:Lgxz;

    invoke-interface {v1, v2}, Ldlj;->j(Lgxz;)V

    const-string v1, "startEmpty"

    invoke-virtual {v0, v1}, Lgwd;->W(Ljava/lang/String;)V

    iget-object v1, v0, Lgwd;->x:Ljew;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljew;->ai(II)V

    iget-object v1, v0, Lgwd;->v:Ljew;

    invoke-virtual {v0}, Lgwd;->h()Lgxy;

    move-result-object v2

    iget-object v1, v1, Ljew;->a:Ljava/lang/Object;

    check-cast v1, Lhkv;

    iget-object v1, v1, Lhkv;->b:Landroid/util/LruCache;

    new-instance v3, Llpu;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p1}, Llpu;-><init>(Landroid/graphics/Bitmap;ILkaf;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljew;

    invoke-direct {p1, v2}, Ljew;-><init>(Lgxy;)V

    iput-object p1, v0, Lgwd;->w:Ljew;

    return-void
.end method

.method public final T(J)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1, p2}, Lgwd;->T(J)V

    return-void
.end method

.method public final synthetic U()V
    .locals 0

    invoke-static {p0}, Ljfc;->k(Lgxl;)V

    return-void
.end method

.method public final V(Ljava/lang/Integer;)V
    .locals 1

    iget-object p1, p0, Lgwp;->b:Lgwd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgwd;->V(Ljava/lang/Integer;)V

    return-void
.end method

.method public final X(Landroid/graphics/Bitmap;I)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1, p2}, Lgwd;->X(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public final Y(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1}, Lgwd;->Y(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final Z(Landroid/graphics/Bitmap;I)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1, p2}, Lgwd;->Z(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public final a()Lkae;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->d:Lkae;

    return-object v0
.end method

.method public final ab(I)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1}, Lgwd;->ab(I)V

    return-void
.end method

.method public final ac(Lcvr;)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1}, Lgwd;->ac(Lcvr;)V

    return-void
.end method

.method public final b(Lkae;)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1}, Lgwd;->b(Lkae;)V

    return-void
.end method

.method public final c(Lgpy;)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1}, Lgwd;->c(Lgpy;)V

    return-void
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method final e()Lcjf;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->h:Lcjf;

    return-object v0
.end method

.method public final f()Lgxn;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->f()Lgxn;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lgxr;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->o:Lgxr;

    return-object v0
.end method

.method public final h()Lgxy;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->h()Lgxy;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lgya;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->c:Lgya;

    return-object v0
.end method

.method public final j()Lgyb;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->j()Lgyb;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lhjc;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->i:Lhjc;

    return-object v0
.end method

.method public final l()Lkou;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->l()Lkou;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lmqp;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->r:Lmqp;

    return-object v0
.end method

.method public final n()Lmqp;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->n:Lmqp;

    return-object v0
.end method

.method final o()Lgwm;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->g:Lgwm;

    return-object v0
.end method

.method public final p()Lnou;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->q:Lnph;

    return-object v0
.end method

.method public final q()Lnou;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->q()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public r([BLhkt;)Lnou;
    .locals 0

    invoke-static {}, Ljfc;->m()Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lgxr;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->o:Lgxr;

    return-object v0
.end method

.method public final u(Lgxw;)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1}, Lgwd;->u(Lgxw;)V

    return-void
.end method

.method final v(Lhkt;)Lmqp;
    .locals 2

    iget-object v0, p0, Lgwp;->b:Lgwd;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgwd;->o(Lhkt;Lgto;)Lmqp;

    move-result-object p1

    return-object p1
.end method

.method public final w(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0, p1}, Lgwd;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final x()Lnph;
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    iget-object v0, v0, Lgwd;->k:Lnph;

    return-object v0
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->y()V

    return-void
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lgwp;->b:Lgwd;

    invoke-virtual {v0}, Lgwd;->z()V

    return-void
.end method
