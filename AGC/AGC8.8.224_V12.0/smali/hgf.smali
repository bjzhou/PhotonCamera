.class public final Lhgf;
.super Ljava/lang/Object;

# interfaces
.implements Lhgd;


# static fields
.field public static final a:Lnak;

.field public static final b:Ljava/util/regex/Pattern;


# instance fields
.field public final c:Lgzi;

.field public d:Lmwa;

.field private final e:Lgzm;

.field private final f:Ligo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/socialshare/setting/SocialShareSettingsImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhgf;->a:Lnak;

    const-string v0, "^([A-Za-z][A-Za-z\\d_]*(\\.|\\$))+[A-Za-z][A-Za-z\\d_]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lhgf;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ligo;Lgzi;Lgzm;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhgf;->f:Ligo;

    iput-object p2, p0, Lhgf;->c:Lgzi;

    iput-object p3, p0, Lhgf;->e:Lgzm;

    return-void
.end method

.method public static k(Ljava/lang/String;Lmwn;)Lmwn;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2c

    invoke-static {v0}, Lmrd;->b(C)Lmrd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmrd;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static m(Lmwn;)Ljava/util/Map;
    .locals 9

    const/16 v0, 0x2f

    invoke-static {v0}, Lmrd;->b(C)Lmrd;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lmwn;->cz()Lnac;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lmrd;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lfjd;->o:Lfjd;

    invoke-static {v3, v2}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    sget-object v4, Lfjd;->p:Lfjd;

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, ""

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v5, v7

    goto :goto_2

    :cond_1
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final a()Lmwa;
    .locals 1

    iget-object v0, p0, Lhgf;->d:Lmwa;

    return-object v0
.end method

.method public final b()Ljava/util/Comparator;
    .locals 1

    new-instance v0, Lhge;

    invoke-direct {v0, p0}, Lhge;-><init>(Lhgf;)V

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0, p1}, Lhgf;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lgdp;

    const/16 v2, 0xb

    invoke-direct {v1, p0, p1, v2}, Lgdp;-><init>(Lhgf;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lhfj;->n:Lhfj;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v2, Lgdp;

    const/16 v3, 0xa

    invoke-direct {v2, v1, v0, v3}, Lgdp;-><init>(Ljava/util/Map;Ljava/util/function/Function;I)V

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Ldrk;->g:Ldrk;

    invoke-static {v0}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lhgf;->f:Ligo;

    iget-object v1, v0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Ligo;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    return-object v1
.end method

.method public final e(Ljava/util/List;)V
    .locals 3

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lhfj;->j:Lhfj;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lhgf;->d:Lmwa;

    invoke-virtual {v0}, Lmwa;->s()Lmwn;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lgfd;

    const/16 v2, 0xa

    invoke-direct {v1, p1, v2}, Lgfd;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lhfj;->k:Lhfj;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lhgf;->c:Lgzi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lgfd;

    const/16 v2, 0xb

    invoke-direct {v1, v0, v2}, Lgfd;-><init>(Lgzi;I)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lgxg;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lgxg;-><init>(Lhgf;I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final f()V
    .locals 7

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v0

    sget-object v1, Loha;->a:Loha;

    invoke-virtual {v1}, Loha;->b()Lohb;

    move-result-object v1

    invoke-interface {v1}, Lohb;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lhfz;->d:Lmwn;

    invoke-static {v1, v2}, Lhgf;->k(Ljava/lang/String;Lmwn;)Lmwn;

    move-result-object v1

    sget-object v2, Loha;->a:Loha;

    invoke-virtual {v2}, Loha;->b()Lohb;

    move-result-object v2

    invoke-interface {v2}, Lohb;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lhfz;->e:Lmwn;

    invoke-static {v2, v3}, Lhgf;->k(Ljava/lang/String;Lmwn;)Lmwn;

    move-result-object v2

    invoke-static {v1}, Lhgf;->m(Lmwn;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Lhgf;->m(Lmwn;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v3

    sget-object v5, Lmza;->a:Lmza;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v5

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lhfy;->c()Lnoc;

    move-result-object v6

    invoke-virtual {v6, v4}, Lnoc;->f(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lnoc;->g(Lmwn;)V

    invoke-virtual {v6, v5}, Lnoc;->h(Lmwn;)V

    invoke-virtual {v6}, Lnoc;->e()Lhfy;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lhfy;->c()Lnoc;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lnoc;->f(Ljava/lang/String;)V

    sget-object v5, Lmza;->a:Lmza;

    invoke-virtual {v4, v5}, Lnoc;->g(Lmwn;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v2

    invoke-virtual {v4, v2}, Lnoc;->h(Lmwn;)V

    invoke-virtual {v4}, Lnoc;->e()Lhfy;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lmvw;->b()Lmwa;

    move-result-object v0

    iput-object v0, p0, Lhgf;->d:Lmwa;

    return-void
.end method

.method public final g(Ljava/util/List;)V
    .locals 2

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    invoke-virtual {p0, v0}, Lhgf;->e(Ljava/util/List;)V

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-virtual {p0}, Lhgf;->b()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object p1

    const-wide/16 v0, 0x3

    invoke-interface {p1, v0, v1}, Lj$/util/stream/Stream;->limit(J)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lhfj;->i:Lhfj;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lgxg;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lgxg;-><init>(Lhgf;I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final h(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lhgf;->e:Lgzm;

    sget-object v1, Lgzd;->P:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhgf;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lhgf;->g(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lhgf;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lhfj;->m:Lhfj;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lhgf;->d:Lmwa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lgfd;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lgfd;-><init>(Lmwa;I)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lhgf;->d:Lmwa;

    invoke-virtual {v0}, Lmwa;->s()Lmwn;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lfjd;->q:Lfjd;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lhgf;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lhfj;->l:Lhfj;

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lgfd;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lgfd;-><init>(Ljava/util/Set;I)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lhgf;->e:Lgzm;

    sget-object v1, Lgzd;->T:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhgf;->e:Lgzm;

    sget-object v1, Lgzd;->U:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
