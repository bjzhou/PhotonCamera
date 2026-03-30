.class public final Lpkj;
.super Lpli;
.source "PG"


# instance fields
.field private final e:Lpnu;

.field private final f:Ljava/util/Set;

.field private final g:Lphc;

.field private final h:Lrss;


# direct methods
.method public constructor <init>(Lpnu;Lpgn;Lhdn;Lpln;Lpcu;Lpdf;)V
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lpnu;->Q()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p2, Lpgn;->h:Lryy;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p2, Lpgn;->b:Lpgz;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-direct/range {v0 .. v6}, Lpli;-><init>(ILpgz;Lhdn;Lpln;Lpcu;Lpdf;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    move-object v5, p5

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    move-object v0, p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p2, Lpgn;->c:Lphc;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    iput-object p1, p0, Lpkj;->h:Lrss;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lpkj;->g:Lphc;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p2, Lpgn;->o:Lrss;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lpkj;->e:Lpnu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v4, p4

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

    :goto_14
    move-object v6, p6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    move-object v3, p3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Lpkj;->f:Ljava/util/Set;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop
.end method

.method private static final c(Lpic;Lpha;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p1, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object p1, p1, Lpha;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0, p1}, Lpic;->q(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(Lpri;Lpko;Ljava/util/List;Landroid/os/Handler;)V
    .locals 10

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpkj;->b:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p4, "Unable to createCaptureSession for "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Lpko;->b()V

    goto/32 :goto_b

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

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

    :goto_6
    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-interface {p0, p3, p1}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

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

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    nop

    move-object v0, p3

    nop

    nop

    nop

    check-cast v0, Lsbh;

    nop

    iget v0, v0, Lsbh;->c:I

    nop

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Lryb;

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Lryb;->t()Lscq;

    move-result-object p3

    nop

    nop

    :goto_11
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lpku;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lpku;->a()Ljava/util/List;

    move-result-object v3

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    xor-int/2addr v1, v3

    nop

    const-string v3, "StreamOutputConfig should have at least one output configuration."

    nop

    nop

    invoke-static {v1, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Lpku;->a()Ljava/util/List;

    move-result-object v0

    nop

    nop

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    nop

    nop

    nop

    :cond_1
    sget-object p3, Lrsa;->a:Lrsa;

    nop

    iget-object v0, p0, Lpkj;->h:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    const/4 v3, 0x0

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    iget-object p3, p0, Lpkj;->h:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    check-cast p3, Lpgw;

    nop

    nop

    nop

    iget-object v0, p3, Lpgw;->a:Lryb;

    nop

    invoke-virtual {v0}, Lryb;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    move v0, v1

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    move v0, v3

    nop

    nop

    nop

    nop

    :goto_12
    const-string v4, "InputConfig should only contain one Size for P23"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    iget-object p3, p3, Lpgw;->a:Lryb;

    nop

    nop

    invoke-virtual {p3, v3}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    check-cast p3, Lpck;

    nop

    nop

    nop

    new-instance v0, Landroid/hardware/camera2/params/InputConfiguration;

    nop

    nop

    nop

    nop

    iget v4, p3, Lpck;->a:I

    nop

    nop

    nop

    nop

    iget p3, p3, Lpck;->b:I

    nop

    nop

    const/16 v5, 0x25

    nop

    nop

    invoke-direct {v0, v4, p3, v5}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    :cond_3
    move-object v6, p3

    nop

    new-instance p3, Lowr;

    nop

    invoke-direct {p3, p4}, Lowr;-><init>(Landroid/os/Handler;)V

    iget-object p4, p0, Lpkj;->g:Lphc;

    nop

    nop

    nop

    iget p4, p4, Lphc;->a:I

    nop

    invoke-interface {p1, p4}, Lpri;->i(I)Lpic;

    move-result-object p4

    nop

    nop

    nop

    iget-object v0, p0, Lpkj;->e:Lpnu;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpnu;->B()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lpuq;->by(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lpkj;->g:Lphc;

    nop

    nop

    nop

    iget-object v4, v4, Lphc;->b:Lryb;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    move v7, v3

    nop

    nop

    nop

    nop

    :goto_13
    if-ge v7, v5, :cond_5

    nop

    nop

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    check-cast v8, Lpha;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lpha;->a()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    nop

    if-eqz v9, :cond_4

    nop

    nop

    nop

    nop

    invoke-static {p4, v8}, Lpkj;->c(Lpic;Lpha;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    nop

    goto :goto_13

    nop

    nop

    nop

    :cond_5
    iget-object v4, p0, Lpkj;->f:Ljava/util/Set;

    nop

    nop

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    :cond_6
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_7

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lpha;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lpha;->a()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_6

    nop

    nop

    nop

    invoke-static {p4, v5}, Lpkj;->c(Lpic;Lpha;)V

    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_7
    invoke-virtual {p4}, Lpic;->p()Lprj;

    move-result-object v5

    nop

    nop

    nop

    iget-object p4, p0, Lpkj;->a:Lpgz;

    nop

    nop

    nop

    sget-object v0, Lpgz;->b:Lpgz;

    nop

    nop

    nop

    if-ne p4, v0, :cond_8

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_8
    move v1, v3

    nop

    nop

    :goto_15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lprr;

    nop

    nop

    move-object v0, p4

    nop

    nop

    nop

    move-object v3, p3

    nop

    nop

    nop

    move-object v4, p2

    nop

    invoke-direct/range {v0 .. v6}, Lprr;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Lpko;Lprj;Lrss;)V

    invoke-interface {p1, p4}, Lpri;->d(Lprr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
