.class public final Lpoi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpnv;


# instance fields
.field private final a:Lpnv;


# direct methods
.method public constructor <init>(Lpnv;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lpoi;->a:Lpnv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Lpnx;)Lpnu;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpoi;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final b()Lpnx;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpnv;->b()Lpnx;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpoi;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c(I)Lpnx;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lpnv;->c(I)Lpnx;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpoi;->a:Lpnv;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;)Lpnx;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpoi;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lpnv;->d(Ljava/lang/String;)Lpnx;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpog;)Lpnx;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lpnv;->e(Lpog;)Lpnx;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpoi;->a:Lpnv;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final f(Lpnx;)Lkog;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lkog;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lpoi;->a(Lpnx;)Lpnu;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lkog;-><init>(Lpnu;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()Ljava/util/List;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpnv;->g()Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpoi;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final h(Lpog;)Ljava/util/List;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lpnv;->h(Lpog;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpoi;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final i()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpnv;->i()Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpoi;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Lpog;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpoi;->a:Lpnv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Lpnv;->j(Lpog;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpoi;->a:Lpnv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lpnv;->k()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
