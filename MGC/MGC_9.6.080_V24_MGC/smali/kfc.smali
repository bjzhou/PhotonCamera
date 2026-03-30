.class public Lkfc;
.super Lggo;
.source "PG"

# interfaces
.implements Lgoc;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lglz;

.field public final c:Lgnn;

.field public final d:Lgqi;

.field public final e:Ljava/lang/Object;

.field public f:Lrss;

.field public g:Z

.field public h:Lgqg;

.field public final i:Ljhy;

.field private final j:Landroid/content/res/Resources;

.field private final k:Lglm;

.field private final l:Lgup;

.field private final m:Lkce;

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Lhrb;

.field private p:Lows;

.field private final q:Lhhg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const-string v0, "kfc"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    sput-object v0, Lkfc;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Ljhy;Lglz;Landroid/content/res/Resources;Lglm;Ltxm;Lgqi;Ljava/util/concurrent/Executor;Lgup;Lhrb;Lkce;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lkfc;->g:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p8, p0, Lkfc;->l:Lgup;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkfc;->i:Ljhy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lgnn;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lkfc;->c:Lgnn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-object p2, p0, Lkfc;->b:Lglz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lkfc;->f:Lrss;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lggo;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p10, p0, Lkfc;->m:Lkce;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Lkfb;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, p0}, Lkfb;-><init>(Lkfc;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p5}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    iput-object p4, p0, Lkfc;->k:Lglm;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    iput-object p6, p0, Lkfc;->d:Lgqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lkfc;->q:Lhhg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    iput-object p7, p0, Lkfc;->n:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lkfc;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p3, p0, Lkfc;->j:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    iput-object p9, p0, Lkfc;->o:Lhrb;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v2, p0, v0, v3, v4}, Lkbu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v2, Lkbu;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    iget-object v0, p0, Lkfc;->f:Lrss;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    const/4 v4, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lkfc;->n:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    iget-object v0, p0, Lkfc;->f:Lrss;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkfc;->c:Lgnn;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lgnn;->h:Lgmg;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v2, v3}, Lgmu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-interface {p0, v0}, Lglz;->c(Lhci;)V

    goto/32 :goto_1

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lkfc;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Lolx;->bh()Ljava/util/concurrent/Executor;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Lkfc;->c:Lgnn;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v1, Lgmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v3, 0x8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lhci;->b:Lhci;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lgmg;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lkfc;->b:Lglz;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_16
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    new-instance v0, Lkev;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lkfc;->n:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_c

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0, v1}, Lkev;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final dB()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    iget-object v0, p0, Lkfc;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    :try_start_0
    iget-object p0, p0, Lkfc;->c:Lgnn;

    nop

    nop

    invoke-virtual {p0}, Lgnn;->c()V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method

