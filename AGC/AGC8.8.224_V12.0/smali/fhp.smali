.class final Lfhp;
.super Ljava/lang/Object;

# interfaces
.implements Llep;


# instance fields
.field final synthetic a:Lfhq;


# direct methods
.method public constructor <init>(Lfhq;)V
    .locals 0

    iput-object p1, p0, Lfhp;->a:Lfhq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-object v0, p0, Lfhp;->a:Lfhq;

    iget-object v0, v0, Lfhq;->a:Lkxy;

    invoke-interface {v0, p1, p2}, Lkxy;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lfhp;->a:Lfhq;

    iget-object v0, v0, Lfhq;->a:Lkxy;

    invoke-interface {v0}, Lkxy;->close()V

    iget-object v0, p0, Lfhp;->a:Lfhq;

    iget-object v0, v0, Lfhq;->b:Lnph;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
