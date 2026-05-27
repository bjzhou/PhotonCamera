.class public final synthetic Ledy;
.super Ljava/lang/Object;

# interfaces
.implements Lnsl;


# instance fields
.field public final synthetic a:Leea;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Leea;I)V
    .locals 0

    iput p2, p0, Ledy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledy;->a:Leea;

    return-void
.end method


# virtual methods
.method public final a(IJLcom/google/googlex/gcam/ShotMetadata;Lnqz;)V
    .locals 6

    iget v0, p0, Ledy;->b:I

    const-string v1, "doneWriting() must be called before getImage."

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p5, p0, Ledy;->a:Leea;

    iget-object v0, p5, Leea;->r:Lhna;

    invoke-static {v0}, Leea;->d(Lhna;)Lnqn;

    move-result-object v0

    invoke-static {p4, v0}, Lnsy;->j(Lcom/google/googlex/gcam/ShotMetadata;Lnqn;)V

    iget v0, p5, Leea;->s:I

    if-ne v0, v3, :cond_e

    const/4 v0, 0x1

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p0, Ledy;->a:Leea;

    iget-object p2, p1, Leea;->r:Lhna;

    invoke-static {p2}, Leea;->d(Lhna;)Lnqn;

    move-result-object p2

    invoke-static {p4, p2}, Lnsy;->j(Lcom/google/googlex/gcam/ShotMetadata;Lnqn;)V

    iget p2, p1, Leea;->s:I

    if-ne p2, v3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lmoz;->p(Z)V

    sget-object p2, Lnqz;->d:Lnqz;

    if-eq p5, p2, :cond_2

    sget-object p2, Lnqz;->f:Lnqz;

    if-ne p5, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    :goto_1
    sget-object p3, Lnqz;->b:Lnqz;

    if-eq p5, p3, :cond_4

    sget-object p3, Lnqz;->c:Lnqz;

    if-ne p5, p3, :cond_3

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    goto :goto_2

    :cond_4
    const/4 p3, 0x1

    :goto_2
    if-nez p2, :cond_6

    if-eqz p3, :cond_5

    const/4 p5, 0x1

    goto :goto_3

    :cond_5
    const/4 p5, 0x0

    goto :goto_3

    :cond_6
    const/4 p5, 0x1

    :goto_3
    const-string v0, "Final image callback only supports PixelFormat.{kRgb, kRgba, kNv12, or kNv21}"

    invoke-static {p5, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    if-eqz p2, :cond_9

    iget-object p5, p1, Leea;->l:Leec;

    invoke-virtual {p5}, Leec;->k()Lmqp;

    move-result-object p5

    invoke-virtual {p5}, Lmqp;->g()Z

    move-result p5

    if-nez p5, :cond_8

    iget-object p5, p1, Leea;->l:Leec;

    invoke-virtual {p5}, Leec;->l()Lmqp;

    move-result-object p5

    invoke-virtual {p5}, Lmqp;->g()Z

    move-result p5

    if-eqz p5, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    goto :goto_4

    :cond_8
    const/4 v2, 0x1

    :goto_4
    const-string p5, "Got RGB image with no downstream callback present."

    invoke-static {v2, p5}, Lmoz;->q(ZLjava/lang/Object;)V

    :cond_9
    if-eqz p3, :cond_a

    iget-object p5, p1, Leea;->l:Leec;

    invoke-virtual {p5}, Leec;->n()Lmqp;

    move-result-object p5

    invoke-virtual {p5}, Lmqp;->g()Z

    move-result p5

    const-string v0, "Got YUV image with no downstream callback present."

    invoke-static {p5, v0}, Lmoz;->q(ZLjava/lang/Object;)V

    :cond_a
    if-eqz p2, :cond_c

    iget-object p2, p1, Leea;->l:Leec;

    invoke-virtual {p2}, Leec;->k()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p1, Leea;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    check-cast p2, Lnrq;

    iget-object p3, p1, Leea;->l:Leec;

    invoke-virtual {p3}, Leec;->k()Lmqp;

    move-result-object p3

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lecv;

    iget-boolean p5, p2, Lnrq;->b:Z

    invoke-static {p5, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object p2, p2, Lnrq;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-interface {p3, p1, p2, p4}, Lecv;->a(Leea;Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V

    return-void

    :cond_b
    iget-object p2, p1, Leea;->l:Leec;

    invoke-virtual {p2}, Leec;->l()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p1, Leea;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    check-cast p2, Lnro;

    iget-object p1, p1, Leea;->l:Leec;

    invoke-virtual {p1}, Leec;->l()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lecp;

    invoke-virtual {p2}, Lnro;->a()Landroid/hardware/HardwareBuffer;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Lecp;->a(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V

    return-void

    :cond_c
    if-eqz p3, :cond_d

    iget-object p2, p1, Leea;->l:Leec;

    invoke-virtual {p2}, Leec;->n()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lecx;

    iget-object p3, p1, Leea;->j:Lnrs;

    invoke-virtual {p3}, Lnrs;->a()Lcom/google/googlex/gcam/YuvImage;

    move-result-object p3

    invoke-interface {p2, p1, p3, p4}, Lecx;->a(Leea;Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V

    return-void

    :cond_d
    return-void

    :cond_e
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lmoz;->p(Z)V

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result v0

    if-eq p1, v0, :cond_f

    const/4 p1, 0x1

    goto :goto_6

    :cond_f
    const/4 p1, 0x0

    :goto_6
    invoke-static {p1}, Lmoz;->e(Z)V

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v4

    cmp-long p1, p2, v4

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_7

    :cond_10
    const/4 p1, 0x0

    :goto_7
    invoke-static {p1}, Lmoz;->e(Z)V

    iget-object p1, p5, Leea;->l:Leec;

    invoke-virtual {p1}, Leec;->g()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p5, Leea;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    check-cast p1, Lnrn;

    iget-object p2, p1, Lnrn;->a:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_11

    iget-object p2, p1, Lnrn;->b:Lnqu;

    if-nez p2, :cond_11

    const/4 v2, 0x1

    goto :goto_8

    :cond_11
    :goto_8
    invoke-static {v2, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object p1, p1, Lnrn;->a:Landroid/graphics/Bitmap;

    iget-object p2, p5, Leea;->l:Leec;

    invoke-virtual {p2}, Leec;->g()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lecn;

    invoke-interface {p2, p5, p1, p4}, Lecn;->o(Leea;Landroid/graphics/Bitmap;Lcom/google/googlex/gcam/ShotMetadata;)V

    return-void

    :cond_12
    iget-object p1, p5, Leea;->l:Leec;

    invoke-virtual {p1}, Leec;->f()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p5, Leea;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    check-cast p1, Lnro;

    invoke-virtual {p1}, Lnro;->a()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    iget-object p2, p5, Leea;->l:Leec;

    invoke-virtual {p2}, Leec;->f()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lecp;

    invoke-interface {p2, p1, p4}, Lecp;->a(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V

    return-void

    :cond_13
    iget-object p1, p5, Leea;->l:Leec;

    invoke-virtual {p1}, Leec;->h()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p5, Leea;->l:Leec;

    invoke-virtual {p1}, Leec;->h()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lecx;

    iget-object p2, p5, Leea;->h:Lnrs;

    invoke-virtual {p2}, Lnrs;->a()Lcom/google/googlex/gcam/YuvImage;

    move-result-object p2

    invoke-interface {p1, p5, p2, p4}, Lecx;->a(Leea;Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V

    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
