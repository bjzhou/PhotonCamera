.class public final synthetic Lihh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lihi;

.field public final synthetic b:Lei;

.field public final synthetic c:Lkbc;

.field public final synthetic d:Lnph;


# direct methods
.method public synthetic constructor <init>(Lihi;Lei;Lkbc;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lihh;->a:Lihi;

    iput-object p2, p0, Lihh;->b:Lei;

    iput-object p3, p0, Lihh;->c:Lkbc;

    iput-object p4, p0, Lihh;->d:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lihh;->a:Lihi;

    iget-object v1, p0, Lihh;->b:Lei;

    iget-object v2, p0, Lihh;->c:Lkbc;

    iget-object v3, p0, Lihh;->d:Lnph;

    invoke-virtual {v1}, Lei;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lihi;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v4, "Error at inflateCameraActivityUi: activity is destroyed"

    const/16 v5, 0x10a0

    invoke-static {v1, v4, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_0
    const-string v1, "CameraActivityUi#mainInflate"

    invoke-interface {v2, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Lihi;->b:Lihg;

    iget-object v1, v1, Lihg;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v1, v0, Lihi;->b:Lihg;

    iget-object v1, v1, Lihg;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, v0, Lihi;->b:Lihg;

    iget-object v0, v0, Lihg;->q:Ljava/lang/Object;

    new-instance v1, Ldja;

    check-cast v0, Ljew;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v4}, Ldja;-><init>(Ljew;[B[B)V

    invoke-virtual {v3, v1}, Lnph;->e(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lkbc;->f()V

    return-void
.end method
