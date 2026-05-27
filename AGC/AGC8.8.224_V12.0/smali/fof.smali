.class public final synthetic Lfof;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leid;I[B)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfoa;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfoj;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfoo;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfot;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfrc;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfri;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfrm;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfrn;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfus;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfux;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkad;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkpb;I)V
    .locals 0

    iput p2, p0, Lfof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfof;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lfof;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_4
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfux;

    invoke-virtual {v0}, Lfux;->e()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfus;

    iget-object v0, v0, Lfus;->c:Lnou;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfus;

    iget-object v0, v0, Lfus;->c:Lnou;

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfus;

    invoke-static {v0}, Lfus;->b(Lfus;)V

    :cond_0
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfus;

    iget-object v0, v0, Lfus;->e:Lfux;

    invoke-virtual {v0}, Lfux;->d()V

    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfus;

    iget-object v0, v0, Lfus;->b:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lfrm;

    iget-object v1, v1, Lfrm;->a:Lfrn;

    monitor-enter v1

    :try_start_0
    check-cast v0, Lfrm;

    iget-object v0, v0, Lfrm;->a:Lfrn;

    iput-boolean v2, v0, Lfrn;->g:Z

    invoke-virtual {v0}, Lfrn;->c()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_7
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    move-object v1, v0

    check-cast v1, Lfrn;

    iget-object v1, v1, Lfrn;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_2
    move-object v2, v0

    check-cast v2, Lfrn;

    iget-object v2, v2, Lfrn;->e:Lkaq;

    const-string v3, "Error sending codec EOS signal"

    invoke-interface {v2, v3, v1}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :pswitch_8
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    move-object v2, v0

    check-cast v2, Lfrc;

    iput-boolean v1, v2, Lfrc;->c:Z

    move-object v1, v0

    check-cast v1, Lfrc;

    invoke-virtual {v1}, Lfrc;->k()V

    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    :pswitch_9
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    move-object v1, v0

    check-cast v1, Lfrc;

    iget v1, v1, Lfrc;->g:I

    add-int/2addr v1, v2

    move-object v2, v0

    check-cast v2, Lfrc;

    iput v1, v2, Lfrc;->g:I

    monitor-exit v0

    return-void

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    :pswitch_a
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    move-object v3, v0

    check-cast v3, Lfrc;

    iget v3, v3, Lfrc;->g:I

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    check-cast v4, Lfrc;

    iput v3, v4, Lfrc;->g:I

    if-ltz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    invoke-static {v1}, Lmoz;->p(Z)V

    move-object v1, v0

    check-cast v1, Lfrc;

    invoke-virtual {v1}, Lfrc;->k()V

    monitor-exit v0

    return-void

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v1

    :pswitch_b
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lfri;->b()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfrc;

    invoke-virtual {v0}, Lfrc;->j()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    iget-wide v1, v0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->b:J

    iget-object v3, v0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->c:Lcom/google/googlex/gcam/Gcam;

    invoke-static {v3}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->initializeProcessingQueueNative(JJ)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfot;

    iget-object v1, v0, Lfot;->a:Lfou;

    iget-object v2, v1, Lfou;->f:Licf;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lfou;->b:Lell;

    invoke-interface {v1, v2}, Lell;->d(Lelk;)Lkad;

    iget-object v0, v0, Lfot;->a:Lfou;

    iget-object v0, v0, Lfou;->e:Lmrg;

    invoke-virtual {v0}, Lmrg;->e()V

    :cond_2
    return-void

    :pswitch_f
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lfoo;

    iget-object v1, v1, Lfoo;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    move-object v2, v0

    check-cast v2, Lfoo;

    iget-boolean v2, v2, Lfoo;->h:Z

    if-nez v2, :cond_3

    move-object v2, v0

    check-cast v2, Lfoo;

    invoke-virtual {v2}, Lfoo;->w()V

    :cond_3
    check-cast v0, Lfoo;

    iget-object v0, v0, Lfoo;->c:Lcox;

    invoke-virtual {v0}, Lcox;->m()V

    monitor-exit v1

    return-void

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0

    :pswitch_10
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfoo;

    iget-object v1, v0, Lfoo;->d:Lcqa;

    invoke-virtual {v1, v2}, Lcqa;->j(Z)V

    invoke-virtual {v0}, Lfoo;->x()V

    return-void

    :pswitch_11
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfoj;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lfoj;->w(I)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfoa;

    iget-object v0, v0, Lfoa;->b:Lcox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcox;->q(I)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lfof;->a:Ljava/lang/Object;

    check-cast v0, Lfoj;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lfoj;->w(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
