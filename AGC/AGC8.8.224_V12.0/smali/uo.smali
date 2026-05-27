.class public final Luo;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.VirtualCameraManager$ActiveCamera$1"
    c = "VirtualCameraManager.kt"
    d = "invokeSuspend"
    e = {
        0x106
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroidx/wear/ambient/AmbientDelegate;

.field private synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;Loku;[B)V
    .locals 0

    iput-object p1, p0, Luo;->b:Landroidx/wear/ambient/AmbientDelegate;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lopu;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Luo;

    invoke-virtual {p1, p2}, Luo;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Luo;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Luo;->c:Ljava/lang/Object;

    check-cast p1, Lopu;

    iget-object v1, p0, Luo;->b:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v1, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v2, Lsj;

    iget-object v2, v2, Lsj;->b:Louo;

    new-instance v3, Lun;

    const/4 v4, 0x0

    invoke-direct {v3, v1, p1, v4}, Lun;-><init>(Landroidx/wear/ambient/AmbientDelegate;Lopu;[B)V

    const/4 p1, 0x1

    iput p1, p0, Luo;->a:I

    invoke-interface {v2, v3, p0}, Louv;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    new-instance p1, Loiz;

    invoke-direct {p1}, Loiz;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 3

    new-instance v0, Luo;

    iget-object v1, p0, Luo;->b:Landroidx/wear/ambient/AmbientDelegate;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Luo;-><init>(Landroidx/wear/ambient/AmbientDelegate;Loku;[B)V

    iput-object p1, v0, Luo;->c:Ljava/lang/Object;

    return-object v0
.end method
