.class final Ljzj;
.super Lolm;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.camera.camerapipe.CameraPipeCameraHardwareManager$allCameraIds$1"
    c = "CameraPipeCameraHardwareManager.kt"
    d = "invokeSuspend"
    e = {
        0x6e,
        0x77
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:I

.field final synthetic e:Ljzk;

.field private synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljzk;Loku;)V
    .locals 0

    iput-object p1, p0, Ljzj;->e:Ljzk;

    invoke-direct {p0, p2}, Lolm;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Looe;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Ljzj;

    invoke-virtual {p1, p2}, Ljzj;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Ljzj;->d:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Ljzj;->c:Ljava/lang/Object;

    iget-object v2, p0, Ljzj;->b:Ljava/lang/Object;

    iget-object v3, p0, Ljzj;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    iget-object v4, p0, Ljzj;->f:Ljava/lang/Object;

    check-cast v4, Looe;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object p1, v2

    move-object v2, v4

    move-object v4, p0

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Ljzj;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Ljzj;->f:Ljava/lang/Object;

    check-cast v2, Looe;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Ljzj;->f:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Looe;

    iget-object p1, p0, Ljzj;->e:Ljzk;

    invoke-virtual {p1}, Ljzk;->f()Ljava/util/List;

    move-result-object v1

    iput-object v2, p0, Ljzj;->f:Ljava/lang/Object;

    iput-object v1, p0, Ljzj;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Ljzj;->d:I

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lojk;->a:Lojk;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {v2, p1, p0}, Looe;->b(Ljava/util/Iterator;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object v3, Lolc;->a:Lolc;

    if-eq p1, v3, :cond_1

    sget-object p1, Lojk;->a:Lojk;

    :cond_1
    :goto_0
    if-eq p1, v0, :cond_3

    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v1}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkll;

    iget-object v4, v4, Lkll;->a:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p0

    goto :goto_4

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrc;

    iget-object v5, v5, Lrc;->a:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lkll;->b(Ljava/lang/String;)Lkll;

    move-result-object v5

    iput-object v2, v4, Ljzj;->f:Ljava/lang/Object;

    iput-object v3, v4, Ljzj;->a:Ljava/lang/Object;

    iput-object p1, v4, Ljzj;->b:Ljava/lang/Object;

    iput-object v1, v4, Ljzj;->c:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v4, Ljzj;->d:I

    invoke-virtual {v2, v5, v4}, Looe;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    return-object v0

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkll;

    iget-object v5, v4, Ljzj;->e:Ljzk;

    iget-object v5, v5, Ljzk;->a:Lbkb;

    invoke-static {v1}, Lkba;->j(Lkll;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lbkb;->u(Ljava/lang/String;)Lrd;

    move-result-object v1

    invoke-interface {v1}, Lrd;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_3

    :cond_6
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 2

    new-instance v0, Ljzj;

    iget-object v1, p0, Ljzj;->e:Ljzk;

    invoke-direct {v0, v1, p2}, Ljzj;-><init>(Ljzk;Loku;)V

    iput-object p1, v0, Ljzj;->f:Ljava/lang/Object;

    return-object v0
.end method
