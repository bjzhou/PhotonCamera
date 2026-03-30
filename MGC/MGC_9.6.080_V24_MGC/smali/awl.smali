.class final Lawl;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lawm;

.field final synthetic d:Lxx;


# direct methods
.method public constructor <init>(IILxx;Lawm;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p4, p0, Lawl;->c:Lawm;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p3, p0, Lawl;->d:Lxx;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lawl;->a:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput p2, p0, Lawl;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_15

    nop

    nop

    :goto_0
    iget v1, p0, Lawl;->a:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lata;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Lawl;->c:Lawm;

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

    :goto_5
    sub-int v2, v0, v2

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

    :goto_6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_7
    iget p1, p1, Latc;->b:I

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

    :goto_8
    add-int/2addr v1, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_a
    check-cast p1, Latc;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p1, Latc;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    aput-object v1, v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1f

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
    iget v1, p1, Latc;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    iget v2, v2, Lawm;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v1, v0}, Lxx;->f(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget p1, p0, Lawl;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v3, v2, Lawm;->a:[Ljava/lang/Object;

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

    :goto_1a
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lawl;->d:Lxx;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    if-le v0, p1, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    :goto_1f
    goto/32 :goto_3

    nop

    nop

    :goto_20
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    invoke-direct {v1, v0}, Lata;-><init>(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_24
    iget v0, p1, Latc;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
