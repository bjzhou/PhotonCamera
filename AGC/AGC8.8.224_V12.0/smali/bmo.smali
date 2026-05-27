.class public final Lbmo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Lbnc;

.field final synthetic c:Lbmp;


# direct methods
.method public constructor <init>(Lbmp;Landroid/os/Handler;Lbnc;)V
    .locals 0

    iput-object p1, p0, Lbmo;->c:Lbmp;

    iput-object p2, p0, Lbmo;->a:Landroid/os/Handler;

    iput-object p3, p0, Lbmo;->b:Lbnc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, Lbmo;->c:Lbmp;

    iget-object p2, p2, Lbmp;->a:Lbmv;

    iget-object p2, p2, Lbmv;->e:Lbnx;

    invoke-virtual {p2}, Lbnx;->a()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    sget-object p2, Lbmv;->a:Lboc;

    const-string v0, "picture callback returning when not capturing"

    invoke-static {p2, v0}, Lbod;->c(Lboc;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lbmo;->c:Lbmp;

    iget-object p2, p2, Lbmp;->a:Lbmv;

    iget-object p2, p2, Lbmv;->e:Lbnx;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lbnx;->c(I)V

    :goto_0
    iget-object p2, p0, Lbmo;->a:Landroid/os/Handler;

    new-instance v0, Lbem;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lbem;-><init>(Lbmo;[BI)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
