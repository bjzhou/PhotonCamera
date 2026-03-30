.class final Lkew;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field final synthetic a:Lgvw;

.field final synthetic b:Lkez;

.field private final c:Loyn;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lkez;Lgvw;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkew;->c:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lkew;->a:Lgvw;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkew;->b:Lkez;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    sget-object p2, Loze;->a:Loze;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lkew;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, p2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    new-instance p1, Loxv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    check-cast p1, Llyf;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Lkez;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xf

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lkew;->b:Lkez;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    :goto_d
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Llyf;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    if-eq v1, v2, :cond_4

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v3, :cond_2

    nop

    const/4 v3, 0x3

    nop

    nop

    nop

    if-ne v1, v3, :cond_1

    nop

    nop

    sget-object p1, Loze;->d:Loze;

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    const-string v1, "Unsupported FPS option "

    nop

    invoke-static {p1, v1}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object p1, p0, Lkew;->b:Lkez;

    nop

    nop

    nop

    iget-object p1, p1, Lkez;->d:Lgwr;

    nop

    nop

    iget-object p1, p1, Lgwr;->g:Lgwo;

    nop

    nop

    nop

    nop

    sget-object v1, Lgwo;->c:Lgwo;

    nop

    nop

    nop

    nop

    if-ne p1, v1, :cond_3

    nop

    nop

    nop

    nop

    sget-object p1, Loze;->f:Loze;

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_3
    sget-object p1, Loze;->c:Loze;

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_4
    iget-object p1, p0, Lkew;->b:Lkez;

    nop

    iget-object p1, p1, Lkez;->d:Lgwr;

    nop

    iget-object p1, p1, Lgwr;->g:Lgwo;

    nop

    nop

    nop

    nop

    sget-object v1, Lgwo;->c:Lgwo;

    nop

    if-ne p1, v1, :cond_5

    nop

    nop

    sget-object p1, Loze;->e:Loze;

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_5
    sget-object p1, Loze;->b:Loze;

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    :cond_6
    sget-object p1, Loze;->a:Loze;

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lkew;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lkew;->c:Loyn;

    nop

    nop

    nop

    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v1, p0, Lkew;->c:Loyn;

    nop

    nop

    nop

    nop

    check-cast v1, Loxv;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    if-ne p1, v1, :cond_8

    nop

    nop

    nop

    nop

    sget-object p0, Lkez;->a:Lsdb;

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0xb58

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "changeCaptureRate() do nothing since captureRate [%s] does not change"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_8
    iget-object v1, p0, Lkew;->c:Loyn;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Loxv;

    nop

    nop

    nop

    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lkew;->c:Loyn;

    nop

    invoke-interface {v1, p1}, Loyn;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lkew;->b:Lkez;

    nop

    iget-object v1, v1, Lkez;->b:Lgvx;

    nop

    sget-object v2, Lnne;->c:Lnne;

    nop

    invoke-virtual {v1, v2}, Lgvx;->a(Lnne;)Lgvw;

    move-result-object v1

    nop

    nop

    nop

    iget-object v2, p0, Lkew;->a:Lgvw;

    nop

    nop

    nop

    nop

    invoke-interface {v2, p1}, Lgvw;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lkew;->a:Lgvw;

    nop

    nop

    if-ne v1, v2, :cond_c

    nop

    nop

    nop

    iget-object v1, p0, Lkew;->b:Lkez;

    nop

    nop

    iget-object v2, v1, Lkez;->s:Lhwy;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lkez;->g:Lhco;

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

    invoke-virtual {v2, v1}, Lhwy;->a(Lpog;)Lozg;

    move-result-object v1

    nop

    nop

    nop

    iget-object v2, p0, Lkew;->b:Lkez;

    nop

    iget-object v2, v2, Lkez;->r:Lhoh;

    nop

    nop

    nop

    nop

    sget-object v3, Lhly;->U:Lhmn;

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_b

    nop

    nop

    nop

    iget-object v2, p0, Lkew;->b:Lkez;

    nop

    nop

    iget-object v2, v2, Lkez;->r:Lhoh;

    nop

    nop

    sget-object v3, Lhly;->C:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lkew;->a:Lgvw;

    nop

    nop

    nop

    instance-of v2, v2, Lgvr;

    nop

    nop

    if-eqz v2, :cond_a

    nop

    nop

    sget-object v2, Lozg;->i:Lozg;

    nop

    nop

    if-ne v1, v2, :cond_a

    nop

    nop

    nop

    iget-object v2, p0, Lkew;->b:Lkez;

    nop

    nop

    nop

    iget-object v2, v2, Lkez;->f:Lgvs;

    nop

    nop

    nop

    nop

    sget-object v3, Loze;->a:Loze;

    nop

    nop

    nop

    nop

    if-ne p1, v3, :cond_9

    nop

    nop

    nop

    nop

    sget-object v3, Loze;->c:Loze;

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :cond_9
    move-object v3, p1

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, v3}, Loyv;->a(Ljava/lang/Object;)V

    :cond_a
    iget-object v2, p0, Lkew;->a:Lgvw;

    nop

    instance-of v2, v2, Lgvs;

    nop

    if-eqz v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lozg;->k:Lozg;

    nop

    nop

    nop

    if-ne v1, v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lkew;->b:Lkez;

    nop

    iget-object v1, v1, Lkez;->e:Lgvr;

    nop

    nop

    invoke-virtual {v1, p1}, Loyv;->a(Ljava/lang/Object;)V

    :cond_b
    iget-object p0, p0, Lkew;->b:Lkez;

    nop

    nop

    nop

    iget-boolean p1, p0, Lkez;->o:Z

    nop

    nop

    nop

    if-nez p1, :cond_c

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Lhci;->d:Lhci;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lkez;->D(Lhci;)V

    :cond_c
    :goto_10
    monitor-exit v0

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

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
