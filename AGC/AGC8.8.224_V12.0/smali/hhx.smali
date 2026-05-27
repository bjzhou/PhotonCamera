.class public final Lhhx;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Loiw;Loiw;I)V
    .locals 0

    iput p3, p0, Lhhx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhhx;->a:Loiw;

    iput-object p2, p0, Lhhx;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Lhhx;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhhx;->b:Loiw;

    iput-object p2, p0, Lhhx;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lmqp;
    .locals 3

    iget v0, p0, Lhhx;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhhx;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    iget-object v1, p0, Lhhx;->b:Loiw;

    check-cast v1, Ldwh;

    invoke-virtual {v1}, Ldwh;->a()Landroid/content/Context;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ldet;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v2}, Ldet;-><init>(Lmqp;I)V

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto/16 :goto_8

    :pswitch_0
    iget-object v0, p0, Lhhx;->a:Loiw;

    iget-object v1, p0, Lhhx;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_0
    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lhhx;->b:Loiw;

    iget-object v1, p0, Lhhx;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_1

    :cond_1
    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lhhx;->a:Loiw;

    iget-object v1, p0, Lhhx;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_2

    :cond_2
    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    :goto_2
    return-object v0

    :pswitch_3
    iget-object v0, p0, Lhhx;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpo;

    iget-object v0, p0, Lhhx;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lhhx;->a:Loiw;

    iget-object v1, p0, Lhhx;->b:Loiw;

    check-cast v1, Lccs;

    invoke-virtual {v1}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_3
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lhhx;->a:Loiw;

    iget-object v1, p0, Lhhx;->b:Loiw;

    check-cast v1, Lccs;

    invoke-virtual {v1}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_4

    :cond_4
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_4
    return-object v0

    :pswitch_6
    iget-object v0, p0, Lhhx;->a:Loiw;

    iget-object v1, p0, Lhhx;->b:Loiw;

    check-cast v1, Lccs;

    invoke-virtual {v1}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_5

    :cond_5
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_5
    return-object v0

    :pswitch_7
    iget-object v0, p0, Lhhx;->a:Loiw;

    iget-object v1, p0, Lhhx;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_6

    :cond_6
    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    :goto_6
    return-object v0

    :pswitch_8
    iget-object v0, p0, Lhhx;->a:Loiw;

    iget-object v1, p0, Lhhx;->b:Loiw;

    check-cast v1, Lccs;

    invoke-virtual {v1}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_7

    :cond_7
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, Lhhx;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lhhx;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lhhx;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lhhx;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lhhx;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lhhx;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lhhx;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lhhx;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Lhhx;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-virtual {p0}, Lhhx;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lhhx;->a()Lmqp;

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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
