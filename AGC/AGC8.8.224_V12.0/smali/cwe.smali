.class public final Lcwe;
.super Ljwi;

# interfaces
.implements Lcwg;


# instance fields
.field private final a:Ldhi;


# direct methods
.method public constructor <init>(Ldhi;Lgzv;)V
    .locals 0

    invoke-direct {p0, p2}, Ljwi;-><init>(Ljwb;)V

    iput-object p1, p0, Lcwe;->a:Ldhi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lgyr;

    invoke-virtual {p1}, Lgyr;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljws;->b(Ljava/lang/String;)Ljws;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic bm()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcwe;->a:Ldhi;

    sget-object v1, Ldgu;->b:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lcwd;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcwd;-><init>(Lcwe;I)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    invoke-super {p0}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljws;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljws;

    return-object v0
.end method

.method protected final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljws;

    invoke-virtual {p1}, Ljws;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgyr;->a(Ljava/lang/String;)Lgyr;

    move-result-object p1

    return-object p1
.end method

.method final synthetic d(Ljava/lang/Integer;)Ljws;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    sget-object p1, Ljws;->c:Ljws;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    sget-object p1, Ljws;->d:Ljws;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Ljws;->a:Ljws;

    return-object p1

    :cond_2
    invoke-super {p0}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljws;

    return-object p1
.end method
