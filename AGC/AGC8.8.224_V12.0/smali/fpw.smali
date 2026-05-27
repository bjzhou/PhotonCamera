.class final Lfpw;
.super Ljava/lang/Object;

# interfaces
.implements Lfpp;


# instance fields
.field final synthetic a:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic b:Lfpp;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec$BufferInfo;Lfpp;)V
    .locals 0

    iput-object p1, p0, Lfpw;->a:Landroid/media/MediaCodec$BufferInfo;

    iput-object p2, p0, Lfpw;->b:Lfpp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lfpw;->b:Lfpp;

    invoke-interface {v0}, Lfpp;->close()V

    return-void
.end method
