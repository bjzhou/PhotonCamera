.class public final Landroidx/emoji2/text/flatbuffer/UnionVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "UnionVector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/UnionVector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/UnionVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(Landroidx/emoji2/text/flatbuffer/Table;I)Landroidx/emoji2/text/flatbuffer/Table;
    .locals 0

    .line 50
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/UnionVector;->__element(I)I

    move-result p2

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/UnionVector;->bb:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2, p0}, Landroidx/emoji2/text/flatbuffer/Table;->__union(Landroidx/emoji2/text/flatbuffer/Table;ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/Table;

    move-result-object p0

    return-object p0
.end method
