.class final Lbmn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lbmy;

.field final synthetic c:Lbmp;


# direct methods
.method public constructor <init>(Lbmp;Landroid/os/Handler;Lbmy;)V
    .locals 0

    iput-object p1, p0, Lbmn;->c:Lbmp;

    iput-object p2, p0, Lbmn;->a:Landroid/os/Handler;

    iput-object p3, p0, Lbmn;->b:Lbmy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, Lbmn;->c:Lbmp;

    iget-object p2, p2, Lbmp;->a:Lbmv;

    iget-object p2, p2, Lbmv;->e:Lbnx;

    invoke-virtual {p2}, Lbnx;->a()I

    move-result p2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    sget-object p2, Lbmv;->a:Lboc;

    const-string v0, "onAutoFocus callback returning when not focusing"

    invoke-static {p2, v0}, Lbod;->c(Lboc;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lbmn;->c:Lbmp;

    iget-object p2, p2, Lbmp;->a:Lbmv;

    iget-object p2, p2, Lbmv;->e:Lbnx;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lbnx;->c(I)V

    :goto_0
    iget-object p2, p0, Lbmn;->a:Landroid/os/Handler;

    new-instance v0, Lbnd;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lbnd;-><init>(Lbmn;ZI)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
