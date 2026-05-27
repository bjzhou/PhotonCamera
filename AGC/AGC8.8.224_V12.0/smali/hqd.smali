.class public final synthetic Lhqd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhqe;

.field public final synthetic b:Lkpb;

.field public final synthetic c:Lhqb;

.field public final synthetic d:Lkeb;

.field public final synthetic e:Z

.field public final synthetic f:J

.field public final synthetic g:Lmqp;


# direct methods
.method public synthetic constructor <init>(Lhqe;Lkpb;Lhqb;Lkeb;ZJLmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhqd;->a:Lhqe;

    iput-object p2, p0, Lhqd;->b:Lkpb;

    iput-object p3, p0, Lhqd;->c:Lhqb;

    iput-object p4, p0, Lhqd;->d:Lkeb;

    iput-boolean p5, p0, Lhqd;->e:Z

    iput-wide p6, p0, Lhqd;->f:J

    iput-object p8, p0, Lhqd;->g:Lmqp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lhqd;->a:Lhqe;

    iget-object v2, v0, Lhqd;->b:Lkpb;

    iget-object v3, v0, Lhqd;->c:Lhqb;

    iget-object v4, v0, Lhqd;->d:Lkeb;

    iget-boolean v5, v0, Lhqd;->e:Z

    iget-wide v7, v0, Lhqd;->f:J

    iget-object v11, v0, Lhqd;->g:Lmqp;

    iget-object v6, v1, Lhqe;->h:Ldqx;

    invoke-interface {v2}, Lkpb;->c()I

    move-result v9

    move v14, v9

    invoke-interface {v2}, Lkpb;->b()I

    move-result v10

    move v15, v10

    invoke-interface {v2}, Lkpb;->g()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lkpa;

    invoke-interface/range {v16 .. v16}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    mul-int v9, v9, v10

    sget-object v10, Ldqx;->f:[B

    invoke-virtual {v0, v10, v13, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, v6, Ldqx;->d:Ljava/lang/Object;

    iget-object v9, v3, Lhqb;->g:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, v3, Lhqb;->g:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    check-cast v0, Ljad;

    invoke-virtual {v0, v9, v10}, Ljad;->g(II)V

    iget-object v0, v6, Ldqx;->d:Ljava/lang/Object;

    iget-object v9, v3, Lhqb;->h:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, v3, Lhqb;->h:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    check-cast v0, Ljad;

    invoke-virtual {v0, v9, v10}, Ljad;->h(II)V

    iget-object v0, v6, Ldqx;->d:Ljava/lang/Object;

    sget-object v9, Ldqx;->f:[B

    const/4 v10, 0x0

    move-object v13, v9

    move-object/from16 v32, v11

    iget-wide v10, v3, Lhqb;->a:J

    move-wide/from16 v16, v10

    iget-wide v10, v3, Lhqb;->c:J

    move-wide/from16 v18, v10

    iget-wide v10, v3, Lhqb;->b:J

    move-wide/from16 v20, v10

    iget-wide v10, v3, Lhqb;->d:J

    move-wide/from16 v22, v10

    iget v10, v3, Lhqb;->f:F

    move/from16 v24, v10

    move/from16 v26, v10

    iget v3, v3, Lhqb;->e:F

    move/from16 v25, v3

    sget-object v27, Ldqx;->g:[F

    sget-object v28, Ldqx;->h:[F

    move-object v12, v0

    check-cast v12, Ljad;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v12 .. v31}, Ljad;->j([BIIJJJJFFF[F[F[FIZ)J

    iget-object v0, v6, Ldqx;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v0, Ldqx;->h:[F

    iget-object v3, v1, Lhqe;->e:Ljava/util/Queue;

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lhqe;->d:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lhqe;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v0, Lhqe;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xf3d

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v1, v1, Lhqe;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "Number of frames to skip: %d"

    invoke-interface {v0, v2, v1}, Lnah;->p(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v2, v1, Lhqe;->e:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkeb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lhqe;->d:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lkpb;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_3

    iget-object v3, v1, Lhqe;->h:Ldqx;

    invoke-interface {v10}, Lkpb;->g()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkpa;

    invoke-interface {v4}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-interface {v10}, Lkpb;->g()Ljava/util/List;

    move-result-object v4

    const/4 v11, 0x2

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkpa;

    invoke-interface {v4}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, v3, Ldqx;->a:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v4, v3, Ldqx;->c:Ljava/lang/Object;

    invoke-interface {v10}, Lkpb;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkpa;

    invoke-interface {v4}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-interface {v10}, Lkpb;->c()I

    move-result v13

    invoke-interface {v10}, Lkpb;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkpa;

    invoke-interface {v4}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-interface {v10}, Lkpb;->c()I

    move-result v15

    iget-object v4, v3, Ldqx;->a:Ljava/lang/Object;

    invoke-interface {v10}, Lkpb;->c()I

    move-result v6

    mul-int/lit8 v17, v6, 0x3

    invoke-interface {v10}, Lkpb;->c()I

    move-result v18

    invoke-interface {v10}, Lkpb;->b()I

    move-result v19

    move-object/from16 v16, v4

    check-cast v16, Ljava/nio/ByteBuffer;

    invoke-static/range {v12 .. v19}, Lcom/google/android/apps/camera/jni/eisutil/FrameUtilNative;->convertNV21ToYUV24(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)I

    iget-object v4, v3, Ldqx;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v3, v3, Ldqx;->a:Ljava/lang/Object;

    iget-object v4, v1, Lhqe;->h:Ldqx;

    iget-object v4, v4, Ldqx;->e:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast v4, Ligo;

    iget-object v6, v4, Ligo;->a:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    check-cast v6, Lhqi;

    iget-object v6, v6, Lhqi;->l:Lhqh;

    iput-object v3, v6, Lhqh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, v6, Lhqh;->b:[F

    iget-object v0, v4, Ligo;->a:Ljava/lang/Object;

    check-cast v0, Lhqi;

    iget-object v3, v0, Lhqi;->l:Lhqh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lhqi;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lhqi;->l:Lhqh;

    iget-object v4, v0, Lhqi;->k:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v3, v4}, Lhqh;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    const-string v3, "getWarpingResult"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v0, Lhqi;->l:Lhqh;

    iget-object v0, v0, Lhqh;->c:Lhqg;

    iget-object v3, v0, Lhqg;->g:[I

    iget v4, v0, Lhqg;->h:I

    aget v3, v3, v4

    const v4, 0x88eb

    invoke-static {v4, v3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v0, Lhqg;->c:I

    iget v15, v0, Lhqg;->b:I

    const/16 v16, 0x1908

    const/16 v17, 0x1401

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Landroid/opengl/GLES30;->glReadPixels(IIIIIII)V

    iget-object v3, v0, Lhqg;->g:[I

    invoke-virtual {v0}, Lhqg;->a()I

    move-result v6

    aget v3, v3, v6

    invoke-static {v4, v3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget v3, v0, Lhqg;->c:I

    mul-int/lit8 v3, v3, 0x4

    iget v6, v0, Lhqg;->b:I

    mul-int v3, v3, v6

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static {v4, v9, v3, v6}, Landroid/opengl/GLES30;->glMapBufferRange(IIII)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    iget-object v6, v0, Lhqg;->i:Ljpw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {v4}, Landroid/opengl/GLES30;->glUnmapBuffer(I)Z

    iget-object v4, v0, Lhqg;->i:Ljpw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v0}, Lhqg;->a()I

    move-result v4

    iput v4, v0, Lhqg;->h:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-interface {v10}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-interface {v10}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v10}, Lkpb;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkpa;

    invoke-interface {v4}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v10}, Lkpb;->c()I

    move-result v6

    invoke-interface {v10}, Lkpb;->b()I

    move-result v9

    invoke-static {v3, v0, v4, v6, v9}, Lcom/google/android/apps/camera/jni/eisutil/FrameUtilNative;->convertAYUVToNV12(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_0

    :cond_1
    sget-object v1, Lhqi;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xf3e

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    iget-object v0, v0, Lhqi;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "warpImage: This thread does not own the OpenGL context: %s =\\= %s"

    invoke-interface {v1, v3, v0, v2}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Here is not the same thread as OpenGL context."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transform should have 144 elements but only find 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v12

    iget-object v0, v1, Lhqe;->g:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Lhpz;

    iget-object v0, v0, Lhpz;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lhno;

    move-object v9, v2

    move-object/from16 v11, v32

    invoke-virtual/range {v6 .. v12}, Lhno;->f(JLkeb;Lkpb;Lmqp;Lmqp;)V

    return-void
.end method
