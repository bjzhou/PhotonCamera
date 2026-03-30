.class public final Lhlv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhmn;

.field public static final b:Lhmn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const-string v1, "camera.autotimer_accel_tpu"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    const-string v1, "camera.auto_timer_enabled"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lhlv;->a:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lstm;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_10
    new-instance v0, Lstm;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    :goto_13
    sput-object v0, Lhlv;->b:Lhmn;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
