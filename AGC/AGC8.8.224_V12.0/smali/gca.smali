.class public final Lgca;
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

    iput p3, p0, Lgca;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgca;->a:Loiw;

    iput-object p2, p0, Lgca;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Lgca;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgca;->b:Loiw;

    iput-object p2, p0, Lgca;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[C)V
    .locals 0

    iput p3, p0, Lgca;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgca;->b:Loiw;

    iput-object p2, p0, Lgca;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[S)V
    .locals 0

    iput p3, p0, Lgca;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgca;->b:Loiw;

    iput-object p2, p0, Lgca;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 5

    iget v0, p0, Lgca;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgca;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    iget-object v4, p0, Lgca;->a:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljvs;

    new-array v1, v1, [Ljvs;

    aput-object v0, v1, v3

    aput-object v4, v1, v2

    invoke-static {v1}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v0

    sget-object v1, Lfnq;->t:Lfnq;

    invoke-static {v0, v1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lgca;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    iget-object v4, p0, Lgca;->a:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljvs;

    new-array v1, v1, [Ljvs;

    aput-object v0, v1, v3

    aput-object v4, v1, v2

    invoke-static {v1}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v0

    sget-object v1, Lhop;->b:Lhop;

    invoke-static {v0, v1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lgca;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzn;

    iget-object v1, p0, Lgca;->a:Loiw;

    check-cast v1, Lfwo;

    invoke-virtual {v1}, Lfwo;->a()Lfuz;

    move-result-object v1

    new-instance v2, Lgce;

    sget-object v3, Lgzd;->s:Lgzu;

    invoke-interface {v0, v3}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v3

    sget-object v4, Lgzd;->t:Lgzu;

    invoke-interface {v0, v4}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v0

    sget-object v4, Lgcc;->b:Lgcc;

    invoke-direct {v2, v3, v0, v1, v4}, Lgce;-><init>(Ljwb;Ljwb;Lfuz;Lgcc;)V

    return-object v2

    :pswitch_2
    iget-object v0, p0, Lgca;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lgca;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgzm;

    sget-object v2, Lgbz;->a:Lgcf;

    sget-object v2, Ldhq;->aq:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgzd;->z:Lgzr;

    invoke-interface {v1, v0}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_3
    iget-object v0, p0, Lgca;->a:Loiw;

    check-cast v0, Lfwo;

    invoke-virtual {v0}, Lfwo;->a()Lfuz;

    move-result-object v0

    iget-object v1, p0, Lgca;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhy;->i:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lklu;->a:Lklu;

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lklw;->j()Lklu;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lgca;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lgca;->a()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lgca;->a()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lgca;->a()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lgca;->a()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lgca;->a()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
