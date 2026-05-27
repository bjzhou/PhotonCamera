.class public final Lkih;
.super Ljava/lang/Object;

# interfaces
.implements Lkip;


# instance fields
.field public final a:Lkjn;

.field public final b:Lkaq;

.field public final c:Lkbc;

.field private final d:Lkkc;


# direct methods
.method public constructor <init>(Lkkc;Lkjn;Lkaq;Lkbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkih;->d:Lkkc;

    iput-object p2, p0, Lkih;->a:Lkjn;

    const-string p1, "HfrCCSOpener"

    invoke-interface {p3, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkih;->b:Lkaq;

    iput-object p4, p0, Lkih;->c:Lkbc;

    return-void
.end method


# virtual methods
.method public final d(Lkoo;Lkiq;Ljuf;Landroid/os/Handler;)V
    .locals 11

    iget-object v0, p0, Lkih;->d:Lkkc;

    iget-object v0, v0, Lkkc;->b:Lmwn;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "Cannot create a ConstrainedHighSpeedCaptureSession with buffered streams!"

    invoke-static {v0, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, p0, Lkih;->d:Lkkc;

    iget-object v0, v0, Lkkc;->c:Lmwn;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Cannot create a ConstrainedHighSpeedCaptureSession without streams!"

    invoke-static {v0, v2}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, p0, Lkih;->d:Lkkc;

    iget-object v0, v0, Lkkc;->c:Lmwn;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Cannot create a ConstrainedHighSpeedCaptureSession with more than two streams!"

    invoke-static {v0, v4}, Lmoz;->f(ZLjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lkix;->a:Ljava/util/Comparator;

    iget-object v5, p0, Lkih;->d:Lkkc;

    iget-object v5, v5, Lkkc;->c:Lmwn;

    invoke-static {v4, v5}, Lmvv;->r(Ljava/util/Comparator;Ljava/lang/Iterable;)Lmvv;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lmyu;

    iget v5, v5, Lmyu;->c:I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkju;

    invoke-virtual {v7}, Lkju;->g()Landroid/view/Surface;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {v8}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v8

    iget-object v7, v7, Lkju;->a:Ljvk;

    new-instance v9, Lkif;

    invoke-direct {v9, v8}, Lkif;-><init>(Lnph;)V

    sget-object v10, Lnnv;->a:Lnnv;

    invoke-interface {v7, v9, v10}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v7

    new-instance v9, Lkcu;

    const/16 v10, 0x8

    invoke-direct {v9, v7, v10}, Lkcu;-><init>(Lkad;I)V

    sget-object v7, Lnnv;->a:Lnnv;

    invoke-virtual {v8, v9, v7}, Lnph;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    const-string v5, "Surface cannot be null"

    invoke-static {v4, v5}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const-string v2, "No more than two surfaces can be accepted"

    invoke-static {v1, v2}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-static {v0}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v0

    new-instance v7, Lkig;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lkig;-><init>(Lkih;Lkiq;Lkoo;Landroid/os/Handler;Ljuf;)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {v0, v7, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method
