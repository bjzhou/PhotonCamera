.class final Lkfi;
.super Lnsi;
.source "PG"


# instance fields
.field final synthetic a:Lkfk;


# direct methods
.method public constructor <init>(Lkfk;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkfi;->a:Lkfk;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lnsi;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Z
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lkfk;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, v1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lkfi;->a:Lkfk;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lkfk;->b:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x16

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lrtk;->c()Lj$/time/Duration;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iget p1, p0, Lkfk;->i:I

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

    :goto_b
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_10
    iget-object p1, p1, Lkfk;->d:Lrtk;

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

    :goto_11
    invoke-virtual {p0, p1}, Lkfk;->k(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    if-ltz p1, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    iget-boolean v0, p1, Lkfk;->f:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Lkfi;->a:Lkfk;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Lkfi;->a:Lkfk;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    const/4 p0, 0x0

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
.end method
