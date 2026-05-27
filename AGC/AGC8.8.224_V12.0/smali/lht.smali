.class public final Llht;
.super Llhv;


# static fields
.field public static final a:Llht;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llht;

    invoke-direct {v0}, Llht;-><init>()V

    sput-object v0, Llht;->a:Llht;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llhv;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lnxy;
    .locals 4

    check-cast p2, Landroid/os/health/HealthStats;

    sget-object v0, Loyg;->e:Loyg;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Llhw;->a:Llhw;

    const v2, 0x9c41

    invoke-static {p2, v2}, Lljr;->e(Landroid/os/health/HealthStats;I)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Llhv;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnwn;->T(Ljava/lang/Iterable;)V

    sget-object v1, Llhs;->a:Llhs;

    if-eqz p2, :cond_0

    const v2, 0x9c42

    invoke-virtual {p2, v2}, Landroid/os/health/HealthStats;->hasMeasurements(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Landroid/os/health/HealthStats;->getMeasurements(I)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Llhv;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnwn;->U(Ljava/lang/Iterable;)V

    if-eqz p1, :cond_2

    invoke-static {p1}, Lljr;->f(Ljava/lang/String;)Loyf;

    move-result-object p1

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Loyg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Loyg;->d:Loyf;

    iget p1, p2, Loyg;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Loyg;->a:I

    :cond_2
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Loyg;

    invoke-static {p1}, Lljr;->k(Loyg;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    :cond_3
    return-object p1
.end method

.method public final synthetic b(Lnxy;Lnxy;)Lnxy;
    .locals 4

    check-cast p1, Loyg;

    check-cast p2, Loyg;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    sget-object v0, Loyg;->e:Loyg;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Llhw;->a:Llhw;

    iget-object v2, p1, Loyg;->b:Lnxa;

    iget-object v3, p2, Loyg;->b:Lnxa;

    invoke-virtual {v1, v2, v3}, Llhv;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnwn;->T(Ljava/lang/Iterable;)V

    sget-object v1, Llhs;->a:Llhs;

    iget-object v2, p1, Loyg;->c:Lnxa;

    iget-object p2, p2, Loyg;->c:Lnxa;

    invoke-virtual {v1, v2, p2}, Llhv;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnwn;->U(Ljava/lang/Iterable;)V

    iget-object p1, p1, Loyg;->d:Loyf;

    if-nez p1, :cond_0

    sget-object p1, Loyf;->d:Loyf;

    :cond_0
    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Loyg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Loyg;->d:Loyf;

    iget p1, p2, Loyg;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Loyg;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Loyg;

    invoke-static {p1}, Lljr;->k(Loyg;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method

.method public final bridge synthetic c(Lnxy;)Ljava/lang/String;
    .locals 0

    check-cast p1, Loyg;

    iget-object p1, p1, Loyg;->d:Loyf;

    if-nez p1, :cond_0

    sget-object p1, Loyf;->d:Loyf;

    :cond_0
    iget-object p1, p1, Loyf;->c:Ljava/lang/String;

    return-object p1
.end method
