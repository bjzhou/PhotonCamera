.class public final Llem;
.super Ljava/lang/Object;

# interfaces
.implements Llep;


# instance fields
.field private final a:Llep;


# direct methods
.method public constructor <init>(Llep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llem;->a:Llep;

    return-void
.end method


# virtual methods
.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-static {p1, p2}, Lloi;->e(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lloi;

    move-result-object p1

    iget-object p2, p0, Llem;->a:Llep;

    iget-object v0, p1, Lloi;->c:Ljava/lang/Object;

    iget-object p1, p1, Lloi;->b:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p2, v0, p1}, Llep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Llem;->a:Llep;

    invoke-interface {v0}, Llep;->close()V

    return-void
.end method
