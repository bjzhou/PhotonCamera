.class public final Ljah;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final a:Loyd;

.field public final b:Loyd;

.field public c:Lsuu;

.field public d:Lnrr;

.field private e:Lpci;

.field private f:Z


# direct methods
.method public constructor <init>(Loyd;Lnzk;Loyd;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Lsuu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljah;->a:Loyd;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljah;->c:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    iput-object p3, p0, Ljah;->b:Loyd;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Ljah;->c:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    :goto_6
    invoke-virtual {p0}, Ljah;->b()V

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/view/SurfaceView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lsuu;->isDone()Z

    move-result p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Ljah;->c:Lsuu;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_d
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v1}, Lsuu;->cancel(Z)Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Ljah;->c:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lsuu;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    check-cast p1, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Ljah;->c:Lsuu;

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p1, Lsuu;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljah;->e:Lpci;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Lpci;->close()V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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

    nop

    :goto_6
    iput-boolean v0, p0, Ljah;->f:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Ljah;->e:Lpci;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2, p1}, Lnrr;->l(Lnjd;)Lpci;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-gtz p2, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_5
    if-gtz p3, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Ljah;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Ljah;->e:Lpci;

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p3, p4}, Liqe;-><init>(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p0, Ljah;->c:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Ljah;->f:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, p2, v1, v0, p3}, Lnzk;->aB(Landroid/view/Surface;ILandroid/util/Size;ZLjava/util/function/Consumer;)Lnjd;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p1, 0x0

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    :goto_1c
    const/16 p4, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1d
    iget-object p2, p0, Ljah;->d:Lnrr;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p2, p3}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-gtz p4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p3, Liqe;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    invoke-direct {v1, p3, p4}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p2, :cond_5

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

    :cond_5
    goto/32 :goto_0

    nop

    nop

    :goto_26
    new-instance v1, Landroid/util/Size;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_28
    invoke-interface {p1, p3, p4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Ljah;->f:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/4 p1, 0x0

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
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop
.end method
