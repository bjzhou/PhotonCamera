.class public final Lpkh;
.super Lpli;
.source "PG"


# direct methods
.method public constructor <init>(Lpnu;Lpgn;Lhdn;Lpln;Lpcu;Lpdf;)V
    .locals 7

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    move-object v5, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    iget-object v2, p2, Lpgn;->b:Lpgz;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v6, p6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v3, p3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xa

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v0 .. v6}, Lpli;-><init>(ILpgz;Lhdn;Lpln;Lpcu;Lpdf;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    move-object v4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    move-object v0, p0

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

    :goto_f
    invoke-interface {p1}, Lpnu;->Q()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop
.end method


# virtual methods
.method protected final a(Lpri;Lpko;Ljava/util/List;Landroid/os/Handler;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpkh;->b:Lpcu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_11

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

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    move-object v1, p3

    nop

    nop

    nop

    nop

    check-cast v1, Lsbh;

    nop

    iget v1, v1, Lsbh;->c:I

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Lryb;

    nop

    nop

    invoke-virtual {p3}, Lryb;->t()Lscq;

    move-result-object p3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lpku;

    nop

    nop

    nop

    invoke-virtual {v1}, Lpku;->c()Landroid/view/Surface;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-interface {p1, v0, p2, p4}, Lpri;->f(Ljava/util/List;Lpko;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    const v0, 0xf

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    const-string p4, "Unable to createCaptureSession for "

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

    :goto_d
    invoke-virtual {p2}, Lpko;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, p3, p1}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop
.end method