.method public final dC()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lggo;->t:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lhci;->e:Lhci;

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-object p0, p0, Lkfc;->b:Lglz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v0}, Lglz;->c(Lhci;)V

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lhci;->j:Lhci;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lkfc;->b:Lglz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Lglz;->n()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dD()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkfc;->c:Lgnn;

    nop

    nop

    nop

    invoke-virtual {v1}, Lgnn;->e()V

    iget-object v1, p0, Lkfc;->b:Lglz;

    nop

    iget-object p0, p0, Lkfc;->c:Lgnn;

    nop

    nop

    nop

    invoke-virtual {p0}, Lgnn;->o()I

    move-result p0

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    if-eq p0, v2, :cond_0

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    :cond_0
    const/4 p0, 0x0

    nop

    nop

    :goto_3
    invoke-interface {v1, p0}, Lglz;->l(Z)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    const v0, 0x15

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lkfc;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dE(Lrle;)V
    .locals 7

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkfc;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    const v0, 0xb

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p1, Lrle;->c:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    nop

    invoke-static {}, Lolx;->bh()Ljava/util/concurrent/Executor;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lkev;

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lkev;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    nop

    nop

    nop

    :cond_0
    iget-object v1, p1, Lrle;->c:Ljava/lang/Object;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lgrf;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lkfc;->h:Lgqg;

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    sget-object p1, Lkfc;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0xb69

    nop

    nop

    invoke-interface {p1, v2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    check-cast p1, Lscz;

    nop

    const-string v2, "Session config is null."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v2}, Lscz;->s(Ljava/lang/String;)V

    iget-object p0, p0, Lkfc;->o:Lhrb;

    nop

    nop

    iget-object p1, v1, Lgrf;->s:Llxn;

    nop

    nop

    nop

    nop

    iget-wide v1, p1, Llxn;->b:J

    nop

    nop

    nop

    invoke-interface {p0, v1, v2}, Lhrb;->i(J)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    iget-object v2, v2, Lgqg;->j:Lrss;

    nop

    nop

    iput-object v2, p0, Lkfc;->f:Lrss;

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lgrf;->a:Lgrl;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lgrl;->b()Lrss;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Llxc;

    nop

    nop

    iget-object v2, v2, Llxc;->b:Lpsf;

    nop

    invoke-interface {v2}, Lpsf;->b()Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iput-object v2, p0, Lkfc;->f:Lrss;

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/net/Uri;

    nop

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    iget-object v2, p0, Lkfc;->l:Lgup;

    nop

    nop

    iget-object v3, v2, Lgup;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    new-instance v4, Lgow;

    nop

    nop

    const/16 v5, 0x8

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2, v1, v5, v6}, Lgow;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v2, p0, Lkfc;->o:Lhrb;

    nop

    nop

    nop

    iget-object v1, v1, Lgrf;->s:Llxn;

    nop

    nop

    iget-wide v3, v1, Llxn;->b:J

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3, v4}, Lhrb;->c(J)Lsui;

    :goto_9
    iget-object v1, p0, Lkfc;->c:Lgnn;

    nop

    nop

    nop

    iget-object p1, p1, Lrle;->b:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lgnn;->h:Lgmg;

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Landroid/graphics/Bitmap;

    nop

    nop

    invoke-virtual {v1, p1}, Lgmg;->b(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lkfc;->c:Lgnn;

    nop

    nop

    nop

    invoke-virtual {p0}, Lgnn;->n()V

    :goto_a
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop
.end method

.method public final f()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lkfc;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkfc;->b:Lglz;

    nop

    nop

    invoke-interface {v1}, Lglz;->a()Lgmy;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    iget-object v1, p0, Lkfc;->b:Lglz;

    nop

    nop

    invoke-interface {v1}, Lglz;->a()Lgmy;

    move-result-object v1

    nop

    nop

    nop

    iget-object v1, v1, Lgmy;->p:Lgqg;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lkfc;->h:Lgqg;

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final synthetic j()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final k(Z)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkfc;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkfc;->c:Lgnn;

    nop

    nop

    invoke-virtual {v1}, Lgnn;->o()I

    move-result v1

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_0

    nop

    iget-object p1, p0, Lkfc;->f:Lrss;

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    const-string v1, "URI not set."

    nop

    nop

    nop

    nop

    invoke-static {p1, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    nop

    nop

    nop

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lkfc;->f:Lrss;

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iput-boolean v1, p0, Lkfc;->g:Z

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lkfc;->i:Ljhy;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Ljhy;->h(Landroid/content/Intent;)V

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p0, p0, Lkfc;->b:Lglz;

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lglz;->g(Z)V

    :goto_2
    monitor-exit v0

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lkfc;->c:Lgnn;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_b
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lgnn;->o()I

    goto/32 :goto_0

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l()V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkfc;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const v1, 0x3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Lows;

    nop

    nop

    nop

    invoke-direct {v1}, Lows;-><init>()V

    iput-object v1, p0, Lkfc;->p:Lows;

    nop

    iget-object v1, p0, Lkfc;->m:Lkce;

    nop

    sget-object v2, Lnne;->i:Lnne;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lkfc;->p:Lows;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0, v2, v3}, Lkce;->b(Lggo;Lnne;Lows;)V

    iget-object v1, p0, Lkfc;->k:Lglm;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lkfc;->q:Lhhg;

    nop

    nop

    invoke-virtual {v1, v2}, Lglm;->z(Lhhg;)V

    iget-object v1, p0, Lkfc;->c:Lgnn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lgnn;->g()V

    iget-object v1, p0, Lkfc;->b:Lglz;

    nop

    nop

    nop

    invoke-interface {v1, p0}, Lglz;->b(Lgoc;)V

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object v0, p0, Lkfc;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const v0, 0x17

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkfc;->c:Lgnn;

    nop

    nop

    invoke-virtual {v1}, Lgnn;->h()V

    iget-object v1, p0, Lkfc;->b:Lglz;

    nop

    invoke-interface {v1}, Lglz;->m()V

    iget-object v1, p0, Lkfc;->p:Lows;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lows;->close()V

    iget-object v1, p0, Lkfc;->b:Lglz;

    nop

    invoke-interface {v1, p0}, Lglz;->k(Lgoc;)V

    iget-object v1, p0, Lkfc;->k:Lglm;

    nop

    nop

    iget-object p0, p0, Lkfc;->q:Lhhg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Lglm;->A(Lhhg;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final o()Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xd

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lgnn;->o()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lglz;->o()Z

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1a

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lkfc;->c()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lkfc;->c:Lgnn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lkfc;->b:Lglz;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lkfc;->j:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f140772

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final v()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object v0, p0, Lkfc;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkfc;->c:Lgnn;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lkfc;->i:Ljhy;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Ljhy;->K:Lghe;

    nop

    nop

    nop

    nop

    sget-object v3, Lnne;->i:Lnne;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Lgnn;->m(Lghe;Lnne;)V

    iget-object p0, p0, Lkfc;->b:Lglz;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lglz;->d()V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
