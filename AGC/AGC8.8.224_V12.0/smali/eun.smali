.class public final synthetic Leun;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Leuo;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Leuo;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leun;->a:Leuo;

    iput p2, p0, Leun;->b:I

    iput-boolean p3, p0, Leun;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 8

    iget-object v0, p0, Leun;->a:Leuo;

    iget v1, p0, Leun;->b:I

    iget-boolean v2, p0, Leun;->c:Z

    iget-object v0, v0, Leuo;->b:Lcha;

    check-cast v0, Lcie;

    iget-object v3, v0, Lcie;->s:Ligx;

    iget-object v3, v0, Lcie;->x:Landroid/view/WindowManager;

    invoke-static {v3}, Lgfp;->c(Landroid/view/WindowManager;)I

    move-result v3

    iget-object v0, v0, Lcie;->s:Ligx;

    iget-object v4, v0, Ligx;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Ligx;->e:Lkbc;

    const-string v6, "getScreenshot"

    invoke-interface {v5, v6}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v5, v0, Ligx;->h:Ligq;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Ligq;->b:Landroid/view/SurfaceView;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    rem-int/lit16 v6, v1, 0xb4

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/view/SurfaceView;->getWidth()I

    move-result v6

    :goto_2
    if-nez v3, :cond_4

    rem-int/lit16 v3, v1, 0xb4

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    :goto_4
    div-int/lit8 v6, v6, 0x4

    div-int/lit8 v3, v3, 0x4

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v6, v0, Ligx;->g:Limc;

    invoke-virtual {v6, v5, v3}, Limc;->a(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    iget-object v5, v0, Ligx;->e:Lkbc;

    const-string v6, "getScreenshot#flipAndRotate"

    invoke-interface {v5, v6}, Lkbc;->g(Ljava/lang/String;)V

    invoke-static {v3, v1, v2}, Ligx;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, v0, Ligx;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
