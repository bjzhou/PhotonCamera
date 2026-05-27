.class public final Lkjf;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lkjf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkjf;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lkjf;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Llhe;

    invoke-direct {v1, v0}, Llhe;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    sget-object v1, Lknk;->i:Lknk;

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llml;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    sget-object v1, Lknk;->j:Lknk;

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llmf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    sget-object v1, Lknk;->l:Lknk;

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llmi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    invoke-static {}, Llgd;->a()Llkm;

    move-result-object v1

    invoke-virtual {v1}, Llkm;->c()Llgd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgd;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    sget-object v1, Lknk;->e:Lknk;

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llma;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    sget-object v1, Lknk;->f:Lknk;

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llki;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    sget-object v1, Lknk;->c:Lknk;

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lliv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    sget-object v1, Lknk;->k:Lknk;

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llip;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    sget-object v1, Lknk;->g:Lknk;

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lljn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lkuy;

    invoke-static {}, Lkhz;->b()Llho;

    move-result-object v1

    new-instance v2, Lloi;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lloi;-><init>(Lkuy;Llho;[B)V

    return-object v2

    :pswitch_a
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Laxi;

    invoke-direct {v1}, Laxi;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxz;

    iget-object v3, v1, Laxi;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :pswitch_b
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Lhlf;

    invoke-virtual {v0}, Lhlf;->a()Lkqa;

    move-result-object v0

    new-instance v1, Llhe;

    invoke-direct {v1, v0}, Llhe;-><init>(Lkqa;)V

    return-object v1

    :pswitch_c
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Lkno;

    invoke-virtual {v0}, Lkno;->a()Lknq;

    move-result-object v0

    new-instance v1, Lknt;

    invoke-direct {v1, v0}, Lknt;-><init>(Lknq;)V

    return-object v1

    :pswitch_d
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Lemh;

    invoke-virtual {v0}, Lemh;->a()Landroid/hardware/SensorManager;

    move-result-object v0

    new-instance v1, Lkms;

    invoke-direct {v1, v0}, Lkms;-><init>(Landroid/hardware/SensorManager;)V

    return-object v1

    :pswitch_e
    iget-object v0, p0, Lkjf;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkkk;

    new-instance v1, Liiz;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v2}, Liiz;-><init>(Lkkk;I)V

    invoke-static {v1}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v0

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lkjf;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkeo;

    new-instance v1, Lkkk;

    invoke-direct {v1, v0}, Lkkk;-><init>(Lkeo;)V

    return-object v1

    :pswitch_10
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Lkge;

    invoke-virtual {v0}, Lkge;->a()Lkeq;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, v0, Lkeq;->g:Lmvv;

    move-object v2, v0

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/util/Size;

    iget-object v6, v4, Lkfl;->d:Lkaf;

    iget v7, v6, Lkaf;->a:I

    iget v6, v6, Lkaf;->b:I

    invoke-direct {v5, v7, v6}, Landroid/util/Size;-><init>(II)V

    iget v6, v4, Lkfl;->e:I

    invoke-static {v5, v6}, Lhg;->b(Landroid/util/Size;I)Lbkb;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    :pswitch_11
    iget-object v0, p0, Lkjf;->a:Loiw;

    check-cast v0, Lkge;

    invoke-virtual {v0}, Lkge;->a()Lkeq;

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lkjf;->a:Loiw;

    new-instance v1, Lkhc;

    invoke-direct {v1, v0}, Lkhc;-><init>(Loiw;)V

    return-object v1

    :pswitch_13
    iget-object v0, p0, Lkjf;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Ljud;

    invoke-direct {v1, v0}, Ljud;-><init>(Landroid/os/Handler;)V

    return-object v1

    nop

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
