.class public final Ldqo;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;I)V
    .locals 0

    iput p4, p0, Ldqo;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqo;->a:Loiw;

    iput-object p2, p0, Ldqo;->b:Loiw;

    iput-object p3, p0, Ldqo;->c:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[B)V
    .locals 0

    iput p4, p0, Ldqo;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqo;->a:Loiw;

    iput-object p2, p0, Ldqo;->c:Loiw;

    iput-object p3, p0, Ldqo;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[C)V
    .locals 0

    iput p4, p0, Ldqo;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqo;->a:Loiw;

    iput-object p2, p0, Ldqo;->c:Loiw;

    iput-object p3, p0, Ldqo;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[I)V
    .locals 0

    iput p4, p0, Ldqo;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqo;->b:Loiw;

    iput-object p2, p0, Ldqo;->c:Loiw;

    iput-object p3, p0, Ldqo;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[S)V
    .locals 0

    iput p4, p0, Ldqo;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqo;->c:Loiw;

    iput-object p2, p0, Ldqo;->b:Loiw;

    iput-object p3, p0, Ldqo;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lmqp;
    .locals 4

    iget v0, p0, Ldqo;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldqo;->b:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    iget-object v1, p0, Ldqo;->c:Loiw;

    check-cast v1, Logl;

    iget-object v1, v1, Logl;->a:Ljava/lang/Object;

    check-cast v1, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    iget-object v2, p0, Ldqo;->a:Loiw;

    if-nez v0, :cond_c

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_8

    :pswitch_0
    iget-object v0, p0, Ldqo;->a:Loiw;

    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ldqo;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpo;

    iget-object v1, p0, Ldqo;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldgu;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->c()V

    invoke-interface {v1}, Ldhi;->c()V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ldhi;->c()V

    sget-object v0, Ldho;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->e()V

    :cond_0
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldqo;->a:Loiw;

    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ldqo;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpo;

    iget-object v2, p0, Ldqo;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldhi;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Ldho;->a:Ldhk;

    invoke-interface {v2}, Ldhi;->e()V

    invoke-virtual {v1, v0}, Lkpo;->e(Ljava/util/Set;)Liom;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Ldqo;->a:Loiw;

    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Ldqo;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpo;

    iget-object v2, p0, Ldqo;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldhi;

    sget-object v3, Ldho;->a:Ldhk;

    invoke-interface {v2}, Ldhi;->e()V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ldhi;->e()V

    invoke-interface {v2}, Ldhi;->e()V

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Lkpo;->e(Ljava/util/Set;)Liom;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_3
    iget-object v0, p0, Ldqo;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwb;

    iget-object v1, p0, Ldqo;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    iget-object v2, p0, Ldqo;->a:Loiw;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ldhf;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->e()V

    goto :goto_2

    :cond_3
    sget-object v0, Ldhf;->e:Ldhj;

    invoke-interface {v1, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast v2, Lest;

    invoke-virtual {v2}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_3
    return-object v0

    :pswitch_4
    iget-object v0, p0, Ldqo;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Ldqo;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Ldqo;->b:Loiw;

    check-cast v2, Logl;

    iget-object v2, v2, Logl;->a:Ljava/lang/Object;

    check-cast v2, Lmqp;

    if-eqz v0, :cond_6

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    return-object v2

    :cond_6
    :goto_4
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Ldqo;->a:Loiw;

    iget-object v1, p0, Ldqo;->c:Loiw;

    check-cast v1, Lfwa;

    invoke-virtual {v1}, Lfwa;->a()Ldbf;

    move-result-object v1

    iget-object v2, p0, Ldqo;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldhi;

    invoke-virtual {v1}, Ldbf;->j()Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Ldho;->bX:Ldhj;

    invoke-interface {v2, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_6

    :cond_8
    :goto_5
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_6
    return-object v0

    :pswitch_6
    iget-object v0, p0, Ldqo;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Ldqo;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Ldqo;->c:Loiw;

    check-cast v2, Logl;

    iget-object v2, v2, Logl;->a:Ljava/lang/Object;

    check-cast v2, Lmqp;

    if-eqz v0, :cond_a

    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    return-object v2

    :cond_a
    :goto_7
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_b
    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_9

    :cond_c
    :goto_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldom;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1}, Ldom;-><init>(Loiw;I)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :goto_9
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, Ldqo;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ldqo;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Ldqo;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Ldqo;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Ldqo;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Ldqo;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Ldqo;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Ldqo;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Ldqo;->a()Lmqp;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
