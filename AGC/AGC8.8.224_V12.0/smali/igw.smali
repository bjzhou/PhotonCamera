.class public final synthetic Ligw;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Ligx;

.field public final synthetic b:Landroid/view/SurfaceView;

.field public final synthetic c:Lkab;

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ligx;Landroid/view/SurfaceView;Lkab;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligw;->a:Ligx;

    iput-object p2, p0, Ligw;->b:Landroid/view/SurfaceView;

    iput-object p3, p0, Ligw;->c:Lkab;

    iput-boolean p4, p0, Ligw;->d:Z

    iput p5, p0, Ligw;->e:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Ligw;->a:Ligx;

    iget-object v1, p0, Ligw;->b:Landroid/view/SurfaceView;

    iget-object v2, p0, Ligw;->c:Lkab;

    iget-boolean v3, p0, Ligw;->d:Z

    iget v4, p0, Ligw;->e:I

    iget-object v5, v0, Ligx;->c:Lgft;

    invoke-interface {v5}, Lgft;->f()Lkab;

    move-result-object v5

    iget-object v0, v0, Ligx;->g:Limc;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v0, Ligx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "getScreenshotFrom(): the surface is not valid"

    const/16 v2, 0x109a

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v7

    invoke-static {v6, v7, v5, v4}, Ligx;->c(IILkab;I)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-gtz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Limc;->a(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Lkab;->a()I

    move-result v0

    invoke-static {v5, v0, v3}, Ligx;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v4}, Lihc;->b(Landroid/graphics/Bitmap;I)Lihc;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Ligx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "getScreenshotFrom(): the surface size is invalid"

    const/16 v2, 0x1099

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Lmpx;->a:Lmpx;

    :goto_1
    return-object v0
.end method
