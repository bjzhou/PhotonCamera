.class public final Lhmk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhmo;

.field public static final b:Lhmn;

.field public static final c:Lhmn;

.field public static final d:Lhmn;

.field public static final e:Lhmn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lhmk;->b:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    const-string v1, "camera.familiar_faces_v2"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lstm;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lstm;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lstm;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lhmk;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lstm;->j()Lhmo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lhmk;->d:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_10
    const-string v1, "camera.familiar_faces_retention_ms"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sput-object v0, Lhmk;->e:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "camera.familiar_faces"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "camera.familiar_faces_awb"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "camera.familiar_faces_override_on"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1f
    const-string v1, "camera.enable_standalone_ff"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    new-instance v0, Lstm;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_25
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_26
    new-instance v0, Lstm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v0, Lstm;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_29
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_10

    nop

    nop

    :goto_2a
    sput-object v0, Lhmk;->c:Lhmn;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
