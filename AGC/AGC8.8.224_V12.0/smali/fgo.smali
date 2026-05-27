.class final Lfgo;
.super Ljava/lang/Object;

# interfaces
.implements Llel;


# instance fields
.field final synthetic a:Lfgp;


# direct methods
.method public constructor <init>(Lfgp;)V
    .locals 0

    iput-object p1, p0, Lfgo;->a:Lfgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lldy;)V
    .locals 0

    return-void
.end method

.method public final b(J)V
    .locals 0

    return-void
.end method

.method public final c(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-object v0, p0, Lfgo;->a:Lfgp;

    iget-object v0, v0, Lfgp;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 v0, 0x1

    iput v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object p1, p0, Lfgo;->a:Lfgp;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lfgp;->a(Z)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(I)V
    .locals 0

    return-void
.end method
