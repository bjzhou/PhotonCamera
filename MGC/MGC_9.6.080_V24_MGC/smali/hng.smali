.class public final Lhng;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhmo;

.field public static final b:Lhmn;

.field public static final c:Lhmn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const-string v1, "lightcycle_enabled"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

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

    :goto_2
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_8
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

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

    nop

    :goto_9
    const v0, 0x19

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "requires_focus_on_pitch_change"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lhng;->a:Lhmo;

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

    :goto_d
    new-instance v0, Lstm;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lhng;->b:Lhmn;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lhng;->c:Lhmn;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lstm;->j()Lhmo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_14
    const v1, 0x4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    new-instance v0, Lstm;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lstm;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    const-string v1, "field_of_view_millidegrees"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
