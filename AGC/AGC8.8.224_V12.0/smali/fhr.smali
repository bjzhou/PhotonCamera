.class public final Lfhr;
.super Ljava/lang/Object;

# interfaces
.implements Lkxy;


# instance fields
.field private final a:Lkxy;


# direct methods
.method public constructor <init>(Lkxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfhr;->a:Lkxy;

    return-void
.end method


# virtual methods
.method public final a(Lnou;)V
    .locals 1

    iget-object v0, p0, Lfhr;->a:Lkxy;

    invoke-interface {v0, p1}, Lkxy;->a(Lnou;)V

    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-wide p1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    return-void

    :cond_0
    iget-object v0, p0, Lfhr;->a:Lkxy;

    invoke-interface {v0, p1, p2}, Lkxy;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lfhr;->a:Lkxy;

    invoke-interface {v0}, Lkxy;->close()V

    return-void
.end method
