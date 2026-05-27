.class public final Lapw;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.room.RoomDatabaseKt$withTransaction$transactionBlock$1"
    c = "RoomDatabaseExt.kt"
    d = "invokeSuspend"
    e = {
        0x3e
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lapt;

.field final synthetic c:Lomk;

.field private synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lapt;Lomk;Loku;)V
    .locals 0

    iput-object p1, p0, Lapw;->b:Lapt;

    iput-object p2, p0, Lapw;->c:Lomk;

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

    check-cast p1, Lapw;

    invoke-virtual {p1, p2}, Lapw;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lapw;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lapw;->d:Ljava/lang/Object;

    check-cast v0, Laqb;

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lapw;->d:Ljava/lang/Object;

    check-cast p1, Lopu;

    invoke-interface {p1}, Lopu;->da()Lola;

    move-result-object p1

    sget-object v1, Laqb;->c:Lokv;

    invoke-interface {p1, v1}, Lola;->get(Loky;)Lokx;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Laqb;

    iget-object v1, p1, Laqb;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :try_start_0
    iget-object v1, p0, Lapw;->b:Lapt;

    invoke-virtual {v1}, Lapt;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lapw;->c:Lomk;

    iput-object p1, p0, Lapw;->d:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p0, Lapw;->a:I

    invoke-interface {v1, p0}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_0
    :try_start_2
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v1, p1

    move-object p1, v0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lapw;->b:Lapt;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v0, p0, Lapw;->b:Lapt;

    invoke-virtual {v0}, Lapt;->o()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {p1}, Laqb;->a()V

    return-object v1

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_2
    :try_start_5
    iget-object v1, p0, Lapw;->b:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    invoke-virtual {p1}, Laqb;->a()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 3

    new-instance v0, Lapw;

    iget-object v1, p0, Lapw;->b:Lapt;

    iget-object v2, p0, Lapw;->c:Lomk;

    invoke-direct {v0, v1, v2, p2}, Lapw;-><init>(Lapt;Lomk;Loku;)V

    iput-object p1, v0, Lapw;->d:Ljava/lang/Object;

    return-object v0
.end method
