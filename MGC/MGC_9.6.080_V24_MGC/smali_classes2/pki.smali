.class public final Lpki;
.super Lpli;
.source "PG"


# direct methods
.method public constructor <init>(Lpnu;Lpgn;Lhdn;Lpln;Lpcu;Lpdf;)V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

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
    invoke-interface {p1}, Lpnu;->Q()I

    move-result v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v4, p4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v5, p5

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    move-object v3, p3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    invoke-direct/range {v0 .. v6}, Lpli;-><init>(ILpgz;Lhdn;Lpln;Lpcu;Lpdf;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    :goto_f
    move-object v6, p6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p2, Lpgn;->b:Lpgz;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(Lpri;Lpko;Ljava/util/List;Landroid/os/Handler;)V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p3, p1}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    nop

    :goto_4
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

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

    nop

    :goto_5
    const v0, 0x13

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    sget-object p4, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->cUBRRUeHCulzFZF:Ljava/lang/String;

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

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lpki;->b:Lpcu;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Lpko;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    :goto_e
    goto/32 :goto_2

    nop

    :goto_f
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    move-object v1, p3

    nop

    nop

    nop

    check-cast v1, Lsbh;

    nop

    iget v1, v1, Lsbh;->c:I

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Lryb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Lryb;->t()Lscq;

    move-result-object p3

    nop

    nop

    nop

    :goto_10
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lpku;

    nop

    invoke-virtual {v1}, Lpku;->a()Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    xor-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    const-string v3, "StreamOutputConfig should have at least one output configuration."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    invoke-virtual {v1}, Lpku;->a()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-interface {p1, v0, p2, p4}, Lpri;->g(Ljava/util/List;Lpko;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p4, 0x0

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

    :goto_13
    const v1, 0x20

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
