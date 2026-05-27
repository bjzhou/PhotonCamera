.class final Ldrs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/mediapipe/framework/TextureFrame;


# instance fields
.field final synthetic a:I

.field final synthetic b:Llde;

.field final synthetic c:Lj$/time/Instant;


# direct methods
.method public constructor <init>(ILlde;Lj$/time/Instant;)V
    .locals 0

    iput p1, p0, Ldrs;->a:I

    iput-object p2, p0, Ldrs;->b:Llde;

    iput-object p3, p0, Ldrs;->c:Lj$/time/Instant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget-object v0, p0, Ldrs;->b:Llde;

    invoke-virtual {v0}, Llde;->b()Llaq;

    move-result-object v0

    iget-object v0, v0, Llaq;->a:Lkym;

    invoke-virtual {v0}, Lkyn;->a()I

    move-result v0

    return v0
.end method

.method public final getTextureName()I
    .locals 1

    iget v0, p0, Ldrs;->a:I

    return v0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-object v0, p0, Ldrs;->c:Lj$/time/Instant;

    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWidth()I
    .locals 1

    iget-object v0, p0, Ldrs;->b:Llde;

    invoke-virtual {v0}, Llde;->b()Llaq;

    move-result-object v0

    iget-object v0, v0, Llaq;->a:Lkym;

    invoke-virtual {v0}, Lkyn;->b()I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final release(Lcom/google/mediapipe/framework/GlSyncToken;)V
    .locals 0

    return-void
.end method

.method public final synthetic retain()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic supportsRetain()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
