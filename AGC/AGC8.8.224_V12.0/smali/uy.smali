.class final Luy;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.VirtualCameraState$connect$2"
    c = "VirtualCamera.kt"
    d = "invokeSuspend"
    e = {}
.end annotation


# instance fields
.field final synthetic a:Luz;

.field final synthetic b:Lott;

.field final synthetic c:Lapp;

.field private synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Luz;Lapp;Lott;Loku;[B)V
    .locals 0

    iput-object p1, p0, Luy;->a:Luz;

    iput-object p2, p0, Luy;->c:Lapp;

    iput-object p3, p0, Luy;->b:Lott;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Loln;-><init>(ILoku;)V

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

    check-cast p1, Luy;

    invoke-virtual {p1, p2}, Luy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lolc;->a:Lolc;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Luy;->d:Ljava/lang/Object;

    check-cast p1, Lopu;

    iget-object v0, p0, Luy;->a:Luz;

    iget-object v1, v0, Luz;->b:Ljava/lang/Object;

    iget-object v2, p0, Luy;->c:Lapp;

    iget-object v3, p0, Luy;->b:Lott;

    monitor-enter v1

    :try_start_0
    iget-boolean v4, v0, Luz;->c:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lapp;->a()V

    :cond_0
    sget-object p1, Lojk;->a:Lojk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :cond_1
    :try_start_1
    sget-object v4, Lolb;->a:Lolb;

    new-instance v5, Lux;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v0, v6}, Lux;-><init>(Lott;Luz;Loku;)V

    const/4 v3, 0x2

    invoke-static {p1, v4, v5, v3}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    move-result-object p1

    iput-object p1, v0, Luz;->e:Lora;

    iput-object v2, v0, Luz;->f:Lapp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 7

    new-instance v6, Luy;

    iget-object v1, p0, Luy;->a:Luz;

    iget-object v2, p0, Luy;->c:Lapp;

    iget-object v3, p0, Luy;->b:Lott;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Luy;-><init>(Luz;Lapp;Lott;Loku;[B)V

    iput-object p1, v6, Luy;->d:Ljava/lang/Object;

    return-object v6
.end method
