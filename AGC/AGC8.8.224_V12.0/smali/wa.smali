.class final Lwa;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.graph.GraphProcessorImpl$abort$2"
    c = "GraphProcessor.kt"
    d = "invokeSuspend"
    e = {}
.end annotation


# instance fields
.field final synthetic a:Lonk;

.field final synthetic b:Lonk;

.field final synthetic c:Lwf;

.field private synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lonk;Lonk;Lwf;Loku;)V
    .locals 0

    iput-object p1, p0, Lwa;->a:Lonk;

    iput-object p2, p0, Lwa;->b:Lonk;

    iput-object p3, p0, Lwa;->c:Lwf;

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

    check-cast p1, Lwa;

    invoke-virtual {p1, p2}, Lwa;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lolc;->a:Lolc;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lwa;->d:Ljava/lang/Object;

    check-cast p1, Lopu;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#abort"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lwa;->a:Lonk;

    iget-object v0, p1, Lonk;->a:Ljava/lang/Object;

    if-eqz v0, :cond_5

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lonk;->a:Ljava/lang/Object;

    check-cast p1, Lwg;

    iget-object v1, p1, Lwg;->a:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p1, Lwg;->a:Ljava/util/List;

    invoke-static {v2}, Lljr;->aj(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lwg;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrm;

    invoke-interface {v2}, Lrm;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-interface {v2}, Lrm;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltj;

    invoke-interface {v2}, Lrm;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    invoke-interface {v2}, Lrm;->b()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrw;

    iget-object v10, v6, Ltj;->a:Ljava/lang/Object;

    check-cast v10, Lrx;

    invoke-interface {v9, v10}, Lrw;->a(Lrx;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lrm;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_0

    invoke-interface {v2}, Lrm;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltj;

    iget-object v7, v6, Ltj;->a:Ljava/lang/Object;

    check-cast v7, Lrx;

    iget-object v7, v7, Lrx;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3

    iget-object v9, v6, Ltj;->a:Ljava/lang/Object;

    check-cast v9, Lrx;

    iget-object v9, v9, Lrx;->c:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrw;

    iget-object v10, v6, Ltj;->a:Ljava/lang/Object;

    check-cast v10, Lrx;

    invoke-interface {v9, v10}, Lrw;->a(Lrx;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lwg;->b:Ltd;

    iget-object p1, p1, Ltd;->a:Ltl;

    invoke-interface {p1}, Ltl;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_5
    :goto_4
    iget-object p1, p0, Lwa;->b:Lonk;

    iget-object p1, p1, Lonk;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lwa;->c:Lwf;

    invoke-virtual {v1, v0}, Lwf;->e(Ljava/util/List;)V

    goto :goto_5

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 4

    new-instance v0, Lwa;

    iget-object v1, p0, Lwa;->a:Lonk;

    iget-object v2, p0, Lwa;->b:Lonk;

    iget-object v3, p0, Lwa;->c:Lwf;

    invoke-direct {v0, v1, v2, v3, p2}, Lwa;-><init>(Lonk;Lonk;Lwf;Loku;)V

    iput-object p1, v0, Lwa;->d:Ljava/lang/Object;

    return-object v0
.end method
