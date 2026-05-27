.class final Lvq;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.core.WakeLock$startTimeout$1"
    c = "WakeLock.kt"
    d = "invokeSuspend"
    e = {
        0x76
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lvr;


# direct methods
.method public constructor <init>(Lvr;Loku;)V
    .locals 0

    iput-object p1, p0, Lvq;->b:Lvr;

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

    check-cast p1, Lvq;

    invoke-virtual {p1, p2}, Lvq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lvq;->a:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iput v2, p0, Lvq;->a:I

    new-instance p1, Lopa;

    invoke-static {p0}, Lolp;->g(Loku;)Loku;

    move-result-object v1

    invoke-direct {p1, v1, v2}, Lopa;-><init>(Loku;I)V

    invoke-virtual {p1}, Lopa;->x()V

    iget-object v1, p1, Lopa;->b:Lola;

    invoke-static {v1}, Lopx;->i(Lola;)Loqa;

    move-result-object v1

    invoke-interface {v1, p1}, Loqa;->a(Looz;)V

    invoke-virtual {p1}, Lopa;->m()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lolc;->a:Lolc;

    if-eq p1, v1, :cond_0

    sget-object p1, Lojk;->a:Lojk;

    :cond_0
    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    iget-object p1, p0, Lvq;->b:Lvr;

    iget-object v0, p1, Lvr;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lvr;->e:Z

    if-nez v1, :cond_3

    iget v1, p1, Lvr;->c:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p1, Lvr;->d:Lora;

    iput-boolean v2, p1, Lvr;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p1, p0, Lvq;->b:Lvr;

    iget-object p1, p1, Lvr;->a:Lolz;

    invoke-interface {p1}, Lolz;->a()Ljava/lang/Object;

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_3
    :goto_1
    :try_start_1
    sget-object p1, Lojk;->a:Lojk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 1

    new-instance p1, Lvq;

    iget-object v0, p0, Lvq;->b:Lvr;

    invoke-direct {p1, v0, p2}, Lvq;-><init>(Lvr;Loku;)V

    return-object p1
.end method
