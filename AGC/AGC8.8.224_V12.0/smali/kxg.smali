.class public final Lkxg;
.super Ljava/lang/Object;

# interfaces
.implements Lkxy;


# instance fields
.field public final a:I

.field public b:Lmqp;

.field public final synthetic c:Lkxh;


# direct methods
.method public constructor <init>(Lkxh;I)V
    .locals 0

    iput-object p1, p0, Lkxg;->c:Lkxh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lkxg;->b:Lmqp;

    iput p2, p0, Lkxg;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lnou;)V
    .locals 2

    new-instance v0, Lkcw;

    const/16 v1, 0x11

    invoke-direct {v0, p0, p1, v1}, Lkcw;-><init>(Lkxg;Lnou;I)V

    iget-object v1, p0, Lkxg;->c:Lkxh;

    iget-object v1, v1, Lkxh;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    iget-object v0, p0, Lkxg;->c:Lkxh;

    iget-object v0, v0, Lkxh;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lkgc;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, p2, v2}, Lkgc;-><init>(Lkxg;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lkxg;->c:Lkxh;

    iget-object v0, v0, Lkxh;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lkxc;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lkxc;-><init>(Lkxg;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
