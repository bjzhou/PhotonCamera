.class public Lcom/google/ar/core/EarthNetworkCallback;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/ar/core/EarthNetworkCallbackInterface;


# instance fields
.field private final nativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-wide p1, p0, Lcom/google/ar/core/EarthNetworkCallback;->nativeHandle:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private native nativeCallback(JLcom/google/ar/core/EarthNetworkCallResult;)V
.end method


# virtual methods
.method public run(Lcom/google/ar/core/EarthNetworkCallResult;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v0, p0, Lcom/google/ar/core/EarthNetworkCallback;->nativeHandle:J

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    const v0, 0x2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xe

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/EarthNetworkCallback;->nativeCallback(JLcom/google/ar/core/EarthNetworkCallResult;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
