.class public final Lpkc;
.super Lpli;
.source "PG"


# direct methods
.method public constructor <init>(Lpnu;Lpgn;Lhdn;Lpln;Lpcu;Lpdf;)V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct/range {v0 .. v6}, Lpli;-><init>(ILpgz;Lhdn;Lpln;Lpcu;Lpdf;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v4, p4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v0, p0

    nop

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

    nop

    :goto_5
    move-object v6, p6

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    move-object v5, p5

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

    :goto_7
    iget-object v2, p2, Lpgn;->b:Lpgz;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const v1, 0x2

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

    :goto_b
    invoke-interface {p1}, Lpnu;->Q()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
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

    :goto_10
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_11
    move-object v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method protected final a(Lpri;Lpko;Ljava/util/List;Landroid/os/Handler;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

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

    check-cast v1, Lsbh;

    nop

    nop

    nop

    iget v1, v1, Lsbh;->c:I

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Lryb;

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Lryb;->t()Lscq;

    move-result-object p3

    nop

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lpku;

    nop

    nop

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

    goto :goto_1

    nop

    nop

    :cond_0
    invoke-interface {p1, v0, p2, p4}, Lpri;->f(Ljava/util/List;Lpko;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpkc;->b:Lpcu;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p4, "Unable to createCaptureSession for "

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    const-string v1, "InputConfiguration is not supported on Android L."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, p3, p1}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Lpko;->b()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    :goto_12
    const v1, 0x1e

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

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
.end method
