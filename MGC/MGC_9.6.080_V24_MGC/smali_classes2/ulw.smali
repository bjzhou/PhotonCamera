.class public final Lulw;
.super Lulr;
.source "PG"


# instance fields
.field public final e:Lubp;


# direct methods
.method public synthetic constructor <init>(Lubp;Lujp;)V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    sget-object v3, Luae;->a:Luae;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    move-object v1, p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const/4 v5, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {v0 .. v5}, Lulw;-><init>(Lubp;Lujp;Luad;II)V

    goto/32 :goto_8

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    const v1, 0x16

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v4, -0x2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop
.end method

.method public constructor <init>(Lubp;Lujp;Luad;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lulw;->e:Lubp;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0, p2, p3, p4, p5}, Lulr;-><init>(Lujp;Luad;II)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method protected final c(Luad;II)Lulq;
    .locals 7

    goto/32 :goto_b

    nop

    nop

    :goto_0
    move v5, p3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    move v4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    new-instance v6, Lulw;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    move-object v3, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lulw;->d:Lujp;

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

    :goto_9
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-direct/range {v0 .. v5}, Lulw;-><init>(Lubp;Lujp;Luad;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xb

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_f
    return-object v6

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lulw;->e:Lubp;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final d(Lujq;Ltzy;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lulv;

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

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    sget-boolean v0, Lufu;->a:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, p2}, Lufv;->h(Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Luag;->a:Luag;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

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

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, p1, v1, v2}, Lulv;-><init>(Lulw;Lujq;Ltzy;I)V

    goto/32 :goto_6

    nop

    nop

    :goto_b
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eq p0, p1, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_e
    return-object p0

    nop

    :goto_f
    goto/32 :goto_9

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

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop
.end method
