.class public final synthetic Loec;
.super Ljava/lang/Object;

# interfaces
.implements Loei;


# instance fields
.field public final synthetic a:Lcom/google/vr/cardboard/ExternalSurfaceManager;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/vr/cardboard/ExternalSurfaceManager;I)V
    .locals 0

    iput p2, p0, Loec;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loec;->a:Lcom/google/vr/cardboard/ExternalSurfaceManager;

    return-void
.end method


# virtual methods
.method public final a(Loeg;)V
    .locals 8

    iget v0, p0, Loec;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Loec;->a:Lcom/google/vr/cardboard/ExternalSurfaceManager;

    iget-object v2, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->a:Loed;

    iget-boolean v0, p1, Loeg;->i:Z

    if-nez v0, :cond_3

    :cond_0
    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Loec;->a:Lcom/google/vr/cardboard/ExternalSurfaceManager;

    iget-object v2, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->a:Loed;

    iget-boolean v0, p1, Loeg;->i:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Loeg;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p1, Loeg;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p1, Loeg;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p1, Loeg;->g:Landroid/graphics/SurfaceTexture;

    iget-object v3, p1, Loeg;->c:[F

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, p1, Loeg;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5

    iget v3, p1, Loeg;->a:I

    iget-object v0, p1, Loeg;->f:[I

    aget v4, v0, v1

    iget-object v7, p1, Loeg;->c:[F

    invoke-virtual/range {v2 .. v7}, Loed;->a(IIJ[F)V

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p1, Loeg;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p1, Loeg;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p1, Loeg;->g:Landroid/graphics/SurfaceTexture;

    iget-object v3, p1, Loeg;->c:[F

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, p1, Loeg;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5

    iget v3, p1, Loeg;->a:I

    iget-object v0, p1, Loeg;->f:[I

    aget v4, v0, v1

    iget-object v7, p1, Loeg;->c:[F

    invoke-virtual/range {v2 .. v7}, Loed;->a(IIJ[F)V

    return-void

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
