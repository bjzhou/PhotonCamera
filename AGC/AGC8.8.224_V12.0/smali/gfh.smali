.class public final Lgfh;
.super Lgea;


# instance fields
.field private final a:Ljwb;

.field private final b:Ljvs;


# direct methods
.method public constructor <init>(Ljwb;Ljvs;)V
    .locals 11

    invoke-direct {p0}, Lgea;-><init>()V

    iput-object p2, p0, Lgfh;->b:Ljvs;

    new-instance p2, Lgeb;

    sget-object v2, Lgyu;->a:Lgyu;

    sget-object v3, Lgyu;->a:Lgyu;

    sget-object v4, Lgej;->b:Lgej;

    sget-object v5, Lgyu;->b:Lgyu;

    sget-object v6, Lgej;->c:Lgej;

    sget-object v7, Lgyu;->c:Lgyu;

    sget-object v8, Lgej;->d:Lgej;

    sget-object v9, Lgyu;->d:Lgyu;

    sget-object v10, Lgej;->e:Lgej;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lgeb;-><init>(Ljwb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lgfh;->a:Ljwb;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f140548

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
    const p1, 0x7f140544

    return p1

    :pswitch_1
    const p1, 0x7f140540

    return p1

    :pswitch_2
    const p1, 0x7f140542

    return p1

    :pswitch_3
    const p1, 0x7f140547

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    const p1, 0x7f08040c

    return p1

    :pswitch_1
    const p1, 0x7f08038f

    return p1

    :pswitch_2
    const p1, 0x7f080391

    return p1

    :pswitch_3
    const p1, 0x7f080394

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 1

    const v0, 0x7f140545

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
    const p1, 0x7f140543

    return p1

    :pswitch_1
    const p1, 0x7f14053f

    return p1

    :pswitch_2
    const p1, 0x7f140541

    return p1

    :pswitch_3
    const p1, 0x7f140546

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Lgec;
    .locals 1

    sget-object v0, Lgec;->r:Lgec;

    return-object v0
.end method

.method public final i()Ljwb;
    .locals 1

    iget-object v0, p0, Lgfh;->a:Ljwb;

    return-object v0
.end method

.method public final j()Lmvv;
    .locals 4

    iget-object v0, p0, Lgfh;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgej;->b:Lgej;

    sget-object v1, Lgej;->e:Lgej;

    sget-object v2, Lgej;->c:Lgej;

    sget-object v3, Lgej;->d:Lgej;

    invoke-static {v0, v1, v2, v3}, Lmvv;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lgej;->b:Lgej;

    sget-object v1, Lgej;->c:Lgej;

    sget-object v2, Lgej;->d:Lgej;

    invoke-static {v0, v1, v2}, Lmvv;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lgeh;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lgdv;

    iget-object v0, v0, Lgdv;->q:Ljuf;

    iget-object v1, p0, Lgfh;->b:Ljvs;

    new-instance v2, Lecf;

    const/16 v3, 0x11

    invoke-direct {v2, p0, p1, v3}, Lecf;-><init>(Lgfh;Lgeh;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final n(Lgeh;)Z
    .locals 1

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object p1

    sget-object v0, Lika;->b:Lika;

    invoke-virtual {v0, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->h:Lika;

    invoke-virtual {v0, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->g:Lika;

    invoke-virtual {v0, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->m:Lika;

    invoke-virtual {v0, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->l:Lika;

    invoke-virtual {v0, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
