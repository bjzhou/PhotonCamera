.class public final Lcxb;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lmqp;

.field public final c:Ldbf;

.field public final d:Lcxh;

.field public final e:Ldhi;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Z

.field public final h:Ldja;

.field private final i:Ljwb;

.field private final j:Litm;

.field private final k:Lczq;


# direct methods
.method public constructor <init>(Lmqp;Ljwb;Ldja;Ldbf;Lcxh;Ldhi;Litm;Ljwb;Lcdi;Lczq;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    iput-object p11, p0, Lcxb;->a:Ljava/util/List;

    new-instance p11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p12, 0x1

    invoke-direct {p11, p12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p11, p0, Lcxb;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p12, p0, Lcxb;->g:Z

    iput-object p1, p0, Lcxb;->b:Lmqp;

    iput-object p2, p0, Lcxb;->i:Ljwb;

    iput-object p3, p0, Lcxb;->h:Ldja;

    iput-object p4, p0, Lcxb;->c:Ldbf;

    iput-object p5, p0, Lcxb;->d:Lcxh;

    iput-object p6, p0, Lcxb;->e:Ldhi;

    iput-object p7, p0, Lcxb;->j:Litm;

    iput-object p10, p0, Lcxb;->k:Lczq;

    invoke-virtual {p9}, Lcdi;->i()Ljuf;

    move-result-object p1

    new-instance p2, Lcze;

    invoke-direct {p2, p0, p12}, Lcze;-><init>(Lcxb;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-interface {p8, p2, p3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    invoke-virtual {p9}, Lcdi;->i()Ljuf;

    move-result-object p1

    new-instance p2, Lcwy;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcwy;-><init>(Lcxb;I)V

    invoke-virtual {p0, p2}, Lcxb;->b(Lcxa;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public static final f(Lcwx;Lcwx;)Z
    .locals 2

    const/4 v0, 0x0

    if-eq p1, p0, :cond_2

    iget-boolean p0, p0, Lcwx;->f:Z

    const/4 v1, 0x1

    if-nez p0, :cond_1

    iget-boolean p0, p1, Lcwx;->f:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final a()Lcwx;
    .locals 1

    iget-object v0, p0, Lcxb;->i:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwx;

    return-object v0
.end method

.method public final b(Lcxa;)Lkad;
    .locals 2

    iget-object v0, p0, Lcxb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lchq;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, v1}, Lchq;-><init>(Lcxb;Lcxa;I)V

    return-object v0
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lcxb;->i:Ljwb;

    sget-object v1, Lcwx;->b:Lcwx;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcxb;->k:Lczq;

    invoke-interface {p1, v0}, Lczq;->h(Z)V

    :cond_0
    iget-object p1, p0, Lcxb;->j:Litm;

    invoke-interface {p1, v0}, Litm;->l(Z)V

    iget-object p1, p0, Lcxb;->b:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldal;

    invoke-interface {p1}, Ldal;->close()V

    :cond_1
    iget-object p1, p0, Lcxb;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final d(Lcwx;Z)V
    .locals 3

    iget-object v0, p0, Lcxb;->i:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwx;

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lcxb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcxa;

    invoke-interface {v2, v0, p1, p2}, Lcxa;->a(Lcwx;Lcwx;Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcxb;->i:Ljwb;

    invoke-interface {p2, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final e(Lcwx;Z)V
    .locals 1

    iget-object v0, p0, Lcxb;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcxb;->d:Lcxh;

    iput-boolean p2, v0, Lcxh;->k:Z

    sget-object p2, Lcwx;->a:Lcwx;

    invoke-virtual {p1}, Lcwx;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcxc;->d()V

    return-void

    :pswitch_1
    invoke-virtual {v0}, Lcxc;->c()V

    return-void

    :pswitch_2
    invoke-virtual {v0}, Lcxc;->a()V

    return-void

    :pswitch_3
    invoke-virtual {v0}, Lcxc;->b()V

    return-void

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
