.class public final Lhbe;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lgzm;

.field public final b:Lgzn;

.field public final c:J

.field private final d:Landroid/os/UserManager;

.field private final e:Ldhi;

.field private final f:Lkoe;

.field private final g:Loiw;

.field private final h:Llhm;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Ldhi;Lkoe;Lgzm;Lgzn;Llhm;Loiw;Landroid/content/pm/PackageInfo;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbe;->d:Landroid/os/UserManager;

    iput-object p2, p0, Lhbe;->e:Ldhi;

    iput-object p3, p0, Lhbe;->f:Lkoe;

    iput-object p4, p0, Lhbe;->a:Lgzm;

    iput-object p5, p0, Lhbe;->b:Lgzn;

    iput-object p6, p0, Lhbe;->h:Llhm;

    iput-object p7, p0, Lhbe;->g:Loiw;

    invoke-virtual {p8}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p1

    iput-wide p1, p0, Lhbe;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lhbe;->h:Llhm;

    iget v0, v0, Llhm;->a:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_2

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Lhbe;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iget-object v1, v0, Lhba;->l:Lgzm;

    sget-object v2, Lgzd;->ak:Lgzs;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Logr;->c()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    sget-object v1, Lhba;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xd59

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-static {}, Logr;->c()J

    move-result-wide v2

    const-string v4, "Attempted HAL update for more than %d times. Skipping update."

    invoke-interface {v1, v4, v2, v3}, Lnah;->q(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lhba;->c()V

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    new-instance v1, Lbdj;

    const/16 v2, 0xb

    invoke-direct {v1, v0, v2}, Lbdj;-><init>(Lhba;I)V

    iget-object v2, v0, Lhba;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2}, Lnsy;->F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    new-instance v2, Lcmc;

    const/16 v3, 0xf

    invoke-direct {v2, v0, v3}, Lcmc;-><init>(Lhba;I)V

    iget-object v3, v0, Lhba;->h:Ljuh;

    invoke-static {v1, v2, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    const/4 v1, 0x2

    :goto_0
    iget-object v0, v0, Lhba;->t:Llhm;

    iget v2, v0, Llhm;->a:I

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Llhm;->c(I)V

    return-void

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lhbe;->f:Lkoe;

    iget-boolean v0, v0, Lkoe;->e:Z

    iget-object v0, p0, Lhbe;->d:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lhbe;->e:Ldhi;

    sget-object v2, Ldho;->bP:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Logr;->a:Logr;

    invoke-virtual {v0}, Logr;->d()Logs;

    move-result-object v0

    invoke-interface {v0}, Logs;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
