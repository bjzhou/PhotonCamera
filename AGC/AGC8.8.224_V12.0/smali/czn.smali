.class public final Lczn;
.super Lgea;


# instance fields
.field public final a:Lczm;

.field private final b:Ljwb;

.field private final c:Z

.field private final d:Lczz;

.field private final e:Lkog;


# direct methods
.method public constructor <init>(Lgzn;Ldhi;Lczz;Lczm;Lkog;)V
    .locals 4

    invoke-direct {p0}, Lgea;-><init>()V

    sget-object v0, Lgzd;->C:Lgzr;

    invoke-interface {p1, v0}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object p1

    sget-object v0, Lcfv;->t:Lcfv;

    sget-object v1, Lgej;->I:Lgej;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcdu;

    const/16 v3, 0xb

    invoke-direct {v2, v1, v3}, Lcdu;-><init>(Lgej;I)V

    invoke-static {p1, v0, v2}, Ljwa;->b(Ljwb;Lmqi;Lmqi;)Ljwb;

    move-result-object p1

    iput-object p1, p0, Lczn;->b:Ljwb;

    sget-object p1, Ldgu;->al:Ldhj;

    invoke-interface {p2, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lczn;->c:Z

    iput-object p3, p0, Lczn;->d:Lczz;

    iput-object p4, p0, Lczn;->a:Lczm;

    iput-object p5, p0, Lczn;->e:Lkog;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f1401ff

    return v0
.end method

.method protected final b(Lgej;)I
    .locals 1

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const p1, 0x7f140202

    return p1

    :pswitch_1
    const p1, 0x7f140204

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    const v0, 0x7f140205

    return v0
.end method

.method public final d(Lgej;)I
    .locals 1

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const p1, 0x7f08020f

    return p1

    :pswitch_1
    const p1, 0x7f080210

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 1

    const v0, 0x7f140200

    return v0
.end method

.method protected final f(Lgej;)I
    .locals 1

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const p1, 0x7f140201

    return p1

    :pswitch_1
    const p1, 0x7f140203

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Lgec;
    .locals 1

    sget-object v0, Lgec;->t:Lgec;

    return-object v0
.end method

.method public final h()Lgem;
    .locals 2

    new-instance v0, Ldpq;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ldpq;-><init>(Lczn;I)V

    return-object v0
.end method

.method public final i()Ljwb;
    .locals 1

    iget-object v0, p0, Lczn;->b:Ljwb;

    return-object v0
.end method

.method public final j()Lmvv;
    .locals 2

    sget-object v0, Lgej;->J:Lgej;

    sget-object v1, Lgej;->I:Lgej;

    invoke-static {v0, v1}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lgeh;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lgdv;

    iget-object v0, v0, Lgdv;->q:Ljuf;

    iget-object v1, p0, Lczn;->d:Lczz;

    iget-object v1, v1, Lczz;->a:Ljwb;

    new-instance v2, Lcze;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lcze;-><init>(Lgeh;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lczn;->d:Lczz;

    iget-object v1, v1, Lczz;->b:Ljwb;

    new-instance v2, Lcze;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, Lcze;-><init>(Lgeh;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lczn;->d:Lczz;

    iget-object v1, v1, Lczz;->c:Ljwb;

    invoke-static {v1}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v1

    new-instance v2, Lccp;

    const/16 v3, 0x10

    invoke-direct {v2, p0, p1, v3}, Lccp;-><init>(Lczn;Lgeh;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final m(Lgeh;)Z
    .locals 4

    iget-object v0, p0, Lczn;->d:Lczz;

    iget-object v0, v0, Lczz;->c:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sget-object v2, Lgej;->C:Lgej;

    iget-object v3, p0, Lczn;->d:Lczz;

    iget-object v3, v3, Lczz;->a:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lczn;->e:Lkog;

    iget-boolean v2, v2, Lkog;->o:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    invoke-static {p1}, Lged;->a(Lgeh;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v3

    :cond_3
    return v0
.end method

.method public final n(Lgeh;)Z
    .locals 1

    iget-boolean v0, p0, Lczn;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lika;->c:Lika;

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object p1

    invoke-virtual {v0, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lczn;->d:Lczz;

    iget-object p1, p1, Lczz;->b:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
