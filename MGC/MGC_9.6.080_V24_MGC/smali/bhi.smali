.class final Lbhi;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:Lbhn;


# direct methods
.method public constructor <init>(Lbhn;Ltzy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lbhi;->b:Lbhn;

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

    :goto_2
    const/4 p1, 0x2

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

    :goto_3
    invoke-direct {p0, p1, p2}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lufs;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Ltzy;

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

    :goto_3
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

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

    :goto_4
    invoke-virtual {p0, p1}, Lbhi;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    check-cast p0, Lbhi;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
    move-object v5, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iget-object v1, p1, Lbhn;->g:Laba;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    sget-object v1, Lacf;->a:Lacd;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    if-eq p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    invoke-static/range {v1 .. v6}, Laba;->j(Laba;Ljava/lang/Object;Labl;Lubk;Ltzy;I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v4, 0xe1

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

    :goto_b
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lbhi;->a:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    iput v1, p0, Lbhi;->a:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_15
    goto/16 :goto_1

    nop

    :goto_16
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    new-instance v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    const/16 v6, 0xc

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    if-nez v1, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    const/4 v3, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v4, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, Lbhi;->b:Lbhn;

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

    :goto_21
    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v4, v5, v1, v3}, Labm;->b(IILacd;I)Laed;

    move-result-object v3

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    :goto_1
    iget-object p0, p0, Lbhi;->b:Lbhn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    new-instance p1, Lbhi;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, p2}, Lbhi;-><init>(Lbhn;Ltzy;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
