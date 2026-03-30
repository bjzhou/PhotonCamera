.class public final Lcrv;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(Lcru;Lbmb;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, v0, Lbzy;->z:Z

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
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const-string v0, "Cannot read CompositionLocal because the Modifier node is not currently attached."

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcth;->q:Lbmh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-static {p0}, Lcrx;->d(Lcrw;)Lcth;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Lbmh;->b(Lbmb;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lcru;->y()Lbzy;

    move-result-object v0

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
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
