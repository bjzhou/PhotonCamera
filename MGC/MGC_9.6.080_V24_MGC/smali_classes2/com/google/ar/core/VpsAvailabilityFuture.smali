.class public Lcom/google/ar/core/VpsAvailabilityFuture;
.super Lcom/google/ar/core/FutureImpl;
.source "PG"


# direct methods
.method public constructor <init>(Lcom/google/ar/core/Session;JJ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/FutureImpl;-><init>(Lcom/google/ar/core/Session;JJ)V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public bridge synthetic cancel()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-super {p0}, Lcom/google/ar/core/FutureImpl;->cancel()Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public getResult()Lcom/google/ar/core/VpsAvailability;
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

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

    :goto_2
    invoke-static {p0}, Lcom/google/ar/core/VpsAvailability;->forNumber(I)Lcom/google/ar/core/VpsAvailability;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/VpsAvailabilityFuture;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    iget-wide v2, p0, Lcom/google/ar/core/VpsAvailabilityFuture;->nativeFuture:J

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    const v0, 0x17

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ar/core/VpsAvailabilityFuture;->nativeGetResult(JJ)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public bridge synthetic getState()Lcom/google/ar/core/FutureState;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Lcom/google/ar/core/FutureImpl;->getState()Lcom/google/ar/core/FutureState;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public native nativeGetResult(JJ)I
.end method
