.class public final synthetic Ljkw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public final synthetic a:Ljkx;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljkx;IZ)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljkw;->a:Ljkx;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p3, p0, Ljkw;->c:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Ljkw;->b:I

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 7

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ljkw;->b:I

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

    :goto_1
    return-object p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1e

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

    nop

    :goto_3
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v3

    nop

    nop

    :try_start_1
    iget-object v4, v1, Lnjb;->d:Lpdf;

    nop

    nop

    nop

    nop

    const-string v5, "getScreenshot"

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v4, v1, Lnjb;->f:Lniv;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lniv;->b:Landroid/view/SurfaceView;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean v0, p0, Ljkw;->c:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    iget-object v1, v1, Ljkx;->g:Lghe;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Ljkw;->a:Ljkx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, v1, Lghe;->r:Lnjb;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v1, Lghe;->w:Landroid/view/WindowManager;

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

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    :goto_16
    invoke-static {v2}, Ljmo;->O(Landroid/view/WindowManager;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    :goto_1c
    const/4 v2, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, v1, Lnjb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    iget-object v2, v1, Lghe;->r:Lnjb;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_20
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    rem-int/lit16 v5, p0, 0xb4

    nop

    nop

    nop

    if-nez v5, :cond_3

    nop

    nop

    goto :goto_21

    nop

    :cond_3
    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    nop

    goto :goto_22

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    nop

    :goto_22
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    rem-int/lit16 v2, p0, 0xb4

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    :cond_4
    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :goto_23
    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    :goto_24
    div-int/lit8 v5, v5, 0x4

    nop

    nop

    nop

    div-int/lit8 v2, v2, 0x4

    nop

    nop

    nop

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lnjb;->e:Lnpc;

    nop

    invoke-virtual {v5, v4, v2}, Lnpc;->a(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    iget-object v4, v1, Lnjb;->d:Lpdf;

    nop

    nop

    const-string v5, "getScreenshot#flipAndRotate"

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpdf;->h(Ljava/lang/String;)V

    invoke-static {v2, p0, v0}, Lnjb;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    iget-object v0, v1, Lnjb;->d:Lpdf;

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_25
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v2, :cond_6

    nop

    goto/32 :goto_1b

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
