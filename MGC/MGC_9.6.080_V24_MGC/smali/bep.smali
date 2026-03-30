.class final Lbep;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:Laba;

.field final synthetic c:Z

.field final synthetic d:Labl;


# direct methods
.method public constructor <init>(Laba;ZLabl;Ltzy;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p4}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-boolean p2, p0, Lbep;->c:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lbep;->d:Labl;

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

    :goto_5
    iput-object p1, p0, Lbep;->b:Laba;

    nop

    goto/32 :goto_2

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
    invoke-virtual {p0, p1}, Lbep;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    check-cast p1, Lufs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-object p0

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
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

    nop

    nop

    :goto_5
    check-cast p0, Lbep;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lbep;->b:Laba;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    new-instance v3, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    const p1, 0x3f4ccccd    # 0.8f

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    const/16 v7, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v4, p0, Lbep;->d:Labl;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    iput v1, p0, Lbep;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Luag;->a:Luag;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    if-eq p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const v0, 0x18

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    move-object v6, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean p1, p0, Lbep;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_1f

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_14
    if-ne v1, p1, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    goto :goto_c

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    :goto_1b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    invoke-static/range {v2 .. v7}, Laba;->j(Laba;Ljava/lang/Object;Labl;Lubk;Ltzy;I)Ljava/lang/Object;

    move-result-object p0

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

    :goto_1d
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    :goto_22
    const/4 v5, 0x0

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

    :goto_23
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Lbep;->a:I

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

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    new-instance p1, Lbep;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    iget-boolean v1, p0, Lbep;->c:Z

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

    :goto_9
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lbep;->b:Laba;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    :goto_c
    iget-object p0, p0, Lbep;->d:Labl;

    nop

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

    :goto_d
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1, v0, v1, p0, p2}, Lbep;-><init>(Laba;ZLabl;Ltzy;)V

    goto/32 :goto_5

    nop

    nop
.end method
