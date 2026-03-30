.class public final Ljbd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Enum;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public constructor <init>(Lgmc;Lhci;Lpdh;Lsui;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Ljbd;->c:Ljava/lang/Object;

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

    nop

    :goto_1
    iput-object p4, p0, Ljbd;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Ljbd;->b:Ljava/lang/Enum;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p5, p0, Ljbd;->e:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljbi;Ljbf;Ljbg;Ljbh;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljbd;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput p5, p0, Ljbd;->e:I

    nop

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

    nop

    :goto_2
    iput-object p4, p0, Ljbd;->c:Ljava/lang/Object;

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

    :goto_3
    iput-object p3, p0, Ljbd;->b:Ljava/lang/Enum;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-object p2, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lgmc;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    iput-object v3, v2, Lgmc;->l:Lgmy;

    nop

    nop

    check-cast v1, Lgmc;

    nop

    nop

    nop

    iget-object v1, v1, Lgmc;->r:Ljava/util/List;

    nop

    nop

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    nop

    new-instance v2, Lgfl;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x6

    nop

    nop

    nop

    invoke-direct {v2, v3}, Lgfl;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Ljbd;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lsui;->isCancelled()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    sget-object v1, Lgmc;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v1, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    const/16 v2, 0x1ad

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    const/4 v2, 0x0

    nop

    sget-object v2, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->xhI:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    iget-object v1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lgmc;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgmc;->m:Lgqc;

    nop

    nop

    sget-object v2, Lgqa;->f:Lgqa;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lgqc;->a(Lgqa;)V

    iget-object v1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lgmc;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgmc;->p:Lhch;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    nop

    nop

    nop

    iput v2, v1, Lhch;->i:I

    nop

    nop

    nop

    nop

    :cond_0
    instance-of v1, p1, Lhts;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    check-cast p1, Lhts;

    nop

    nop

    nop

    nop

    nop

    iget-wide v1, p1, Lhts;->c:J

    nop

    nop

    nop

    iget-object v3, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v3, Lgmc;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lgmc;->y:Lgvg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lgvg;->g()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p1, Lhts;->a:Lpdr;

    nop

    nop

    nop

    invoke-static {v5}, Lpdr;->e(Lpdr;)Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_1

    nop

    nop

    nop

    cmp-long v1, v1, v3

    nop

    nop

    if-gez v1, :cond_1

    nop

    nop

    nop

    iget-object v1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    check-cast v1, Lgmc;

    nop

    iget-object v1, v1, Lgmc;->y:Lgvg;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lgvg;->j()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    iget-object v1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lgmc;

    nop

    iget-object v1, v1, Lgmc;->b:Lgqi;

    nop

    invoke-virtual {v1}, Lgqi;->a()Lnne;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lnne;->f:Lnne;

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    iget-object v1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lgmc;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgmc;->b:Lgqi;

    nop

    invoke-virtual {v1}, Lgqi;->a()Lnne;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lnne;->n:Lnne;

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    iget-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v1, p1

    nop

    check-cast v1, Lgmc;

    nop

    nop

    iget-object v1, v1, Lgmc;->w:Lhdn;

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lgmc;

    nop

    iget-object p1, p1, Lgmc;->d:Lhco;

    nop

    nop

    invoke-virtual {p1}, Lhco;->a()Lpog;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Lhdn;->h(Lpog;)V

    iget-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    check-cast p1, Lgmc;

    nop

    iget-object p1, p1, Lgmc;->c:Lowu;

    nop

    nop

    new-instance v1, Lghh;

    nop

    nop

    nop

    const/16 v2, 0x14

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lghh;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    nop

    nop

    :cond_1
    iget-object v1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lgmc;

    nop

    iget-object v1, v1, Lgmc;->h:Lhtr;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Lhtr;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    iget-object p0, p0, Ljbd;->c:Ljava/lang/Object;

    nop

    nop

    invoke-interface {p0}, Lpdh;->a()V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ljbd;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    sget-object p1, Ljbi;->a:Lsdb;

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

    :goto_a
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "Sound loading failed - CharacterType: %s, CharacterAnimationStage: %s"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    :goto_13
    iget-object v0, v0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    const/16 v0, 0x807

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Ljbd;->e:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Ljbd;->b:Ljava/lang/Enum;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    const v1, 0x1d

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

    :goto_1a
    invoke-interface {p1, v1, p0, v0}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lgmc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget-object p1, p1, Ljbi;->d:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lgmy;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Lgmc;->s:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    iget-object v0, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljbi;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Ljbd;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    :goto_e
    check-cast v0, Lgmc;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p1, Ljbf;->e:Lsuu;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_10
    const v0, 0xd

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Ljbd;->b:Ljava/lang/Enum;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Ljbd;->e:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_18
    check-cast p1, Ljbf;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

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

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    monitor-enter v0

    nop

    :try_start_0
    iget v1, p1, Lgmy;->q:I

    nop

    nop

    iget-object v2, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lgmc;

    nop

    nop

    nop

    nop

    iget v3, v3, Lgmc;->q:I

    nop

    nop

    if-eq v1, v3, :cond_2

    nop

    sget-object v1, Lgmc;->a:Lsdb;

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    const/16 v2, 0x1b0

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    nop

    const-string v2, "Capture session %d doesn\'t match expected session %d"

    nop

    iget p1, p1, Lgmy;->q:I

    nop

    nop

    nop

    nop

    iget-object p0, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p0, Lgmc;

    nop

    nop

    nop

    nop

    nop

    iget p0, p0, Lgmc;->q:I

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, p1, p0}, Lscz;->w(Ljava/lang/String;II)V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    :cond_2
    check-cast v2, Lgmc;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v2, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    iget-object v1, v1, Lgqc;->g:Loyn;

    nop

    nop

    nop

    check-cast v1, Loxv;

    nop

    nop

    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    sget-object v2, Lgqa;->b:Lgqa;

    nop

    nop

    nop

    if-eq v1, v2, :cond_3

    nop

    sget-object p1, Lgmc;->a:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    const/16 v1, 0x1af

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const-string v1, "Expecting %s but got %s"

    nop

    nop

    nop

    sget-object v2, Lgqa;->b:Lgqa;

    nop

    iget-object p0, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p0, Lgmc;

    nop

    nop

    nop

    iget-object p0, p0, Lgmc;->m:Lgqc;

    nop

    iget-object p0, p0, Lgqc;->g:Loyn;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Loxv;

    nop

    nop

    nop

    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1, v2, p0}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

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

    :cond_3
    iget-object v1, p0, Ljbd;->b:Ljava/lang/Enum;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lhci;->g:Lhci;

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_5

    nop

    nop

    nop

    iget-object v1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    nop

    check-cast v2, Lgmc;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lgmc;->v:Lhif;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lgmc;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgmc;->d:Lhco;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lhco;->a()Lpog;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lpog;->b:Lpog;

    nop

    nop

    nop

    if-ne v1, v4, :cond_4

    nop

    nop

    nop

    nop

    sget-object v4, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const/4 v1, 0x3

    nop

    invoke-virtual {v2, v4, v3, v1}, Lhif;->a(Lpog;II)V

    :cond_5
    invoke-virtual {p1}, Lgmy;->g()V

    iget-object v1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lgmc;

    nop

    nop

    iput-object p1, v2, Lgmc;->l:Lgmy;

    nop

    nop

    nop

    nop

    nop

    move-object p1, v1

    nop

    nop

    check-cast p1, Lgmc;

    nop

    nop

    iget-object p1, p1, Lgmc;->l:Lgmy;

    nop

    nop

    nop

    if-eqz p1, :cond_6

    nop

    nop

    nop

    check-cast v1, Lgmc;

    nop

    nop

    iget-object v1, v1, Lgmc;->r:Ljava/util/List;

    nop

    nop

    nop

    iget-object p1, p1, Lgmy;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v1, p1

    nop

    nop

    check-cast v1, Lgmc;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgmc;->l:Lgmy;

    nop

    move-object v2, p1

    nop

    nop

    check-cast v2, Lgmc;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lgmc;->t:Lgto;

    nop

    nop

    iput-object v2, v1, Lgmy;->D:Lgto;

    nop

    nop

    nop

    check-cast p1, Lgmc;

    nop

    iget-object p1, p1, Lgmc;->r:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    nop

    nop

    new-instance v1, Lgfl;

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lgfl;-><init>(I)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lgmc;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    sget-object v1, Lgqa;->c:Lgqa;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Lgqc;->a(Lgqa;)V

    iget-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    check-cast p1, Lgmc;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lgmc;->g:Lmkr;

    nop

    nop

    nop

    sget-object v1, Lmkq;->b:Lmkq;

    nop

    invoke-virtual {p1, v1}, Lmkp;->h(Ljava/lang/Enum;)V

    iget-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lgmc;

    nop

    nop

    iget-object v1, v1, Lgmc;->p:Lhch;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, v1, Lhch;->i:I

    nop

    nop

    nop

    nop

    check-cast p1, Lgmc;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lgmc;->g:Lmkr;

    nop

    sget-object v2, Lmkq;->a:Lmkq;

    nop

    sget-object v3, Lmkq;->b:Lmkq;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v2, v3}, Lmkr;->c(Lmkq;Lmkq;)I

    move-result p1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Lhch;->c(I)V

    iget-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    move-object v1, p1

    nop

    nop

    nop

    nop

    check-cast v1, Lgmc;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgmc;->z:Lfdn;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lfwt;->r(Lfdn;)Z

    move-result v1

    nop

    check-cast p1, Lgmc;

    nop

    iput-boolean v1, p1, Lgmc;->n:Z

    nop

    iget-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v1, p1

    nop

    nop

    nop

    check-cast v1, Lgmc;

    nop

    nop

    nop

    iget-boolean v1, v1, Lgmc;->o:Z

    nop

    if-nez v1, :cond_7

    nop

    nop

    nop

    move-object v1, p1

    nop

    nop

    check-cast v1, Lgmc;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, v1, Lgmc;->n:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_9

    nop

    nop

    nop

    nop

    :cond_7
    check-cast p1, Lgmc;

    nop

    nop

    iget-object p1, p1, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lgqc;->i:Loyn;

    nop

    nop

    nop

    nop

    check-cast p1, Loxv;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    check-cast p1, Ljava/lang/Boolean;

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    if-nez p1, :cond_9

    nop

    iget-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    check-cast p1, Lgmc;

    nop

    iget-object p1, p1, Lgmc;->z:Lfdn;

    nop

    nop

    invoke-virtual {p1}, Lfdn;->h()Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_8

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lfwt;->f(Landroid/content/Intent;)V

    :cond_8
    iget-object p1, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p1, Lgmc;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lgmc;->c:Lowu;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lghh;

    nop

    const/16 v2, 0x13

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lghh;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    :cond_9
    iget-object p0, p0, Ljbd;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpdh;->a()V

    monitor-exit v0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method
