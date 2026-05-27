.class public final synthetic Leat;
.super Ljava/lang/Object;

# interfaces
.implements Lecm;


# instance fields
.field public final synthetic a:Ledn;

.field public final synthetic b:I

.field public final synthetic c:Lebb;

.field public final synthetic d:Lewa;

.field public final synthetic e:Lgkr;


# direct methods
.method public synthetic constructor <init>(Lewa;Lgkr;Ledn;ILebb;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leat;->d:Lewa;

    iput-object p2, p0, Leat;->e:Lgkr;

    iput-object p3, p0, Leat;->a:Ledn;

    iput p4, p0, Leat;->b:I

    iput-object p5, p0, Leat;->c:Lebb;

    return-void
.end method


# virtual methods
.method public final a(Leea;IJLkou;)V
    .locals 5

    iget-object p1, p0, Leat;->d:Lewa;

    iget-object p2, p0, Leat;->e:Lgkr;

    iget-object v0, p0, Leat;->a:Ledn;

    iget v1, p0, Leat;->b:I

    iget-object v2, p0, Leat;->c:Lebb;

    iget-object v3, p1, Lewa;->h:Ljava/lang/Object;

    const-string v4, "ShotConfigFactory#BaseFrameCallback"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, p1, Lewa;->c:Ljava/lang/Object;

    check-cast v3, Lbkc;

    invoke-virtual {v3, p3, p4}, Lbkc;->p(J)V

    iget-object v3, p1, Lewa;->b:Ljava/lang/Object;

    check-cast v3, Lcvr;

    invoke-virtual {v3}, Lcvr;->H()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lewa;->b:Ljava/lang/Object;

    check-cast v3, Lcvr;

    invoke-virtual {v3}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfsn;

    iget-object v4, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v4}, Lgxl;->h()Lgxy;

    move-result-object v4

    invoke-interface {v3, v4, p3, p4}, Lfsn;->b(Lgxy;J)V

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p5}, Ledn;->d(Lkou;)V

    invoke-virtual {v0, p3, p4}, Ledn;->g(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lewa;->d:Ljava/lang/Object;

    sget-object v3, Ldhq;->ao:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p1, Lewa;->g:Ljava/lang/Object;

    const-string p3, "Quick Postview disabled, defaulting to YuvThumbnailProcessor"

    invoke-interface {p2, p3}, Lkaq;->b(Ljava/lang/String;)V

    iget-object p1, p1, Lewa;->h:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :cond_1
    iget-object v0, p1, Lewa;->i:Ljava/lang/Object;

    check-cast v0, Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p3, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgg;

    invoke-interface {v0, p3, p4}, Lfgg;->c(J)Lkpb;

    move-result-object p3

    invoke-static {p3}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p3

    :goto_0
    invoke-virtual {p3}, Lmqp;->g()Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p1, Lewa;->g:Ljava/lang/Object;

    const-string v0, "Successfully acquired YUV baseFrameImage"

    invoke-interface {p4, v0}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkpb;

    invoke-static {p4}, Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;->a(Lkpb;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkpb;

    invoke-interface {p3}, Lkpb;->close()V

    iget-object p3, p1, Lewa;->f:Ljava/lang/Object;

    iget-object v0, p1, Lewa;->j:Ljava/lang/Object;

    check-cast v0, Lklw;

    invoke-virtual {v0}, Lklw;->k()Lklv;

    move-result-object v0

    invoke-interface {p3, v0}, Lgvb;->h(Lklv;)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eq v3, p3, :cond_3

    move p3, v1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    iget-object v3, p1, Lewa;->f:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lewa;->j:Ljava/lang/Object;

    check-cast v4, Lklw;

    invoke-virtual {v4}, Lklw;->k()Lklv;

    move-result-object v4

    invoke-interface {v3, p4, v1, v4}, Lgvb;->b(Landroid/graphics/Bitmap;ILklv;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    invoke-static {p4, p3}, Lewa;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_2

    :cond_4
    :goto_2
    iget-boolean p3, v2, Lebb;->j:Z

    if-eqz p3, :cond_5

    iget-object p3, p1, Lewa;->k:Ljava/lang/Object;

    invoke-interface {p3}, Logd;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ldsa;

    invoke-static {p5}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p5

    invoke-static {p3, p4, p5}, Ldsi;->a(Ldsa;Landroid/graphics/Bitmap;Lmqp;)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_5
    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p2, p4, v0}, Lgxl;->X(Landroid/graphics/Bitmap;I)V

    :cond_6
    iget-object p1, p1, Lewa;->h:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
