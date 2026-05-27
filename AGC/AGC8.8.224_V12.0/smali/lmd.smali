.class public final Llmd;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final synthetic f:I


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;I)V
    .locals 0

    iput p6, p0, Llmd;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmd;->a:Loiw;

    iput-object p2, p0, Llmd;->b:Loiw;

    iput-object p3, p0, Llmd;->c:Loiw;

    iput-object p4, p0, Llmd;->d:Loiw;

    iput-object p5, p0, Llmd;->e:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;I[B)V
    .locals 0

    iput p6, p0, Llmd;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmd;->c:Loiw;

    iput-object p2, p0, Llmd;->d:Loiw;

    iput-object p3, p0, Llmd;->e:Loiw;

    iput-object p4, p0, Llmd;->a:Loiw;

    iput-object p5, p0, Llmd;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;I[C)V
    .locals 0

    iput p6, p0, Llmd;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmd;->b:Loiw;

    iput-object p2, p0, Llmd;->c:Loiw;

    iput-object p3, p0, Llmd;->d:Loiw;

    iput-object p4, p0, Llmd;->e:Loiw;

    iput-object p5, p0, Llmd;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;I[S)V
    .locals 0

    iput p6, p0, Llmd;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmd;->b:Loiw;

    iput-object p2, p0, Llmd;->e:Loiw;

    iput-object p3, p0, Llmd;->d:Loiw;

    iput-object p4, p0, Llmd;->a:Loiw;

    iput-object p5, p0, Llmd;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Llmd;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llmd;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Llzz;

    iget-object v0, p0, Llmd;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Llyz;

    iget-object v0, p0, Llmd;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v0, p0, Llmd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Llyh;

    iget-object v0, p0, Llmd;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkrn;

    new-instance v0, Ldqx;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Ldqx;-><init>(Llzz;Llyz;Landroidx/wear/ambient/AmbientMode$AmbientController;Llyh;Lkrn;[B[B[B[B)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Llmd;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lopq;

    iget-object v0, p0, Llmd;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v0, p0, Llmd;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkrn;

    iget-object v0, p0, Llmd;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Llzw;

    iget-object v0, p0, Llmd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Llzz;

    new-instance v0, Llzs;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Llzs;-><init>(Lopq;Landroid/content/Context;Lkrn;Llzw;Llzz;)V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Llmd;->c:Loiw;

    check-cast v0, Llik;

    invoke-virtual {v0}, Llik;->a()Llij;

    move-result-object v2

    iget-object v0, p0, Llmd;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Llmd;->e:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v3

    iget-object v4, p0, Llmd;->a:Loiw;

    iget-object v0, p0, Llmd;->b:Loiw;

    check-cast v0, Llmu;

    invoke-virtual {v0}, Llmu;->a()Llhz;

    move-result-object v5

    new-instance v0, Llmh;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Llmh;-><init>(Llij;Logd;Loiw;Llhz;[B)V

    return-object v0

    :pswitch_2
    iget-object v0, p0, Llmd;->a:Loiw;

    check-cast v0, Llik;

    invoke-virtual {v0}, Llik;->a()Llij;

    move-result-object v2

    iget-object v0, p0, Llmd;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lnox;

    iget-object v0, p0, Llmd;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Llmd;->d:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v5

    iget-object v6, p0, Llmd;->e:Loiw;

    new-instance v0, Lllp;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lllp;-><init>(Llij;Lnox;Ljava/util/concurrent/Executor;Logd;Loiw;)V

    return-object v0

    :pswitch_3
    iget-object v0, p0, Llmd;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    iget-object v0, p0, Llmd;->b:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    iget-object v1, p0, Llmd;->c:Loiw;

    check-cast v1, Ldqo;

    invoke-virtual {v1}, Ldqo;->a()Lmqp;

    move-result-object v1

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    iget-object v2, p0, Llmd;->d:Loiw;

    iget-object v3, p0, Llmd;->e:Loiw;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llil;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llil;

    :goto_0
    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
