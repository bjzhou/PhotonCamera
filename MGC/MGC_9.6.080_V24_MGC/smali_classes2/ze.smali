.class final Lze;
.super Luci;
.source "PG"

# interfaces
.implements Lubp;


# instance fields
.field final synthetic a:Lubk;

.field final synthetic b:Lads;


# direct methods
.method public constructor <init>(Lubk;Lads;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p2, p0, Lze;->b:Lads;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p1, p0, Lze;->a:Lubk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lads;->f()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p2, p3, p0}, Lcpb;->b(Lcpc;IILubk;)Lcpa;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    long-to-int p3, v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Lcpc;->o()Z

    move-result p3

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

    :goto_4
    invoke-interface {p2, v0, v1}, Lcoy;->l(J)Lcpp;

    move-result-object p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1f

    nop

    nop

    :goto_7
    int-to-long v3, p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p2, Lcoy;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const-wide v0, 0xffffffffL

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    check-cast p1, Lcpc;

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v2, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    and-long/2addr v5, v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    iget p3, p2, Lcpp;->b:I

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

    :goto_10
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    shr-long v5, v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_12
    iget-object p3, p0, Lze;->a:Lubk;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    long-to-int p2, v5

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    check-cast p3, Ldoy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_15
    if-nez p3, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_28

    nop

    nop

    :goto_17
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p2}, Lzd;-><init>(Lcpp;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    shl-long/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    :goto_1d
    new-instance p0, Lzd;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    int-to-long v5, p3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_21
    iget-object p0, p0, Lze;->b:Lads;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    invoke-interface {p3, p0}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-wide v0, p3, Ldoy;->a:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_25
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_27
    or-long/2addr v3, v5

    nop

    nop

    :goto_28
    goto/32 :goto_11

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    and-long/2addr v0, v3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2b
    iget p0, p2, Lcpp;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
