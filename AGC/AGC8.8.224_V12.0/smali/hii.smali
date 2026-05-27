.class public final Lhii;
.super Lgea;


# instance fields
.field public final a:Lgec;

.field public final b:Lhie;

.field public final c:Lgzm;

.field private final d:Z

.field private final e:Z

.field private final f:Ljwb;

.field private final g:Lgzw;

.field private final h:Lczz;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Ligo;


# direct methods
.method public constructor <init>(Lhie;ZZLgzp;Lgyt;Lgzm;Lgzw;Lczz;Ljava/util/concurrent/Executor;Ligo;[B[B)V
    .locals 0

    invoke-direct {p0}, Lgea;-><init>()V

    new-instance p11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p12, 0x0

    invoke-direct {p11, p12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p11, p0, Lhii;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lhii;->b:Lhie;

    iput-boolean p2, p0, Lhii;->d:Z

    iput-boolean p3, p0, Lhii;->e:Z

    iput-object p6, p0, Lhii;->c:Lgzm;

    iput-object p7, p0, Lhii;->g:Lgzw;

    iput-object p8, p0, Lhii;->h:Lczz;

    iput-object p9, p0, Lhii;->i:Ljava/util/concurrent/Executor;

    iput-object p10, p0, Lhii;->k:Ligo;

    if-eqz p3, :cond_0

    sget-object p1, Lgec;->x:Lgec;

    goto :goto_0

    :cond_0
    sget-object p1, Lgec;->y:Lgec;

    :goto_0
    iput-object p1, p0, Lhii;->a:Lgec;

    new-instance p1, Lgeb;

    sget-object p9, Lgyt;->b:Lgyt;

    sget-object p10, Lgej;->Y:Lgej;

    sget-object p11, Lgyt;->a:Lgyt;

    sget-object p12, Lgej;->Z:Lgej;

    move-object p6, p1

    move-object p7, p4

    move-object p8, p5

    invoke-direct/range {p6 .. p12}, Lgeb;-><init>(Ljwb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lhii;->f:Ljwb;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f1404b5

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
    const p1, 0x7f1404b8

    return p1

    :pswitch_1
    const p1, 0x7f1404ba

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    const v0, 0x7f1404bb

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
    const p1, 0x7f0801a9

    return p1

    :pswitch_1
    const p1, 0x7f0801a8

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 1

    const v0, 0x7f1404b6

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
    const p1, 0x7f1404b7

    return p1

    :pswitch_1
    const p1, 0x7f1404b9

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Lgec;
    .locals 1

    iget-object v0, p0, Lhii;->a:Lgec;

    return-object v0
.end method

.method public final h()Lgem;
    .locals 2

    new-instance v0, Ldpq;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ldpq;-><init>(Lhii;I)V

    return-object v0
.end method

.method public final i()Ljwb;
    .locals 1

    iget-object v0, p0, Lhii;->f:Ljwb;

    return-object v0
.end method

.method public final j()Lmvv;
    .locals 2

    sget-object v0, Lgej;->Z:Lgej;

    sget-object v1, Lgej;->Y:Lgej;

    invoke-static {v0, v1}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lgeh;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lgdv;

    iget-object v0, v0, Lgdv;->q:Ljuf;

    iget-object v1, p0, Lhii;->g:Lgzw;

    new-instance v2, Lglh;

    const/4 v3, 0x5

    invoke-direct {v2, p0, p1, v3}, Lglh;-><init>(Lhii;Lgeh;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-virtual {v1, v2, v3}, Ljwi;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lhii;->h:Lczz;

    iget-object v1, v1, Lczz;->a:Ljwb;

    new-instance v2, Lglh;

    const/4 v3, 0x6

    invoke-direct {v2, p0, p1, v3}, Lglh;-><init>(Lhii;Lgeh;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lhii;->h:Lczz;

    iget-object v1, v1, Lczz;->b:Ljwb;

    new-instance v2, Lglh;

    const/4 v3, 0x7

    invoke-direct {v2, p0, p1, v3}, Lglh;-><init>(Lhii;Lgeh;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lhii;->h:Lczz;

    iget-object v1, v1, Lczz;->c:Ljwb;

    invoke-static {v1}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v1

    new-instance v2, Lglh;

    const/16 v3, 0x8

    invoke-direct {v2, p0, p1, v3}, Lglh;-><init>(Lhii;Lgeh;I)V

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

    iget-object v0, p0, Lhii;->h:Lczz;

    iget-object v0, v0, Lczz;->c:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v1, Lgyw;->a:Lgyw;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lhii;->g:Lgzw;

    invoke-virtual {v1}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyw;

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lgej;->C:Lgej;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lhii;->h:Lczz;

    iget-object v0, v0, Lczz;->a:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Lgej;

    :goto_1
    iget-object v2, p0, Lhii;->k:Ligo;

    invoke-interface {p1}, Lgeh;->F()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lklv;->a:Lklv;

    goto :goto_2

    :cond_2
    sget-object p1, Lklv;->b:Lklv;

    :goto_2
    sget-object v3, Lgej;->a:Lgej;

    sget-object v3, Lgyw;->a:Lgyw;

    invoke-virtual {v1}, Lgyw;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown video resolution option"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object v1, Ljwu;->k:Ljwu;

    goto :goto_3

    :pswitch_1
    sget-object v1, Ljwu;->i:Ljwu;

    :goto_3
    invoke-virtual {v0}, Lgej;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported menu option"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    sget-object v0, Ljws;->d:Ljws;

    goto :goto_4

    :pswitch_3
    sget-object v0, Ljws;->c:Ljws;

    goto :goto_4

    :pswitch_4
    sget-object v0, Ljws;->b:Ljws;

    goto :goto_4

    :pswitch_5
    sget-object v0, Ljws;->a:Ljws;

    :goto_4
    invoke-virtual {v2, p1, v1, v0}, Ligo;->o(Lklv;Ljwu;Ljws;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final n(Lgeh;)Z
    .locals 5

    iget-boolean v0, p0, Lhii;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lika;->c:Lika;

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object v3

    invoke-virtual {v0, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lged;->a(Lgeh;)Z

    move-result v0

    iget-boolean v3, p0, Lhii;->e:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhii;->h:Lczz;

    iget-object v0, v0, Lczz;->b:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lhii;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhii;->c:Lgzm;

    sget-object v3, Lgzd;->H:Lgzr;

    invoke-interface {v2, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lhii;->f:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgej;

    check-cast p1, Lgdv;

    iget-object p1, p1, Lgdv;->q:Ljuf;

    iget-object v2, p0, Lhii;->f:Ljwb;

    new-instance v3, Lglh;

    const/16 v4, 0x9

    invoke-direct {v3, p0, v0, v4}, Lglh;-><init>(Lhii;Lgej;I)V

    iget-object v0, p0, Lhii;->i:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3, v0}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    return v1

    :cond_1
    return v0
.end method

.method public final z(Lgeh;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object p2, Lgej;->Y:Lgej;

    iget-object v2, p0, Lhii;->f:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iget-boolean p2, p0, Lhii;->e:Z

    if-eq v0, p2, :cond_1

    const-string p2, "SpeechEnhanceFront"

    goto :goto_1

    :cond_1
    const-string p2, "SpeechEnhanceBack"

    :goto_1
    const v0, 0x7f0801a8

    const v2, 0x7f1404ba

    invoke-interface {p1, v1, v0, v2, p2}, Lgeh;->v(ZIILjava/lang/String;)V

    return-void
.end method
