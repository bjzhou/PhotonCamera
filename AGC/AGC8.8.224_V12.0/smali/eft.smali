.class public final Left;
.super Ljava/lang/Object;

# interfaces
.implements Legc;


# static fields
.field public static final a:Lnak;


# instance fields
.field private final b:Ljvs;

.field private final c:Ljvs;

.field private final d:Ldhi;

.field private final e:Ljwb;

.field private final f:Ljvs;

.field private final g:Lj$/util/Optional;

.field private final h:Lj$/util/Optional;

.field private final i:Lj$/util/Optional;

.field private final j:Lj$/util/Optional;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Z

.field private final o:Ljava/util/Map;

.field private final p:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/hdrplus/fusion/FusionDetectorImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Left;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljvs;Ljvs;Ljava/util/Map;Ljwb;Ljvs;Lfmr;Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lefs;

    invoke-direct {v0}, Lefs;-><init>()V

    iput-object v0, p0, Left;->o:Ljava/util/Map;

    new-instance v0, Lefs;

    invoke-direct {v0}, Lefs;-><init>()V

    iput-object v0, p0, Left;->p:Ljava/util/Map;

    iput-object p1, p0, Left;->b:Ljvs;

    iput-object p2, p0, Left;->c:Ljvs;

    iput-object p7, p0, Left;->d:Ldhi;

    sget-object p1, Lgml;->f:Lgml;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkfj;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkfj;->c()Lkll;

    move-result-object p1

    iget-object p1, p1, Lkll;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Left;->k:Ljava/lang/String;

    sget-object p1, Lgml;->d:Lgml;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkfj;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkfj;->c()Lkll;

    move-result-object p1

    iget-object p1, p1, Lkll;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    iput-object p1, p0, Left;->l:Ljava/lang/String;

    sget-object p1, Lgml;->g:Lgml;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkfj;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkfj;->c()Lkll;

    move-result-object p1

    iget-object p2, p1, Lkll;->a:Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_2
    iput-object p2, p0, Left;->m:Ljava/lang/String;

    iput-object p4, p0, Left;->e:Ljwb;

    iput-object p5, p0, Left;->f:Ljvs;

    iget-object p1, p6, Lfmr;->a:Lj$/util/Optional;

    iput-object p1, p0, Left;->g:Lj$/util/Optional;

    iget-object p1, p6, Lfmr;->b:Lj$/util/Optional;

    iput-object p1, p0, Left;->h:Lj$/util/Optional;

    iget-object p1, p6, Lfmr;->c:Lj$/util/Optional;

    iput-object p1, p0, Left;->i:Lj$/util/Optional;

    iget-object p1, p6, Lfmr;->d:Lj$/util/Optional;

    iput-object p1, p0, Left;->j:Lj$/util/Optional;

    sget-object p1, Ldhg;->A:Ldhj;

    invoke-interface {p7, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Left;->n:Z

    invoke-interface {p7}, Ldhi;->f()V

    return-void
.end method

.method private static final b(Lkou;)V
    .locals 0

    invoke-interface {p0}, Lkou;->b()J

    invoke-interface {p0}, Lkou;->e()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lkou;Z)Lega;
    .locals 9

    invoke-interface {p1}, Lkou;->e()Ljava/lang/String;

    invoke-static {p1}, Left;->b(Lkou;)V

    iget-object v0, p0, Left;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Left;->c:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Left;->b(Lkou;)V

    sget-object p1, Lefz;->a:Lefz;

    sget-object p2, Legb;->a:Legb;

    invoke-static {p1, p2}, Lega;->a(Lefz;Legb;)Lega;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object v0, Lefz;->c:Lefz;

    iget-object v1, p0, Left;->c:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    sget-object v1, Legb;->a:Legb;

    goto/16 :goto_2

    :cond_2
    iget-boolean v1, p0, Left;->n:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Left;->l:Ljava/lang/String;

    aput-object v5, v1, v4

    iget-object v5, p0, Left;->k:Ljava/lang/String;

    aput-object v5, v1, v3

    iget-object v5, p0, Left;->m:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-interface {p1}, Lkou;->g()Ljava/util/Map;

    move-result-object v5

    check-cast v5, Lmwa;

    invoke-virtual {v5}, Lmwa;->s()Lmwn;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v1, v6

    const-string v5, "FusionZoom: expecting physical results from [(%s | %s), %s], got %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Left;->b(Lkou;)V

    :cond_3
    iget-object v1, p0, Left;->p:Ljava/util/Map;

    invoke-interface {p1}, Lkou;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Legb;

    if-nez v1, :cond_9

    iget-object v1, p0, Left;->e:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v5, p0, Left;->d:Ldhi;

    sget-object v6, Ldhg;->u:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v5

    const v6, 0x401ccccd    # 2.45f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Left;->d:Ldhi;

    sget-object v7, Ldhg;->v:Ldhj;

    invoke-interface {v6, v7}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v6

    const v7, 0x409ccccd    # 4.9f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_8

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_8

    invoke-interface {p1}, Lkou;->g()Ljava/util/Map;

    move-result-object v1

    iget-object v5, p0, Left;->l:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1}, Lkou;->g()Ljava/util/Map;

    move-result-object v1

    iget-object v5, p0, Left;->k:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Legb;->b:Legb;

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v1, p0, Left;->f:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Legb;->d:Legb;

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Lkou;->g()Ljava/util/Map;

    move-result-object v1

    iget-object v5, p0, Left;->m:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Left;->b(Lkou;)V

    sget-object v1, Legb;->e:Legb;

    goto :goto_2

    :cond_7
    sget-object v1, Legb;->b:Legb;

    goto :goto_2

    :cond_8
    sget-object v1, Legb;->b:Legb;

    :cond_9
    :goto_2
    sget-object v5, Legb;->b:Legb;

    if-eq v1, v5, :cond_b

    sget-object v5, Legb;->a:Legb;

    if-ne v1, v5, :cond_a

    goto :goto_3

    :cond_a
    goto/16 :goto_4

    :cond_b
    :goto_3
    sget-object v0, Lefz;->b:Lefz;

    iget-object v1, p0, Left;->b:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {p1}, Left;->b(Lkou;)V

    sget-object v1, Legb;->a:Legb;

    goto/16 :goto_4

    :cond_c
    iget-object v1, p0, Left;->d:Ldhi;

    sget-object v5, Ldhg;->l:Ldhj;

    invoke-interface {v1, v5}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Legb;->e:Legb;

    goto/16 :goto_4

    :cond_d
    iget-object v1, p0, Left;->d:Ldhi;

    sget-object v5, Ldhg;->e:Ldhj;

    invoke-interface {v1, v5}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Left;->j:Lj$/util/Optional;

    new-instance v5, Lcwd;

    const/16 v6, 0xa

    invoke-direct {v5, p1, v6}, Lcwd;-><init>(Lkou;I)V

    invoke-virtual {v1, v5}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    sget-object v5, Lcpy;->u:Lcpy;

    invoke-virtual {v1, v5}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p1}, Left;->b(Lkou;)V

    sget-object v1, Legb;->e:Legb;

    goto/16 :goto_4

    :cond_e
    iget-object v1, p0, Left;->g:Lj$/util/Optional;

    new-instance v5, Lcwd;

    const/16 v6, 0x8

    invoke-direct {v5, p1, v6}, Lcwd;-><init>(Lkou;I)V

    invoke-virtual {v1, v5}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {p1}, Left;->b(Lkou;)V

    sget-object v1, Legb;->e:Legb;

    goto/16 :goto_4

    :cond_f
    iget-object v1, p0, Left;->h:Lj$/util/Optional;

    new-instance v7, Lcwd;

    const/16 v8, 0x9

    invoke-direct {v7, p1, v8}, Lcwd;-><init>(Lkou;I)V

    invoke-virtual {v1, v7}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v7, "not present"

    if-nez v1, :cond_10

    iget-object v1, p0, Left;->h:Lj$/util/Optional;

    sget-object v2, Lcpy;->s:Lcpy;

    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v7}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Left;->b(Lkou;)V

    sget-object v1, Legb;->b:Legb;

    goto :goto_4

    :cond_10
    if-ne v1, v2, :cond_11

    invoke-static {p1}, Left;->b(Lkou;)V

    sget-object v1, Legb;->c:Legb;

    goto :goto_4

    :cond_11
    iget-object v1, p0, Left;->i:Lj$/util/Optional;

    new-instance v2, Lcwd;

    invoke-direct {v2, p1, v6}, Lcwd;-><init>(Lkou;I)V

    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Left;->i:Lj$/util/Optional;

    sget-object v2, Lcpy;->t:Lcpy;

    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v7}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Left;->b(Lkou;)V

    iget-object v1, p0, Left;->o:Ljava/util/Map;

    invoke-interface {p1}, Lkou;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Legb;

    if-nez v1, :cond_13

    sget-object v1, Legb;->c:Legb;

    goto :goto_4

    :cond_12
    invoke-static {p1}, Left;->b(Lkou;)V

    sget-object v1, Legb;->e:Legb;

    :cond_13
    :goto_4
    if-eqz p2, :cond_14

    sget-object p2, Lefz;->c:Lefz;

    if-ne v0, p2, :cond_14

    iget-object p2, p0, Left;->p:Ljava/util/Map;

    invoke-interface {p1}, Lkou;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    sget-object p1, Legb;->e:Legb;

    if-eq v1, p1, :cond_18

    sget-object p1, Legb;->d:Legb;

    if-ne v1, p1, :cond_15

    sget-object p1, Lefz;->c:Lefz;

    if-eq v0, p1, :cond_18

    :cond_15
    iget-boolean p1, p0, Left;->n:Z

    if-eqz p1, :cond_17

    sget-object p1, Lefz;->c:Lefz;

    if-ne v0, p1, :cond_17

    iget-object p1, p0, Left;->e:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p2, p0, Left;->d:Ldhi;

    sget-object v0, Ldhg;->u:Ldhj;

    invoke-interface {p2, v0}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_17

    sget-object p1, Legb;->e:Legb;

    if-ne v1, p1, :cond_16

    goto :goto_5

    :cond_16
    const/4 v3, 0x0

    :goto_5
    iget-object p1, p0, Left;->e:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to engage Fusion Zoom at %sx zoom"

    invoke-static {v3, p2, p1}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_17
    sget-object p1, Lefz;->a:Lefz;

    invoke-static {p1, v1}, Lega;->a(Lefz;Legb;)Lega;

    move-result-object p1

    return-object p1

    :cond_18
    invoke-static {v0, v1}, Lega;->a(Lefz;Legb;)Lega;

    move-result-object p1

    return-object p1
.end method
