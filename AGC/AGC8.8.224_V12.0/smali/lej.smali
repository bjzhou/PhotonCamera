.class Llej;
.super Ljava/lang/Object;

# interfaces
.implements Llel;


# instance fields
.field protected final a:Llel;


# direct methods
.method public constructor <init>(Llel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llej;->a:Llel;

    return-void
.end method


# virtual methods
.method public final a(Lldy;)V
    .locals 1

    iget-object v0, p0, Llej;->a:Llel;

    invoke-interface {v0, p1}, Llel;->a(Lldy;)V

    return-void
.end method

.method public final b(J)V
    .locals 1

    iget-object v0, p0, Llej;->a:Llel;

    invoke-interface {v0, p1, p2}, Llel;->b(J)V

    return-void
.end method

.method public final c(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-object v0, p0, Llej;->a:Llel;

    invoke-interface {v0, p1}, Llel;->c(Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Llej;->a:Llel;

    invoke-interface {v0}, Llel;->d()V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Llej;->a:Llel;

    invoke-interface {v0, p1}, Llel;->e(I)V

    return-void
.end method
