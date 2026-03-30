.class public Lcom/google/ar/core/EarthNetworkCallResult;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final response:Ljava/nio/ByteBuffer;

.field private final responseStatusCode:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lcom/google/ar/core/EarthNetworkCallResult;->responseStatusCode:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/ar/core/EarthNetworkCallResult;->response:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getResponse()Ljava/nio/ByteBuffer;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/ar/core/EarthNetworkCallResult;->response:Ljava/nio/ByteBuffer;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public getResponseStatusCode()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget p0, p0, Lcom/google/ar/core/EarthNetworkCallResult;->responseStatusCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
