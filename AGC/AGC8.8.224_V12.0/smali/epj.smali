.class public final synthetic Lepj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public constructor <init>(Lbni;ILandroid/os/Handler;Lbna;I)V
    .locals 0

    iput p5, p0, Lepj;->e:I

    iput-object p1, p0, Lepj;->c:Ljava/lang/Object;

    iput p2, p0, Lepj;->a:I

    iput-object p3, p0, Lepj;->b:Ljava/lang/Object;

    iput-object p4, p0, Lepj;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lepl;Ljava/lang/String;ILjava/lang/Runnable;I)V
    .locals 0

    iput p5, p0, Lepj;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepj;->b:Ljava/lang/Object;

    iput-object p2, p0, Lepj;->c:Ljava/lang/Object;

    iput p3, p0, Lepj;->a:I

    iput-object p4, p0, Lepj;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkxe;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 0

    iput p5, p0, Lepj;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepj;->d:Ljava/lang/Object;

    iput p2, p0, Lepj;->a:I

    iput-object p3, p0, Lepj;->c:Ljava/lang/Object;

    iput-object p4, p0, Lepj;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lepj;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lepj;->d:Ljava/lang/Object;

    iget v1, p0, Lepj;->a:I

    iget-object v2, p0, Lepj;->c:Ljava/lang/Object;

    iget-object v3, p0, Lepj;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lkxe;

    iget-object v5, v4, Lkxe;->e:Ljava/lang/Object;

    monitor-enter v5

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lepj;->c:Ljava/lang/Object;

    check-cast v0, Lbni;

    invoke-virtual {v0}, Lbni;->a()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lepj;->a:I

    iget-object v2, p0, Lepj;->b:Ljava/lang/Object;

    iget-object v3, p0, Lepj;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-static {v2, v3}, Lbnb;->e(Landroid/os/Handler;Lbna;)Lbnb;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lepj;->b:Ljava/lang/Object;

    iget-object v1, p0, Lepj;->c:Ljava/lang/Object;

    iget v2, p0, Lepj;->a:I

    iget-object v3, p0, Lepj;->d:Ljava/lang/Object;

    check-cast v0, Lepl;

    iget-object v4, v0, Lepl;->e:Lkbc;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MotionBlurQueue#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    iget-object v0, v0, Lepl;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :goto_0
    :try_start_0
    check-cast v0, Lkxe;

    iget-object v0, v0, Lkxe;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v4, Lkxe;->b:Lkpf;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast v3, Landroid/media/MediaCodec$BufferInfo;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-interface {v1, v0, v2, v3}, Lkpf;->h(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown track id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
