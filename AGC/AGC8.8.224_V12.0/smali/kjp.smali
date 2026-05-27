.class final Lkjp;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.camera.frameserver.internal.requestprocessorv2.CameraPipeRequestProcessor$setRepeating$1"
    c = "CameraPipeRequestProcessor.kt"
    d = "invokeSuspend"
    e = {
        0x40
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lkjr;

.field final synthetic c:Lkib;


# direct methods
.method public constructor <init>(Lkjr;Lkib;Loku;)V
    .locals 0

    iput-object p1, p0, Lkjp;->b:Lkjr;

    iput-object p2, p0, Lkjp;->c:Lkib;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Loln;-><init>(ILoku;)V

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

    check-cast p1, Lkjp;

    invoke-virtual {p1, p2}, Lkjp;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lkjp;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lkjp;->b:Lkjr;

    iget-object p1, p1, Lkjr;->a:Lrb;

    const/4 v1, 0x1

    iput v1, p0, Lkjp;->a:I

    invoke-interface {p1, p0}, Lrb;->b(Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    check-cast p1, Ljava/lang/AutoCloseable;

    iget-object v0, p0, Lkjp;->b:Lkjr;

    iget-object v1, p0, Lkjp;->c:Lkib;

    :try_start_0
    move-object v2, p1

    check-cast v2, Lvv;

    invoke-static {v1}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkjr;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lljr;->ah(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lvv;->b:Loom;

    invoke-virtual {v1}, Loom;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v2, Lvv;->a:Lvz;

    invoke-interface {v1, v0}, Lvz;->c(Lrx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lone;->f(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call startRepeating on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after close."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lone;->f(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 2

    new-instance p1, Lkjp;

    iget-object v0, p0, Lkjp;->b:Lkjr;

    iget-object v1, p0, Lkjp;->c:Lkib;

    invoke-direct {p1, v0, v1, p2}, Lkjp;-><init>(Lkjr;Lkib;Loku;)V

    return-object p1
.end method
