.class public final Luou;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:I

.field public static final b:Lunv;

.field public static final c:Lunv;

.field public static final d:Lunv;

.field public static final e:Lunv;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput v0, Luou;->f:I

    nop

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

    nop

    :goto_1
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    sput v0, Luou;->a:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1, v2, v2, v3}, Luch;->T(Ljava/lang/String;IIII)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Lunv;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "BROKEN"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    :goto_8
    invoke-static {v0, v1, v2, v2, v3}, Luch;->T(Ljava/lang/String;IIII)I

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Lunv;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    sput-object v0, Luou;->e:Lunv;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lunv;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lunv;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_10
    sput-object v0, Luou;->d:Lunv;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "TAKEN"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1f

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v1, 0x10

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

    :goto_15
    const/16 v3, 0xc

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    invoke-direct {v0, v1}, Lunv;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "CANCELLED"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sput-object v0, Luou;->b:Lunv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    new-instance v0, Lunv;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    const-string v1, "PERMIT"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v0, Lunv;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    const/16 v1, 0x64

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sput-object v0, Luou;->c:Lunv;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Lunv;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method
