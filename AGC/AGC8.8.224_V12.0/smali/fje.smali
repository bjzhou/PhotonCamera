.class public final synthetic Lfje;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljvs;

.field public final synthetic b:Ljvs;

.field public final synthetic c:Ljvs;

.field public final synthetic d:Lgcg;

.field public final synthetic e:Ljwb;

.field public final synthetic f:Ljvs;

.field public final synthetic g:Ljvs;

.field public final synthetic h:Ljvs;


# direct methods
.method public synthetic constructor <init>(Ljvs;Ljvs;Ljvs;Lgcg;Ljwb;Ljvs;Ljvs;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfje;->a:Ljvs;

    iput-object p2, p0, Lfje;->b:Ljvs;

    iput-object p3, p0, Lfje;->c:Ljvs;

    iput-object p4, p0, Lfje;->d:Lgcg;

    iput-object p5, p0, Lfje;->e:Ljwb;

    iput-object p6, p0, Lfje;->f:Ljvs;

    iput-object p7, p0, Lfje;->g:Ljvs;

    iput-object p8, p0, Lfje;->h:Ljvs;

    return-void
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lfje;->a:Ljvs;

    iget-object v1, p0, Lfje;->b:Ljvs;

    iget-object v2, p0, Lfje;->c:Ljvs;

    iget-object v3, p0, Lfje;->d:Lgcg;

    iget-object v4, p0, Lfje;->e:Ljwb;

    iget-object v5, p0, Lfje;->f:Ljvs;

    iget-object v6, p0, Lfje;->g:Ljvs;

    iget-object v7, p0, Lfje;->h:Ljvs;

    check-cast p1, Lgeh;

    invoke-interface {p1}, Lgeh;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Ljvk;

    iget-object p1, v0, Ljvk;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast v1, Ljvk;

    iget-object p1, v1, Ljvk;->d:Ljava/lang/Object;

    :goto_0
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lgcf;->a:Lgcf;

    invoke-virtual {v3}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgcf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v6}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v7}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method
