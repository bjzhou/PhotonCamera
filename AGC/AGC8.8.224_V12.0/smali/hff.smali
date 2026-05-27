.class public final Lhff;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lgzm;

.field public final b:Lgzn;

.field public c:Z

.field public final d:Lnwn;

.field private final e:Lfbz;

.field private final f:Ljvs;

.field private final g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lfbz;Ljwb;Lgzm;Lgzn;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lhfe;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lhff;->g:Ljava/util/Map;

    sget-object v0, Lnkt;->j:Lnkt;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iput-object v0, p0, Lhff;->d:Lnwn;

    iput-object p1, p0, Lhff;->e:Lfbz;

    iput-object p2, p0, Lhff;->f:Ljvs;

    iput-object p3, p0, Lhff;->a:Lgzm;

    iput-object p4, p0, Lhff;->b:Lgzn;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    invoke-virtual {p0}, Lhff;->b()V

    sget-object v0, Lhfe;->a:Lhfe;

    invoke-virtual {p0, v0}, Lhff;->d(Lhfe;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lhff;->f(I)V

    return-void
.end method

.method final b()V
    .locals 2

    iget-boolean v0, p0, Lhff;->c:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->p(Z)V

    iput-boolean v1, p0, Lhff;->c:Z

    iget-object v0, p0, Lhff;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lhff;->d:Lnwn;

    iget-object v1, v0, Lnwn;->a:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->k()Lnws;

    move-result-object v1

    iput-object v1, v0, Lnwn;->b:Lnws;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default instance must be immutable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final c()V
    .locals 8

    iget-boolean v0, p0, Lhff;->c:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lhff;->d:Lnwn;

    iget-object v1, p0, Lhff;->a:Lgzm;

    sget-object v2, Lgzd;->R:Lgzr;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnkt;

    sget-object v2, Lnkt;->j:Lnkt;

    iget v2, v0, Lnkt;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Lnkt;->a:I

    iput-boolean v1, v0, Lnkt;->h:Z

    iget-object v0, p0, Lhff;->d:Lnwn;

    iget-object v1, p0, Lhff;->a:Lgzm;

    sget-object v2, Lgzd;->Q:Lgzr;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnkt;

    iget v2, v0, Lnkt;->a:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lnkt;->a:I

    iput-boolean v1, v0, Lnkt;->i:Z

    iget-object v0, p0, Lhff;->d:Lnwn;

    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnkt;

    iget-object v0, v0, Lnkt;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lhff;->d:Lnwn;

    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnkt;

    iget v2, v0, Lnkt;->d:I

    invoke-static {v2}, Lndd;->q(I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    iget v0, v0, Lnkt;->c:I

    invoke-static {v0}, Lndd;->r(I)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v3, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    :goto_1
    xor-int/2addr v0, v3

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lhff;->d:Lnwn;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnkt;

    iget v2, v0, Lnkt;->a:I

    or-int/2addr v2, v3

    iput v2, v0, Lnkt;->a:I

    iput-boolean v3, v0, Lnkt;->b:Z

    iget-object v0, p0, Lhff;->d:Lnwn;

    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnkt;

    iget-object v2, v0, Lnkt;->g:Ljava/lang/String;

    iget v0, v0, Lnkt;->c:I

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v0, p0, Lhff;->d:Lnwn;

    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnkt;

    iget v2, v0, Lnkt;->c:I

    iget v0, v0, Lnkt;->d:I

    :goto_3
    iget-object v2, p0, Lhff;->e:Lfbz;

    iget-object v0, p0, Lhff;->f:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-static {v0}, Lijy;->e(Lika;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lhff;->d:Lnwn;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lnkt;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lfbz;->X(ILnkd;Lnkg;Lnkt;Ljava/lang/Long;)V

    iput-boolean v1, p0, Lhff;->c:Z

    return-void
.end method

.method final d(Lhfe;)V
    .locals 4

    iget-boolean v0, p0, Lhff;->c:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lhff;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lhff;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lhfe;->a:Lhfe;

    invoke-virtual {p1}, Lhfe;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1}, Lhfe;->name()Ljava/lang/String;

    return-void

    :pswitch_0
    iget-object p1, p0, Lhff;->g:Ljava/util/Map;

    sget-object v2, Lhfe;->b:Lhfe;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p1, p0, Lhff;->d:Lnwn;

    iget-object v2, p1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_0
    long-to-int v1, v0

    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lnkt;

    sget-object v0, Lnkt;->j:Lnkt;

    iget v0, p1, Lnkt;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lnkt;->a:I

    iput v1, p1, Lnkt;->f:I

    return-void

    :pswitch_1
    iget-object p1, p0, Lhff;->g:Ljava/util/Map;

    sget-object v2, Lhfe;->a:Lhfe;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p1, p0, Lhff;->d:Lnwn;

    iget-object v2, p1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_1
    long-to-int v1, v0

    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lnkt;

    sget-object v0, Lnkt;->j:Lnkt;

    iget v0, p1, Lnkt;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lnkt;->a:I

    iput v1, p1, Lnkt;->e:I

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final e(I)V
    .locals 2

    iget-boolean v0, p0, Lhff;->c:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lhff;->d:Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnkt;

    sget-object v1, Lnkt;->j:Lnkt;

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lnkt;->c:I

    iget p1, v0, Lnkt;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lnkt;->a:I

    return-void
.end method

.method final f(I)V
    .locals 2

    iget-boolean v0, p0, Lhff;->c:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lhff;->d:Lnwn;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v0, v0, Lnwn;->b:Lnws;

    check-cast v0, Lnkt;

    sget-object v1, Lnkt;->j:Lnkt;

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lnkt;->d:I

    iget p1, v0, Lnkt;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lnkt;->a:I

    return-void
.end method
