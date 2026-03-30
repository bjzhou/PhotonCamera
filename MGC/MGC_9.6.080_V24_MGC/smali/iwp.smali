.class public final Liwp;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Liwq;Landroid/os/Looper;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Liwp;->a:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    new-instance p2, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, [F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    invoke-static {v5, p0, v0, v1}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iget-object p0, v0, Liwq;->c:Liwk;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p0, p1, Liwn;->e:I

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_6
    invoke-virtual {v5, p0}, Lfdn;->t([F)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Landroid/opengl/EGLSurface;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Liwk;->a()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lrqs;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_c
    if-ne v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v5, p1, Liwn;->h:Lfdn;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    const v0, 0x4

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v5, Landroid/opengl/EGLDisplay;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_11
    int-to-long v5, p0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, p1, Liwn;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    check-cast v0, Liwq;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    :goto_17
    const/16 v5, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_18
    const/16 v0, 0x7c4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1c
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Liwp;->a:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Landroid/opengl/EGLDisplay;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_21
    shl-long/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    iget p0, p1, Landroid/os/Message;->arg2:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p1, Liwn;->g:Lrqs;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_27
    and-long/2addr v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_28
    int-to-long v3, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    check-cast p0, Landroid/opengl/EGLSurface;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Liwp;->getLooper()Landroid/os/Looper;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p1, v0, Liwq;->b:Liwn;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v1, p1, Landroid/os/Message;->what:I

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2f
    const-wide v0, 0xffffffffL

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v5, p1, Liwn;->g:Lrqs;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v0, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_32
    iget-object p0, p1, Liwn;->g:Lrqs;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget p0, p1, Landroid/os/Message;->arg1:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_34
    iget-object p0, p0, Lrqs;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_35
    iget-object v5, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int/2addr p0, v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_37
    sget-object p0, Liwn;->a:Lsdb;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-ne v1, p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3b
    const/4 p1, 0x3

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Liwn;->f()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    or-long/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Liwn;->f()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3f
    const v1, 0x5

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_40
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_41
    iget p0, p1, Liwn;->e:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_42
    const-string v0, "Received a frame to process, but the encoder either hasn\'t started or has already stopped. This should not happen."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    :goto_44
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_4
    goto/32 :goto_37

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto :goto_4b

    nop

    nop

    :goto_49
    goto/32 :goto_2e

    nop

    nop

    :goto_4a
    if-ne v1, p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_5
    :goto_4b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v5}, Lrqs;->b()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
