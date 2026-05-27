.class public final synthetic Lilh;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field public final synthetic a:Loiw;

.field public final synthetic b:Loiw;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Loiw;

.field public final synthetic f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;


# direct methods
.method public synthetic constructor <init>(Loiw;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Loiw;ZZLoiw;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lilh;->a:Loiw;

    iput-object p2, p0, Lilh;->f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iput-object p3, p0, Lilh;->b:Loiw;

    iput-boolean p4, p0, Lilh;->c:Z

    iput-boolean p5, p0, Lilh;->d:Z

    iput-object p6, p0, Lilh;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lilh;->a:Loiw;

    iget-object v2, v0, Lilh;->f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v3, v0, Lilh;->b:Loiw;

    iget-boolean v4, v0, Lilh;->c:Z

    iget-boolean v5, v0, Lilh;->d:Z

    iget-object v6, v0, Lilh;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lilj;

    invoke-static {}, Lhdz;->a()Llie;

    move-result-object v7

    const-string v8, "InAppUpdate"

    iput-object v8, v7, Llie;->c:Ljava/lang/Object;

    sget-object v8, Lika;->b:Lika;

    sget-object v9, Lika;->g:Lika;

    sget-object v10, Lika;->m:Lika;

    invoke-static {v8, v9, v10}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v8

    invoke-virtual {v7, v8}, Llie;->h(Lmwn;)V

    sget-object v8, Lklv;->b:Lklv;

    sget-object v9, Lklv;->a:Lklv;

    invoke-static {v8, v9}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v8

    invoke-virtual {v7, v8}, Llie;->g(Lmwn;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Llie;->j(Z)V

    invoke-virtual {v7, v8}, Llie;->k(Z)V

    const/4 v9, 0x1

    iput v9, v7, Llie;->a:I

    invoke-virtual {v7}, Llie;->f()Lhdz;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k(Lhdy;Lhdz;)V

    check-cast v3, Liln;

    invoke-virtual {v3}, Liln;->a()Lilm;

    move-result-object v1

    iget-object v2, v1, Lilm;->c:Lgzm;

    sget-object v3, Lgzd;->ae:Lgzt;

    invoke-interface {v2, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v2, v1, Lilm;->e:Landroid/content/pm/PackageInfo;

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v7, v13, v9

    if-eqz v7, :cond_0

    iget-object v7, v1, Lilm;->d:Lgzn;

    sget-object v9, Lgzd;->ae:Lgzt;

    invoke-interface {v7, v9}, Lgzn;->d(Lgzb;)V

    iget-object v7, v1, Lilm;->d:Lgzn;

    sget-object v9, Lgzd;->ah:Lgzs;

    invoke-interface {v7, v9}, Lgzn;->d(Lgzb;)V

    iget-object v7, v1, Lilm;->d:Lgzn;

    sget-object v9, Lgzd;->ai:Lgzt;

    invoke-interface {v7, v9}, Lgzn;->d(Lgzb;)V

    iget-object v9, v1, Lilm;->h:Lfbz;

    const/4 v10, 0x5

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v11, v2

    invoke-interface/range {v9 .. v16}, Lfbz;->al(IJJII)V

    :cond_0
    iget-object v7, v1, Lilm;->c:Lgzm;

    sget-object v9, Lgzd;->af:Lgzt;

    invoke-interface {v7, v9}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v2, v9

    if-eqz v7, :cond_1

    iget-object v7, v1, Lilm;->d:Lgzn;

    sget-object v9, Lgzd;->ag:Lgzs;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v9, v8}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v7, v1, Lilm;->d:Lgzn;

    sget-object v8, Lgzd;->af:Lgzt;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v8, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, v1, Lilm;->a:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lill;

    iget-object v3, v1, Lilm;->b:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lilk;

    invoke-interface {v2, v3}, Lill;->e(Lilk;)V

    iget-object v2, v1, Lilm;->f:Ljuh;

    iget-object v3, v1, Lilm;->g:Lezx;

    invoke-static {v2, v3, v1}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lilg;

    iget-object v2, v1, Lilg;->a:Ljuh;

    iget-object v3, v1, Lilg;->b:Lezx;

    invoke-static {v2, v3, v1}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    :cond_2
    return-void
.end method
