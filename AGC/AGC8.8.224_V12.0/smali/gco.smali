.class public final Lgco;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgco;->a:Loiw;

    iput-object p2, p0, Lgco;->b:Loiw;

    iput-object p3, p0, Lgco;->c:Loiw;

    iput-object p4, p0, Lgco;->d:Loiw;

    iput-object p5, p0, Lgco;->e:Loiw;

    iput-object p6, p0, Lgco;->f:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgco;
    .locals 8

    new-instance v7, Lgco;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lgco;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v7
.end method


# virtual methods
.method public final b()Lmrl;
    .locals 14

    iget-object v0, p0, Lgco;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lgco;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhnb;

    iget-object v2, p0, Lgco;->c:Loiw;

    check-cast v2, Lijz;

    invoke-virtual {v2}, Lijz;->a()Lika;

    move-result-object v2

    iget-object v3, p0, Lgco;->d:Loiw;

    check-cast v3, Lhnl;

    invoke-virtual {v3}, Lhnl;->a()Lhna;

    move-result-object v3

    iget-object v4, p0, Lgco;->e:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljuf;

    iget-object v5, p0, Lgco;->f:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lebl;

    sget-object v6, Ldhy;->f:Ldhk;

    invoke-interface {v0, v6}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lika;->m:Lika;

    sget-object v8, Lika;->b:Lika;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v2, v8, :cond_1

    sget-object v8, Ldhq;->ac:Ldhj;

    invoke-interface {v0, v8}, Ldhi;->l(Ldhj;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v8, Lika;->g:Lika;

    if-ne v2, v8, :cond_2

    sget-object v8, Ldhq;->ad:Ldhj;

    invoke-interface {v0, v8}, Ldhi;->l(Ldhj;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-ne v2, v7, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Llkj;->E(Ljava/lang/Object;)Lmrl;

    move-result-object v0

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v7, Ldhy;->g:Ldhk;

    invoke-interface {v0, v7}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v7

    invoke-virtual {v7}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Ldhy;->h:Ldhk;

    invoke-interface {v0, v8}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v8, Ljvk;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v8, v11}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lfun;

    const/4 v12, 0x3

    invoke-direct {v11, v8, v12}, Lfun;-><init>(Ljvk;I)V

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v12

    const-string v13, "SmartMeteringExtendedPeriod"

    invoke-virtual {v12, v13}, Lhnd;->d(Ljava/lang/String;)V

    sget-object v13, Lnnv;->a:Lnnv;

    invoke-virtual {v12, v13}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v12, v3}, Lhnd;->g(Lhna;)V

    new-instance v3, Lgcm;

    invoke-direct {v3, v11, v7, v9}, Lgcm;-><init>(Ljava/util/function/Consumer;II)V

    invoke-virtual {v12, v3}, Lhnd;->f(Ljava/lang/Runnable;)V

    new-instance v3, Lgcm;

    invoke-direct {v3, v11, v0, v10}, Lgcm;-><init>(Ljava/util/function/Consumer;II)V

    invoke-virtual {v12, v3}, Lhnd;->e(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Lhnd;->a()Lhne;

    move-result-object v0

    invoke-interface {v1, v0}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    new-instance v0, Lgcn;

    invoke-direct {v0, v2, v5, v8, v6}, Lgcn;-><init>(ZLebl;Ljvk;I)V

    :goto_4
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgco;->b()Lmrl;

    move-result-object v0

    return-object v0
.end method
