.class public final Lfix;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfvx;I)V
    .locals 0

    iput p2, p0, Lfix;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfix;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lfix;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfix;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Loiw;)Lfix;
    .locals 2

    new-instance v0, Lfix;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfix;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;)Lfix;
    .locals 2

    new-instance v0, Lfix;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lfix;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static d(Loiw;)Lfix;
    .locals 2

    new-instance v0, Lfix;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lfix;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final b()Lmqp;
    .locals 2

    iget v0, p0, Lfix;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llic;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldih;->a:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldij;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->g()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    check-cast v0, Lccs;

    invoke-virtual {v0}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldhq;->ar:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x103

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_0
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    check-cast v0, Lfvx;

    iget-object v0, v0, Lfvx;->i:Ljava/lang/Object;

    :goto_1
    check-cast v0, Lmqp;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    check-cast v0, Lfvx;

    iget-object v0, v0, Lfvx;->j:Ljava/lang/Object;

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lfix;->b:Ljava/lang/Object;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    return-object v0

    :cond_1
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lfix;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lfix;->b()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lfix;->b()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lfix;->b()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lfix;->b()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lfix;->b()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lfix;->b()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lfix;->b()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Lfix;->b()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-virtual {p0}, Lfix;->b()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lfix;->b()Lmqp;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
