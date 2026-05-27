.class public final Ldqn;
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

    iput p4, p0, Ldqn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqn;->a:Loiw;

    iput-object p2, p0, Ldqn;->b:Loiw;

    iput-object p3, p0, Ldqn;->c:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[B)V
    .locals 0

    iput p4, p0, Ldqn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqn;->a:Loiw;

    iput-object p2, p0, Ldqn;->c:Loiw;

    iput-object p3, p0, Ldqn;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[C)V
    .locals 0

    iput p4, p0, Ldqn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqn;->c:Loiw;

    iput-object p2, p0, Ldqn;->b:Loiw;

    iput-object p3, p0, Ldqn;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 5

    iget v0, p0, Ldqn;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldqn;->c:Loiw;

    check-cast v0, Lfwo;

    invoke-virtual {v0}, Lfwo;->a()Lfuz;

    move-result-object v0

    iget-object v1, p0, Ldqn;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwb;

    iget-object v2, p0, Ldqn;->a:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwb;

    invoke-virtual {v0}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v3, Lklv;->a:Lklv;

    if-eq v0, v3, :cond_1

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Ldqn;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v2, p0, Ldqn;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljvs;

    iget-object v3, p0, Ldqn;->b:Loiw;

    check-cast v3, Lelt;

    invoke-virtual {v3}, Lelt;->a()Ljvs;

    move-result-object v3

    sget-object v4, Ldgt;->a:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljvs;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v0

    sget-object v1, Lcfv;->k:Lcfv;

    invoke-static {v0, v1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldqn;->a:Loiw;

    check-cast v0, Lefa;

    invoke-virtual {v0}, Lefa;->b()Ljvs;

    move-result-object v0

    iget-object v2, p0, Ldqn;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Ldqn;->c:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    new-instance v4, Ldql;

    invoke-direct {v4, v2, v3, v1}, Ldql;-><init>(ZZI)V

    invoke-static {v0, v4}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_1
    move-object v1, v2

    :goto_1
    sget-object v0, Lfnq;->j:Lfnq;

    invoke-static {v1, v0}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ldqn;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ldqn;->a()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Ldqn;->a()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Ldqn;->a()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
