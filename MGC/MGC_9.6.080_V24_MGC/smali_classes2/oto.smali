.class public final Loto;
.super Lojo;
.source "PG"


# instance fields
.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Loto;->d:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Lojo;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lojo;->b()I

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    iget p0, p0, Loto;->d:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_a
    const-string v0, "unknown"

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_22

    nop

    :goto_d
    const-string v0, ", dataitem="

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v2, "DataEventRef{ type="

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Loto;->a:Lcom/google/android/gms/common/data/DataHolder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "deleted"

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_b

    nop

    nop

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string p0, " }"

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v2, v1, v3, p0}, Lotq;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    :goto_1d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lojo;->b()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_20
    iget v3, p0, Loto;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v2, Lotq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_25
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_a

    nop

    nop

    :goto_27
    const-string v0, "changed"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method
