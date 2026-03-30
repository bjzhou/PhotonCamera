.class public final Lhnf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhmn;

.field public static final b:Lhmn;

.field public static final c:Lhmn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lstm;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lstm;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lstm;->p()Lhmn;

    move-result-object v0

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

    :goto_5
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

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

    :goto_8
    const-string v1, "default_aspect_ratio"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    const v1, 0x17

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lstm;

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

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_d
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lhnf;->b:Lhmn;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    const-string v1, "camera.optbar.log"

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lstm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

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

    :goto_16
    const-string v1, "camera.optbar.show_auto_flash_option"

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

    :goto_17
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "camera.optbar.hdr"

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sput-object v0, Lhnf;->c:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

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

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "camera.use_video_resolution_option"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Lstm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    sput-object v0, Lhnf;->a:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
