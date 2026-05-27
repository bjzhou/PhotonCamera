.class public final Legk;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Legk;->a:Loiw;

    iput-object p2, p0, Legk;->b:Loiw;

    iput-object p3, p0, Legk;->c:Loiw;

    iput-object p4, p0, Legk;->d:Loiw;

    iput-object p5, p0, Legk;->e:Loiw;

    iput-object p6, p0, Legk;->f:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Legk;
    .locals 8

    new-instance v7, Legk;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Legk;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v7
.end method


# virtual methods
.method public final b()Ljvs;
    .locals 10

    iget-object v0, p0, Legk;->a:Loiw;

    check-cast v0, Legl;

    invoke-virtual {v0}, Legl;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Legk;->b:Loiw;

    iget-object v2, p0, Legk;->c:Loiw;

    iget-object v3, p0, Legk;->d:Loiw;

    iget-object v4, p0, Legk;->e:Loiw;

    iget-object v5, p0, Legk;->f:Loiw;

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v7, Ldhg;->u:Ldhj;

    invoke-interface {v0, v7}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    const v7, 0x401ccccd    # 2.45f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v7}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldhi;

    sget-object v7, Ldhg;->v:Ldhj;

    invoke-interface {v5, v7}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v5

    const v7, 0x409ccccd    # 4.9f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    sget-object v9, Lgml;->c:Lgml;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkll;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lkll;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    sget-object v9, Lgml;->e:Lgml;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    sget-object v8, Lgml;->e:Lgml;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkll;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lkll;->a:Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljvs;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljvs;

    aput-object v1, v3, v6

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljvs;

    new-instance v2, Legj;

    invoke-direct {v2, v0, v5}, Legj;-><init>(FF)V

    invoke-static {v1, v2}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    new-instance v1, Lcdu;

    const/16 v2, 0xf

    invoke-direct {v1, v7, v2}, Lcdu;-><init>(Ljava/util/List;I)V

    invoke-static {v0, v1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v3}, Ljvw;->d([Ljvs;)Ljvs;

    move-result-object v0

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Legk;->b()Ljvs;

    move-result-object v0

    return-object v0
.end method
