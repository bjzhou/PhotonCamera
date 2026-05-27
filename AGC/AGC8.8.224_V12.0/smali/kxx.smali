.class final Lkxx;
.super Ljava/lang/Object;

# interfaces
.implements Lkxy;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Llep;


# direct methods
.method public constructor <init>(Lnph;Llep;)V
    .locals 0

    iput-object p1, p0, Lkxx;->a:Lnph;

    iput-object p2, p0, Lkxx;->b:Llep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnou;)V
    .locals 1

    iget-object v0, p0, Lkxx;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->f(Lnou;)Z

    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-object v0, p0, Lkxx;->b:Llep;

    invoke-interface {v0, p1, p2}, Llep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lkxx;->b:Llep;

    invoke-interface {v0}, Llep;->close()V

    return-void
.end method
