.class public final Lhmi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhmn;

.field public static final b:Lhmn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lstm;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_11

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    new-instance v0, Lstm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

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

    :goto_9
    sput-object v0, Lhmi;->b:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const v0, 0x15

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

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "camera.fc_diet"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_10
    sput-object v0, Lhmi;->a:Lhmn;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    const-string v1, "camera.fc_extraction"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lstm;

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

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
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

    :goto_16
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "camera.fc_imu_sensor"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    const-string v1, "camera.fc_orientation"

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

    nop

    :goto_1b
    new-instance v0, Lstm;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
