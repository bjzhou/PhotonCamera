.class public final Lnfl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnfk;


# instance fields
.field final synthetic a:Lkek;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkek;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnfl;->a:Lkek;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/view/GestureDetector$OnGestureListener;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()Landroid/view/View$OnTouchListener;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkek;->K:Landroid/view/View$OnTouchListener;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnfl;->a:Lkek;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnfl;->a:Lkek;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lkek;->I()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Lnfl;->a:Lkek;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_40

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    :goto_4
    sget-object p3, Lkcf;->b:Lkcf;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    const/16 p3, 0x15a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Lghe;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    iput p3, v0, Lkek;->x:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p2, Lghe;->a:Lsdb;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p2, p2, Ljhy;->K:Lghe;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_34

    nop

    nop

    :goto_d
    const/16 p1, 0xb3c

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

    :goto_e
    invoke-virtual {p3, v0, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p2, Ljhy;->K:Lghe;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p2, Lkek;->F:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p2}, Lnfh;->a()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lnfl;->a:Lkek;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_16
    invoke-direct {p3, p1, v0, p2}, Lihg;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;Lkek;)V

    goto/32 :goto_32

    nop

    nop

    :goto_17
    invoke-interface {v0}, Lnfh;->b()I

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p2, p2, Lghe;->q:Lnfh;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p2, p0, Lnfl;->a:Lkek;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Lkek;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

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

    :goto_1f
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p2, p3}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p2, p0, Lnfl;->a:Lkek;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p2, p2, Lkek;->e:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string p3, "Could not set SurfaceTexture default buffer dimensions, not yet setup"

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_17

    nop

    nop

    :goto_26
    iget-object p2, p0, Lnfl;->a:Lkek;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, v0, Lkek;->G:Lihg;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lkek;->H()V

    :goto_29
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2a
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p3, Lihg;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2d
    const-string p1, "onCameraAvailable queued before onSurfaceTextureAvailable"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    iget-object p2, p2, Lkek;->S:Ljhy;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2f
    if-nez v1, :cond_2

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lnfl;->a:Lkek;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_31
    iget-object p1, p0, Lkek;->g:Ljmb;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_32
    iput-object p3, p2, Lkek;->G:Lihg;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Lkek;->d()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p3, :cond_3

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

    :cond_3
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_38
    check-cast p2, Lscz;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_15

    nop

    nop

    :goto_3b
    iput p2, v0, Lkek;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p3, p2, Lghe;->s:Landroid/graphics/SurfaceTexture;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    :goto_3e
    iget-object v0, p2, Lghe;->q:Lnfh;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p2, p3}, Lscz;->s(Ljava/lang/String;)V

    :goto_40
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_41
    iget-object p2, p2, Lkek;->S:Ljhy;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lkek;->G()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnfl;->a:Lkek;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput p2, p0, Lkek;->w:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lkek;->F:Landroid/os/Handler;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iput p3, p0, Lkek;->x:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_8
    iget-object p0, p0, Lnfl;->a:Lkek;

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

    :goto_9
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const-string p1, "Module does NOT support Surface-backed Preview."

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw p0

    nop

    nop
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const-string p1, "Module does NOT support Surface-backed Preview."

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

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

    nop
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lcom/google/android/apps/camera/contentprovider/Hg/tkLn;->WbvrhTXUCopRCdV:Ljava/lang/String;

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

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->LPi:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
