.class final Laqu;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lbzk;


# direct methods
.method public constructor <init>(Lbzk;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Laqu;->a:Lbzk;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static rXFXzhtjkTUznFxU(Lbzk;JJLdpq;)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xb

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface/range {p0 .. p5}, Lbzk;->a(JJLdpq;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    return-wide v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    return-object p2

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v3, p1, Ldpo;->a:J

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    invoke-static/range {v0 .. v5}, Laqu;->rXFXzhtjkTUznFxU(Lbzk;JJLdpq;)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    iget-object v0, p0, Laqu;->a:Lbzk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    const v0, 0x1c

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

    :goto_b
    check-cast v5, Ldpq;

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

    :goto_c
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p2, p0, p1}, Ldpk;-><init>(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Ldpo;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    new-instance p2, Ldpk;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_11
    const v1, 0x16

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

    :goto_12
    move-object v5, p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method
