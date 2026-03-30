.class final Lrtd;
.super Lrsb;
.source "PG"


# instance fields
.field final synthetic f:Lrte;


# direct methods
.method public constructor <init>(Lrte;Lrth;Ljava/lang/CharSequence;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p2, p3}, Lrsb;-><init>(Lrth;Ljava/lang/CharSequence;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrtd;->f:Lrte;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr p1, p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

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

    nop

    :goto_2
    iget-object p0, p0, Lrte;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrtd;->f:Lrte;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    return p1

    nop

    nop

    nop

    nop
.end method

.method public final b(I)I
    .locals 6

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-le p1, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v5, v5, Lrte;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v2, v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object v3, p0, Lrtd;->b:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lrtd;->f:Lrte;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_8
    check-cast v0, Ljava/lang/String;

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

    :goto_9
    goto :goto_5

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v5, p0, Lrtd;->f:Lrte;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sub-int/2addr v1, v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Lrte;->a:Ljava/lang/Object;

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

    :goto_f
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_20

    nop

    nop

    :goto_12
    if-ne v3, v4, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    const v1, 0x1b

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    return p1

    nop

    nop

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v4, v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    :goto_1d
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_22
    iget-object v1, p0, Lrtd;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    const/4 p0, -0x1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_24
    check-cast v5, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_25
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
