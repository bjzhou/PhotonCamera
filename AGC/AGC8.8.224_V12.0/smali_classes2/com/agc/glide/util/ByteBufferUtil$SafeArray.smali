.class final Lcom/agc/glide/util/ByteBufferUtil$SafeArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/util/ByteBufferUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafeArray"
.end annotation


# instance fields
.field final data:[B

.field final limit:I

.field final offset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/util/ByteBufferUtil$SafeArray;->data:[B

    iput p2, p0, Lcom/agc/glide/util/ByteBufferUtil$SafeArray;->offset:I

    iput p3, p0, Lcom/agc/glide/util/ByteBufferUtil$SafeArray;->limit:I

    return-void
.end method
