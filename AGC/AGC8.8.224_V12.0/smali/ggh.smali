.class public final synthetic Lggh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lgmo;Lgmp;Leea;I)V
    .locals 0

    iput p4, p0, Lggh;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggh;->a:Ljava/lang/Object;

    iput-object p2, p0, Lggh;->c:Ljava/lang/Object;

    iput-object p3, p0, Lggh;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgmr;Leea;Lkeb;I)V
    .locals 0

    iput p4, p0, Lggh;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggh;->a:Ljava/lang/Object;

    iput-object p2, p0, Lggh;->b:Ljava/lang/Object;

    iput-object p3, p0, Lggh;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgmx;Leea;Lgmw;I)V
    .locals 0

    iput p4, p0, Lggh;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggh;->c:Ljava/lang/Object;

    iput-object p2, p0, Lggh;->b:Ljava/lang/Object;

    iput-object p3, p0, Lggh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgnd;Lkpb;Leea;I)V
    .locals 0

    iput p4, p0, Lggh;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggh;->a:Ljava/lang/Object;

    iput-object p2, p0, Lggh;->c:Ljava/lang/Object;

    iput-object p3, p0, Lggh;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgto;Lken;Ljuf;I)V
    .locals 0

    iput p4, p0, Lggh;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggh;->b:Ljava/lang/Object;

    iput-object p2, p0, Lggh;->c:Ljava/lang/Object;

    iput-object p3, p0, Lggh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljuf;Ldqx;Lken;I[B[B)V
    .locals 0

    iput p4, p0, Lggh;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggh;->a:Ljava/lang/Object;

    iput-object p2, p0, Lggh;->b:Ljava/lang/Object;

    iput-object p3, p0, Lggh;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmqp;Lkef;Lmqp;I)V
    .locals 0

    iput p4, p0, Lggh;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggh;->a:Ljava/lang/Object;

    iput-object p2, p0, Lggh;->b:Ljava/lang/Object;

    iput-object p3, p0, Lggh;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lggh;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lggh;->a:Ljava/lang/Object;

    iget-object v1, p0, Lggh;->c:Ljava/lang/Object;

    iget-object v2, p0, Lggh;->b:Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lggh;->c:Ljava/lang/Object;

    iget-object v1, p0, Lggh;->b:Ljava/lang/Object;

    iget-object v2, p0, Lggh;->a:Ljava/lang/Object;

    check-cast v2, Lgmw;

    check-cast v1, Leea;

    check-cast v0, Lgmx;

    invoke-virtual {v0, v1, v2}, Lgmx;->k(Leea;Lgmw;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lggh;->a:Ljava/lang/Object;

    iget-object v1, p0, Lggh;->b:Ljava/lang/Object;

    iget-object v2, p0, Lggh;->c:Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Lkfg;->y(Lkeb;)V

    move-object v4, v0

    check-cast v4, Lgmr;

    iget-object v4, v4, Lgmr;->m:Lgue;

    invoke-virtual {v4, v2}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v4

    invoke-virtual {v4}, Lgli;->e()Lkpb;

    move-result-object v14

    invoke-interface {v2}, Lkeb;->c()Lkou;

    move-result-object v8

    if-eqz v14, :cond_1

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Lgli;->a()Lkfj;

    move-result-object v4

    invoke-interface {v4}, Lkfj;->c()Lkll;

    move-result-object v6

    move-object v4, v0

    check-cast v4, Lgmr;

    iget-object v4, v4, Lgmr;->b:Logd;

    invoke-interface {v4}, Logd;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lecd;

    move-object v4, v0

    check-cast v4, Lgmr;

    iget-object v4, v4, Lgmr;->l:Lebb;

    iget-object v9, v4, Lebb;->g:Lgcc;

    move-object v4, v1

    check-cast v4, Leea;

    iget-boolean v10, v4, Leea;->n:Z

    move-object v4, v0

    check-cast v4, Lgmr;

    iget-object v4, v4, Lgmr;->c:Lkaf;

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v11

    move-object v4, v0

    check-cast v4, Lgmr;

    iget v4, v4, Lgmr;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v12

    move-object v4, v0

    check-cast v4, Lgmr;

    iget v4, v4, Lgmr;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v13

    move-object v7, v14

    invoke-interface/range {v5 .. v13}, Lecd;->D(Lkll;Lkpb;Lkou;Lgcc;ZLmqp;Lmqp;Lmqp;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v14}, Lkpb;->close()V

    if-eqz v4, :cond_2

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v5, v0

    check-cast v5, Lgmr;

    iget-boolean v5, v5, Lgmr;->j:Z

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    monitor-exit v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    check-cast v5, Leea;

    iget-object v5, v5, Leea;->v:Lgkr;

    iget-object v5, v5, Lgkr;->d:Ljava/lang/Object;

    check-cast v5, Lfte;

    iget v5, v5, Lfte;->a:I

    move-object v6, v0

    check-cast v6, Lgmr;

    iget-object v6, v6, Lgmr;->d:Limq;

    move-object v7, v0

    check-cast v7, Lgmr;

    iget-object v7, v7, Lgmr;->k:Lfuz;

    move-object v8, v0

    check-cast v8, Lgmr;

    iget-object v8, v8, Lgmr;->f:Ljvs;

    move-object v9, v0

    check-cast v9, Lgmr;

    iget-object v9, v9, Lgmr;->e:Ldhi;

    invoke-static {v5, v6, v7, v8, v9}, Lcea;->b(ILimq;Lkli;Ljvs;Ldhi;)I

    move-result v5

    invoke-static {v4, v5}, Lilu;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v6, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Lkeb;->close()V

    move-object v3, v6

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4

    :cond_1
    sget-object v0, Lgmr;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v4, 0xbdf

    invoke-interface {v0, v4}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v4, "Error getting the required input."

    invoke-interface {v0, v4}, Lnah;->o(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    sget-object v0, Lgmr;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v4, 0xbe0

    invoke-interface {v0, v4}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v4, "Error generating on-demand preview image"

    invoke-interface {v0, v4}, Lnah;->o(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_0
    invoke-interface {v2}, Lkeb;->close()V

    :goto_1
    if-eqz v3, :cond_3

    check-cast v1, Leea;

    iget-object v0, v1, Leea;->v:Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lgxl;->Z(Landroid/graphics/Bitmap;I)V

    :cond_3
    return-void

    :goto_2
    invoke-interface {v2}, Lkeb;->close()V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lggh;->a:Ljava/lang/Object;

    iget-object v1, p0, Lggh;->c:Ljava/lang/Object;

    iget-object v2, p0, Lggh;->b:Ljava/lang/Object;

    check-cast v2, Leea;

    check-cast v1, Lgmp;

    check-cast v0, Lgmo;

    invoke-virtual {v0, v1, v2}, Lgmo;->k(Lgmp;Leea;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lggh;->a:Ljava/lang/Object;

    iget-object v1, p0, Lggh;->b:Ljava/lang/Object;

    iget-object v2, p0, Lggh;->c:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liot;

    check-cast v2, Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkfj;

    invoke-interface {v0, v1, v2}, Liot;->a(Lkef;Lkfj;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lggh;->b:Ljava/lang/Object;

    iget-object v1, p0, Lggh;->c:Ljava/lang/Object;

    iget-object v2, p0, Lggh;->a:Ljava/lang/Object;

    check-cast v0, Lgto;

    iget-boolean v3, v0, Lgto;->a:Z

    if-eqz v3, :cond_5

    sget-object v3, Liuz;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance v3, Lccf;

    invoke-direct {v3, v0, v1}, Lccf;-><init>(Lgto;Lken;)V

    invoke-virtual {v0, v3}, Lgto;->a(Lgtn;)V

    new-instance v1, Leid;

    const/16 v4, 0x14

    invoke-direct {v1, v0, v3, v4}, Leid;-><init>(Lgto;Lgtn;I)V

    check-cast v2, Ljuf;

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    return-void

    :cond_5
    :goto_3
    return-void

    :pswitch_5
    iget-object v0, p0, Lggh;->a:Ljava/lang/Object;

    iget-object v1, p0, Lggh;->b:Ljava/lang/Object;

    iget-object v2, p0, Lggh;->c:Ljava/lang/Object;

    check-cast v1, Ldqx;

    iget-object v1, v1, Ldqx;->e:Ljava/lang/Object;

    new-instance v3, Lgdl;

    const/16 v4, 0xf

    invoke-direct {v3, v2, v4}, Lgdl;-><init>(Lken;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v1, v3, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    check-cast v0, Ljuf;

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void

    :goto_4
    :try_start_5
    move-object v3, v0

    check-cast v3, Lgnd;

    iget-object v3, v3, Lgnd;->c:Lkbc;

    const-string v4, "ThumbnailProcessor#processBaseFrameImage"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lgnd;

    iget-object v3, v3, Lgnd;->c:Lkbc;

    const-string v4, "convert"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;->a(Lkpb;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lgnd;

    iget-object v4, v4, Lgnd;->c:Lkbc;

    const-string v5, "flip"

    invoke-interface {v4, v5}, Lkbc;->g(Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Leea;

    iget-object v4, v4, Leea;->v:Lgkr;

    iget-object v4, v4, Lgkr;->d:Ljava/lang/Object;

    check-cast v4, Lfte;

    iget v4, v4, Lfte;->a:I

    move-object v5, v0

    check-cast v5, Lgnd;

    iget-object v5, v5, Lgnd;->d:Limq;

    move-object v6, v0

    check-cast v6, Lgnd;

    iget-object v6, v6, Lgnd;->i:Lfuz;

    move-object v7, v0

    check-cast v7, Lgnd;

    iget-object v7, v7, Lgnd;->h:Ljvs;

    move-object v8, v0

    check-cast v8, Lgnd;

    iget-object v8, v8, Lgnd;->e:Ldhi;

    invoke-static {v4, v5, v6, v7, v8}, Lcea;->b(ILimq;Lkli;Ljvs;Ldhi;)I

    move-result v4

    move-object v5, v0

    check-cast v5, Lgnd;

    iget-object v5, v5, Lgnd;->b:Lgvb;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v0

    check-cast v6, Lgnd;

    iget-object v6, v6, Lgnd;->i:Lfuz;

    invoke-virtual {v6}, Lklw;->k()Lklv;

    move-result-object v6

    invoke-interface {v5, v3, v4, v6}, Lgvb;->b(Landroid/graphics/Bitmap;ILklv;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v5, v0

    check-cast v5, Lgnd;

    iget-object v5, v5, Lgnd;->g:Ljava/util/Map;

    move-object v6, v2

    check-cast v6, Leea;

    iget-object v6, v6, Leea;->v:Lgkr;

    iget-object v6, v6, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v6}, Lgxl;->h()Lgxy;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lebb;

    if-eqz v5, :cond_6

    iget-boolean v5, v5, Lebb;->j:Z

    if-eqz v5, :cond_6

    move-object v5, v0

    check-cast v5, Lgnd;

    iget-object v5, v5, Lgnd;->f:Logd;

    invoke-interface {v5}, Logd;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldsa;

    sget-object v6, Lmpx;->a:Lmpx;

    invoke-static {v5, v3, v6}, Ldsi;->a(Ldsa;Landroid/graphics/Bitmap;Lmqp;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_6
    move-object v5, v0

    check-cast v5, Lgnd;

    iget-object v5, v5, Lgnd;->c:Lkbc;

    const-string v6, "updateIndicator"

    invoke-interface {v5, v6}, Lkbc;->g(Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lgnd;

    iget-object v5, v5, Lgnd;->b:Lgvb;

    move-object v6, v0

    check-cast v6, Lgnd;

    iget-object v6, v6, Lgnd;->i:Lfuz;

    invoke-virtual {v6}, Lklw;->k()Lklv;

    move-result-object v6

    invoke-interface {v5, v6}, Lgvb;->h(Lklv;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_7

    const/4 v4, 0x0

    :cond_7
    check-cast v2, Leea;

    iget-object v2, v2, Leea;->v:Lgkr;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lgxl;->X(Landroid/graphics/Bitmap;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-interface {v1}, Lkpb;->close()V

    check-cast v0, Lgnd;

    iget-object v1, v0, Lgnd;->c:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget-object v0, v0, Lgnd;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_2
    move-exception v2

    invoke-interface {v1}, Lkpb;->close()V

    check-cast v0, Lgnd;

    iget-object v1, v0, Lgnd;->c:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget-object v0, v0, Lgnd;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
