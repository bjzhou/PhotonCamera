.class public Loha;
.super Ljava/lang/Exception;
.source "PG"


# instance fields
.field public final a:Lcom/google/android/gms/common/api/Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    :goto_0
    const v1, 0x1

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->f:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const-string v0, ": "

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p1, Lcom/google/android/gms/common/api/Status;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Loha;->a:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_4

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, ""

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loha;->a:Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lcom/google/android/gms/common/api/Status;->f:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method
