.class public final Letv;
.super Ljava/lang/Object;

# interfaces
.implements Lenz;


# instance fields
.field final synthetic a:Lchk;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Letp;I)V
    .locals 0

    iput p2, p0, Letv;->b:I

    iput-object p1, p0, Letv;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leuc;I)V
    .locals 0

    iput p2, p0, Letv;->b:I

    iput-object p1, p0, Letv;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leuj;I)V
    .locals 0

    iput p2, p0, Letv;->b:I

    iput-object p1, p0, Letv;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leuy;I)V
    .locals 0

    iput p2, p0, Letv;->b:I

    iput-object p1, p0, Letv;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Levk;I)V
    .locals 0

    iput p2, p0, Letv;->b:I

    iput-object p1, p0, Letv;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Z)V
    .locals 0

    iget p1, p0, Letv;->b:I

    return-void
.end method

.method public final synthetic b(Z)V
    .locals 0

    iget p1, p0, Letv;->b:I

    return-void
.end method

.method public final synthetic c()V
    .locals 1

    iget v0, p0, Letv;->b:I

    return-void
.end method

.method public final d(Z)V
    .locals 10

    iget v0, p0, Letv;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Levk;

    iget-object v0, v0, Levk;->T:Lflk;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lflk;->b()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_12

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Levk;

    iget-object v0, v0, Levk;->i:Lifj;

    invoke-interface {v0}, Lifj;->onShutterTouchStart()V

    goto/16 :goto_9

    :pswitch_0
    if-eqz p1, :cond_0

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuy;

    iget-object p1, p1, Leuy;->c:Lifj;

    invoke-interface {p1}, Lifj;->onShutterTouchStart()V

    return-void

    :cond_0
    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuy;

    iget-object p1, p1, Leuy;->p:Leuo;

    invoke-virtual {p1}, Leuo;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuy;

    invoke-virtual {p1}, Leuy;->x()Z

    return-void

    :cond_1
    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuy;

    iget-object p1, p1, Leuy;->c:Lifj;

    invoke-interface {p1}, Lifj;->onShutterButtonClick()V

    return-void

    :pswitch_1
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Leuj;

    iget-boolean v2, v0, Leuj;->J:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Leuj;->x()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Leuj;

    iget-object v0, v0, Leuj;->I:Lhke;

    invoke-virtual {v0}, Lhke;->e()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Leuj;

    iput-boolean v1, v0, Leuj;->G:Z

    iget-object v0, v0, Leuj;->I:Lhke;

    invoke-virtual {v0}, Lhke;->f()V

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Leuj;

    iget-object v0, v0, Leuj;->r:Lhwd;

    invoke-virtual {v0}, Lhwd;->f()V

    :goto_0
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Leuj;

    iget-object v0, v0, Leuj;->i:Liff;

    invoke-interface {v0, p1}, Liff;->z(Z)V

    return-void

    :cond_4
    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-boolean v2, v0, Letp;->P:Z

    if-eqz v2, :cond_5

    goto/16 :goto_7

    :cond_5
    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz p1, :cond_a

    iget-object v4, v0, Letp;->ao:Lijx;

    iget-boolean v4, v4, Lijx;->h:Z

    if-nez v4, :cond_e

    iget-object v0, v0, Letp;->W:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-object v0, v0, Letp;->W:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlz;

    invoke-interface {v0}, Lhlz;->a()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    :goto_2
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-object v0, v0, Letp;->R:Lclc;

    invoke-virtual {v0}, Lclc;->f()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-object v0, v0, Letp;->ag:Lhwd;

    invoke-virtual {v0}, Lhwd;->h()Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v4, :cond_9

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-object v0, v0, Letp;->ai:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-object v0, v0, Letp;->h:Leod;

    iget-object v4, v0, Leod;->b:Lkrf;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-object v6, v0, Leod;->a:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget v7, v0, Leod;->f:I

    if-ne v7, v1, :cond_7

    iput v2, v0, Leod;->f:I

    iput-wide v4, v0, Leod;->e:J

    goto :goto_3

    :cond_7
    iget-wide v8, v0, Leod;->e:J

    sub-long/2addr v4, v8

    iget-wide v8, v0, Leod;->c:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_8

    if-ne v7, v2, :cond_8

    iput v3, v0, Leod;->f:I

    iget-object v0, v0, Leod;->d:Leoc;

    invoke-interface {v0, v3}, Leoc;->a(I)Lnou;

    :cond_8
    :goto_3
    monitor-exit v6

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_4
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    invoke-virtual {v0}, Letp;->G()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-object v0, v0, Letp;->j:Lifj;

    invoke-interface {v0}, Lifj;->onShutterTouchStart()V

    goto :goto_6

    :cond_a
    iget-object v0, v0, Letp;->h:Leod;

    iget-object v4, v0, Leod;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v5, v0, Leod;->f:I

    if-ne v5, v2, :cond_b

    iput v1, v0, Leod;->f:I

    monitor-exit v4

    goto :goto_5

    :cond_b
    if-ne v5, v3, :cond_c

    iput v1, v0, Leod;->f:I

    iget-object v0, v0, Leod;->d:Leoc;

    invoke-interface {v0, v3}, Leoc;->b(I)Lnou;

    monitor-exit v4

    goto :goto_6

    :cond_c
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-object v0, v0, Letp;->ag:Lhwd;

    invoke-virtual {v0}, Lhwd;->g()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-object v2, v0, Letp;->ao:Lijx;

    iget-boolean v2, v2, Lijx;->h:Z

    if-eqz v2, :cond_d

    iget-object p1, v0, Letp;->r:Lflo;

    invoke-interface {p1, v3}, Lflo;->b(I)Lnou;

    return-void

    :cond_d
    invoke-virtual {v0}, Letp;->G()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iput-boolean v1, v0, Letp;->O:Z

    iget-object v0, v0, Letp;->j:Lifj;

    invoke-interface {v0}, Lifj;->onShutterButtonClick()V

    :cond_e
    :goto_6
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-object v0, v0, Letp;->i:Liff;

    invoke-interface {v0, p1}, Liff;->z(Z)V

    return-void

    :cond_f
    :goto_7
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :pswitch_3
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Leuc;

    invoke-virtual {v0}, Leuc;->E()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_10

    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Leuc;

    iget-object v0, v0, Leuc;->g:Lifj;

    invoke-interface {v0}, Lifj;->onShutterTouchStart()V

    goto :goto_8

    :cond_10
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Leuc;

    iput-boolean v1, v0, Leuc;->I:Z

    iget-object v0, v0, Leuc;->g:Lifj;

    invoke-interface {v0}, Lifj;->onShutterButtonClick()V

    :cond_11
    :goto_8
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Leuc;

    iget-object v0, v0, Leuc;->s:Liff;

    invoke-interface {v0, p1}, Liff;->z(Z)V

    return-void

    :cond_12
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Levk;

    iput-boolean v1, v0, Levk;->H:Z

    iget-object v0, v0, Levk;->i:Lifj;

    invoke-interface {v0}, Lifj;->onShutterButtonClick()V

    :cond_13
    :goto_9
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Levk;

    iget-object v0, v0, Levk;->w:Liff;

    invoke-interface {v0, p1}, Liff;->z(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Z)V
    .locals 2

    iget v0, p0, Letv;->b:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_5

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Levk;

    iget-object p1, p1, Levk;->r:Litm;

    invoke-interface {p1}, Litm;->S()V

    return-void

    :pswitch_0
    if-eqz p1, :cond_0

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuy;

    iget-object p1, p1, Leuy;->p:Leuo;

    invoke-virtual {p1}, Leuo;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuy;

    iget-object p1, p1, Leuy;->d:Litm;

    invoke-interface {p1}, Litm;->S()V

    :cond_0
    return-void

    :pswitch_1
    if-eqz p1, :cond_1

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuj;

    invoke-virtual {p1}, Leuj;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuj;

    iget-object p1, p1, Leuj;->n:Litm;

    invoke-interface {p1}, Litm;->S()V

    :cond_1
    return-void

    :pswitch_2
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-object v1, v0, Letp;->ao:Lijx;

    iget-boolean v1, v1, Lijx;->h:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Letp;->G()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Letp;

    iget-object p1, p1, Letp;->k:Litm;

    invoke-interface {p1}, Litm;->S()V

    :cond_3
    return-void

    :pswitch_3
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Leuc;

    invoke-virtual {v0}, Leuc;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuc;

    iget-object p1, p1, Leuc;->k:Litm;

    invoke-interface {p1}, Litm;->S()V

    :cond_4
    return-void

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Z)V
    .locals 2

    iget v0, p0, Letv;->b:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_5

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Levk;

    iget-object p1, p1, Levk;->r:Litm;

    invoke-interface {p1}, Litm;->T()V

    return-void

    :pswitch_0
    if-eqz p1, :cond_0

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuy;

    iget-object p1, p1, Leuy;->p:Leuo;

    invoke-virtual {p1}, Leuo;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuy;

    iget-object p1, p1, Leuy;->d:Litm;

    invoke-interface {p1}, Litm;->T()V

    :cond_0
    return-void

    :pswitch_1
    if-eqz p1, :cond_1

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuj;

    invoke-virtual {p1}, Leuj;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuj;

    iget-object p1, p1, Leuj;->n:Litm;

    invoke-interface {p1}, Litm;->T()V

    :cond_1
    return-void

    :pswitch_2
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Letp;

    iget-object v1, v0, Letp;->ao:Lijx;

    iget-boolean v1, v1, Lijx;->h:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Letp;->G()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Letp;

    iget-object p1, p1, Letp;->k:Litm;

    invoke-interface {p1}, Litm;->T()V

    :cond_3
    return-void

    :pswitch_3
    iget-object v0, p0, Letv;->a:Lchk;

    check-cast v0, Leuc;

    invoke-virtual {v0}, Leuc;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object p1, p0, Letv;->a:Lchk;

    check-cast p1, Leuc;

    iget-object p1, p1, Leuc;->k:Litm;

    invoke-interface {p1}, Litm;->T()V

    :cond_4
    return-void

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
