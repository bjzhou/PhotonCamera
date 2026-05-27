.class final Lfog;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field final synthetic a:Lcwg;

.field final synthetic b:Lfoj;

.field private final c:Ljwb;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lfoj;Lcwg;)V
    .locals 0

    iput-object p1, p0, Lfog;->b:Lfoj;

    iput-object p2, p0, Lfog;->a:Lcwg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljvk;

    sget-object p2, Ljws;->a:Ljws;

    invoke-direct {p1, p2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfog;->c:Ljwb;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lfog;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lgyr;

    iget-object v0, p0, Lfog;->b:Lfoj;

    iget-object v0, v0, Lfoj;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgec;->a:Lgec;

    sget-object v1, Lgyr;->a:Lgyr;

    invoke-virtual {p1}, Lgyr;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_3

    :pswitch_0
    sget-object p1, Ljws;->d:Ljws;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lfog;->b:Lfoj;

    iget-object p1, p1, Lfoj;->e:Lcxb;

    invoke-virtual {p1}, Lcxb;->a()Lcwx;

    move-result-object p1

    sget-object v1, Lcwx;->c:Lcwx;

    if-ne p1, v1, :cond_0

    sget-object p1, Ljws;->f:Ljws;

    goto :goto_0

    :cond_0
    sget-object p1, Ljws;->c:Ljws;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lfog;->b:Lfoj;

    iget-object p1, p1, Lfoj;->e:Lcxb;

    invoke-virtual {p1}, Lcxb;->a()Lcwx;

    move-result-object p1

    sget-object v1, Lcwx;->c:Lcwx;

    if-ne p1, v1, :cond_1

    sget-object p1, Ljws;->e:Ljws;

    goto :goto_0

    :cond_1
    sget-object p1, Ljws;->b:Ljws;

    goto :goto_0

    :pswitch_3
    sget-object p1, Ljws;->a:Ljws;

    :goto_0
    iget-object v1, p0, Lfog;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfog;->c:Ljwb;

    invoke-interface {v1, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lfog;->c:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    if-ne p1, v1, :cond_3

    sget-object v1, Lfoj;->b:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "changeCaptureRate() do nothing since captureRate [%s] does not change"

    const/16 v3, 0x981

    invoke-static {v1, v2, p1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lfog;->c:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    iget-object v1, p0, Lfog;->c:Ljwb;

    invoke-interface {v1, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v1, p0, Lfog;->b:Lfoj;

    iget-object v1, v1, Lfoj;->c:Lcwh;

    sget-object v2, Lika;->c:Lika;

    invoke-virtual {v1, v2}, Lcwh;->a(Lika;)Lcwg;

    move-result-object v1

    iget-object v2, p0, Lfog;->a:Lcwg;

    invoke-interface {v2, p1}, Lcwg;->bn(Ljava/lang/Object;)V

    iget-object v2, p0, Lfog;->a:Lcwg;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lfog;->b:Lfoj;

    iget-object v2, v1, Lfoj;->n:Ldqx;

    iget-object v1, v1, Lfoj;->h:Ldbf;

    invoke-virtual {v1}, Ldbf;->d()Lklv;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldqx;->a(Lklv;)Ljwu;

    move-result-object v1

    iget-object v2, p0, Lfog;->b:Lfoj;

    iget-object v2, v2, Lfoj;->i:Ldhi;

    sget-object v3, Ldgu;->Z:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lfog;->b:Lfoj;

    iget-object v2, v2, Lfoj;->i:Ldhi;

    sget-object v3, Ldgu;->G:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lfog;->a:Lcwg;

    instance-of v2, v2, Lcwc;

    if-eqz v2, :cond_5

    sget-object v2, Ljwu;->i:Ljwu;

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lfog;->b:Lfoj;

    iget-object v2, v2, Lfoj;->g:Lcwe;

    sget-object v3, Ljws;->a:Ljws;

    if-ne p1, v3, :cond_4

    sget-object v3, Ljws;->c:Ljws;

    goto :goto_1

    :cond_4
    move-object v3, p1

    :goto_1
    invoke-virtual {v2, v3}, Ljwi;->bn(Ljava/lang/Object;)V

    :cond_5
    iget-object v2, p0, Lfog;->a:Lcwg;

    instance-of v2, v2, Lcwe;

    if-eqz v2, :cond_6

    sget-object v2, Ljwu;->k:Ljwu;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lfog;->b:Lfoj;

    iget-object v1, v1, Lfoj;->f:Lcwc;

    invoke-virtual {v1, p1}, Ljwi;->bn(Ljava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Lfog;->b:Lfoj;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lfoj;->w(I)V

    :cond_7
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported FPS option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
