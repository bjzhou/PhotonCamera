.class public final Lfoe;
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

    iput p3, p0, Lfoe;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfoe;->a:Loiw;

    iput-object p2, p0, Lfoe;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Lfoe;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfoe;->b:Loiw;

    iput-object p2, p0, Lfoe;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[C)V
    .locals 0

    iput p3, p0, Lfoe;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfoe;->b:Loiw;

    iput-object p2, p0, Lfoe;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[S)V
    .locals 0

    iput p3, p0, Lfoe;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfoe;->b:Loiw;

    iput-object p2, p0, Lfoe;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Lfoe;
    .locals 2

    new-instance v0, Lfoe;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lfoe;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;Loiw;)Lfoe;
    .locals 3

    new-instance v0, Lfoe;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lfoe;-><init>(Loiw;Loiw;I[C)V

    return-object v0
.end method

.method public static c(Loiw;Loiw;)Lfoe;
    .locals 3

    new-instance v0, Lfoe;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lfoe;-><init>(Loiw;Loiw;I[S)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lfoe;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfoe;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    iget-object v1, p0, Lfoe;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsu;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lfoe;->b:Loiw;

    check-cast v0, Ldmf;

    invoke-virtual {v0}, Ldmf;->a()Ldne;

    move-result-object v0

    iget-object v1, p0, Lfoe;->a:Loiw;

    check-cast v1, Lfwg;

    invoke-virtual {v1}, Lfwg;->a()Llpg;

    move-result-object v1

    invoke-virtual {v0}, Ldne;->h()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Llpg;->a:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lfoe;->a:Loiw;

    iget-object v1, p0, Lfoe;->b:Loiw;

    check-cast v1, Ldmf;

    invoke-virtual {v1}, Ldmf;->a()Ldne;

    move-result-object v1

    invoke-virtual {v1}, Ldne;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsg;

    goto :goto_1

    :cond_1
    new-instance v0, Lfrr;

    invoke-direct {v0}, Lfrr;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lfoe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfou;

    iget-object v1, p0, Lfoe;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldgu;->aj:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lfou;->h:Lipe;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Lmza;->a:Lmza;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lfoe;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfou;

    iget-object v1, p0, Lfoe;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldgu;->aj:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget-object v0, Lmza;->a:Lmza;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lfoe;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lfoe;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, Ldgu;->b:Ldhk;

    invoke-interface {v0, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    sget-object v2, Lfjd;->b:Lfjd;

    invoke-virtual {v0, v2}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    move-result-object v0

    sget-object v2, Lefv;->h:Lefv;

    invoke-virtual {v0, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v2, Lfnu;

    invoke-direct {v2, v1}, Lfnu;-><init>(Z)V

    invoke-virtual {v0, v2}, Lj$/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljws;

    new-instance v1, Ljvk;

    invoke-direct {v1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    iget-object v0, p0, Lfoe;->a:Loiw;

    iget-object v1, p0, Lfoe;->b:Loiw;

    check-cast v1, Leqz;

    invoke-virtual {v1}, Leqz;->a()Lcdi;

    move-result-object v1

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchk;

    invoke-virtual {v1}, Lcdi;->i()Ljuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljuf;->d(Lkad;)V

    return-object v0

    :cond_4
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_4
    return-object v0

    nop

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
