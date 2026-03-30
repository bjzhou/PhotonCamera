.class final Lrtc;
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

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p2, p3}, Lrsb;-><init>(Lrth;Ljava/lang/CharSequence;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrtc;->f:Lrte;

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

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    :goto_1
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(I)I
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    goto :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_15

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    if-lt p1, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, v2, Lrte;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    invoke-static {p1, v1}, Lrrf;->F(II)V

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v3}, Lrsi;->b(C)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Lrtc;->f:Lrte;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    :goto_11
    iget-object v0, p0, Lrtc;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    check-cast v2, Lrsi;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p1, -0x1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_17
    return p1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
