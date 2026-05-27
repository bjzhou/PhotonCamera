.class final Lldu;
.super Ljava/lang/Object;

# interfaces
.implements Lldz;


# instance fields
.field final synthetic a:Landroid/media/MediaCodec$QueueRequest;

.field final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec$QueueRequest;I)V
    .locals 0

    iput-object p1, p0, Lldu;->a:Landroid/media/MediaCodec$QueueRequest;

    iput p2, p0, Lldu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lldu;->b:I

    return v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lldu;->a:Landroid/media/MediaCodec$QueueRequest;

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lldu;->a:Landroid/media/MediaCodec$QueueRequest;

    invoke-virtual {v0}, Landroid/media/MediaCodec$QueueRequest;->queue()V

    return-void
.end method
