.class public final synthetic Lfgl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lfgn;

.field public final synthetic b:Lnou;

.field public final synthetic c:Lkxy;


# direct methods
.method public synthetic constructor <init>(Lfgn;Lnou;Lkxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfgl;->a:Lfgn;

    iput-object p2, p0, Lfgl;->b:Lnou;

    iput-object p3, p0, Lfgl;->c:Lkxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lfgl;->a:Lfgn;

    iget-object v1, p0, Lfgl;->b:Lnou;

    iget-object v2, p0, Lfgl;->c:Lkxy;

    invoke-static {v1}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v3, -0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_0

    cmp-long v8, v3, v6

    if-ltz v8, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_3
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v1, v0, Lfgn;->b:Lnou;

    invoke-static {v1}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v1, v0, Lfgn;->c:Lnph;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnph;->e(Ljava/lang/Object;)Z

    cmp-long v1, v11, v3

    if-gez v1, :cond_4

    sget-object v1, Lfgn;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v5, 0x8be

    invoke-interface {v1, v5}, Lnah;->G(I)Lnaz;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lnah;

    const-string v6, "A shutter timestamp (%d) with value less than the starting timestamp (%d) was selected. Overwriting timestamp with starting timestamp."

    move-wide v7, v11

    move-wide v9, v3

    invoke-interface/range {v5 .. v10}, Lnah;->v(Ljava/lang/String;JJ)V

    :cond_4
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-boolean v1, v0, Lfgn;->g:Z

    iget-object v7, v0, Lfgn;->d:Lnou;

    invoke-static {v7}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmqp;

    iget-object v8, v0, Lfgn;->e:Lnou;

    invoke-static {v8}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmqp;

    iget-object v9, v0, Lfgn;->f:Lnou;

    invoke-static {v9}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmqp;

    iget-boolean v0, v0, Lfgn;->h:Z

    sget-object v10, Loal;->g:Loal;

    invoke-virtual {v10}, Lnws;->O()Lnwn;

    move-result-object v10

    iget-object v11, v10, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_5
    iget-object v11, v10, Lnwn;->b:Lnws;

    move-object v12, v11

    check-cast v12, Loal;

    iget v13, v12, Loal;->a:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v12, Loal;->a:I

    iput-boolean v1, v12, Loal;->d:Z

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_6
    iget-object v1, v10, Lnwn;->b:Lnws;

    move-object v11, v1

    check-cast v11, Loal;

    iget v12, v11, Loal;->a:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v11, Loal;->a:I

    iput-wide v5, v11, Loal;->b:J

    sub-long v3, v5, v3

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_7
    iget-object v1, v10, Lnwn;->b:Lnws;

    check-cast v1, Loal;

    iget v11, v1, Loal;->a:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v1, Loal;->a:I

    iput-wide v3, v1, Loal;->c:J

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loar;

    iget-object v3, v10, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_8
    iget-object v3, v10, Lnwn;->b:Lnws;

    check-cast v3, Loal;

    iput-object v1, v3, Loal;->e:Loar;

    iget v1, v3, Loal;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v3, Loal;->a:I

    :cond_9
    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    xor-int/lit8 v1, v0, 0x1

    const-string v3, "meta + V2 isn\'t supported yet!"

    invoke-static {v1, v3}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loao;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnwn;

    invoke-virtual {v3, v1}, Lnwn;->s(Lnws;)V

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loap;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_a
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loao;

    iput-object v1, v4, Loao;->e:Loap;

    iget v1, v4, Loao;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v4, Loao;->a:I

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Loao;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v8

    goto :goto_2

    :cond_b
    :goto_2
    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loao;

    iget-object v3, v10, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_c
    iget-object v3, v10, Lnwn;->b:Lnws;

    check-cast v3, Loal;

    iput-object v1, v3, Loal;->f:Loao;

    iget v1, v3, Loal;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v3, Loal;->a:I

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Loal;

    sget v1, Lcom/google/android/libraries/microvideo/xmp/nativemotionphotos/NativeMotionPhotoProcessor;->a:I

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/microvideo/xmp/nativemotionphotos/NativeMotionPhotoProcessor;->encodeVideoMetadata([B)[B

    move-result-object v0

    goto :goto_3

    :cond_e
    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Loal;

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    :goto_3
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    array-length v3, v0

    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lkxy;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-interface {v2}, Lkxy;->close()V

    return-void
.end method
