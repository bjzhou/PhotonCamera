.class public final Lmym;
.super Lmyn;

# interfaces
.implements Ljava/io/Serializable;
.implements Lmqs;


# static fields
.field public static final a:Lmym;

.field private static final serialVersionUID:J


# instance fields
.field public final b:Lmuc;

.field public final c:Lmuc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmym;

    sget-object v1, Lmua;->a:Lmua;

    sget-object v2, Lmty;->a:Lmty;

    invoke-direct {v0, v1, v2}, Lmym;-><init>(Lmuc;Lmuc;)V

    sput-object v0, Lmym;->a:Lmym;

    return-void
.end method

.method private constructor <init>(Lmuc;Lmuc;)V
    .locals 1

    invoke-direct {p0}, Lmyn;-><init>()V

    iput-object p1, p0, Lmym;->b:Lmuc;

    iput-object p2, p0, Lmym;->c:Lmuc;

    invoke-virtual {p1, p2}, Lmuc;->a(Lmuc;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lmty;->a:Lmty;

    if-eq p1, v0, :cond_0

    sget-object v0, Lmua;->a:Lmua;

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lmym;->p(Lmuc;Lmuc;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid range: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/Comparable;)Lmym;
    .locals 1

    invoke-static {p0}, Lmuc;->k(Ljava/lang/Comparable;)Lmuc;

    move-result-object p0

    sget-object v0, Lmty;->a:Lmty;

    invoke-static {p0, v0}, Lmym;->g(Lmuc;Lmuc;)Lmym;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Comparable;)Lmym;
    .locals 1

    sget-object v0, Lmua;->a:Lmua;

    invoke-static {p0}, Lmuc;->j(Ljava/lang/Comparable;)Lmuc;

    move-result-object p0

    invoke-static {v0, p0}, Lmym;->g(Lmuc;Lmuc;)Lmym;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;
    .locals 0

    invoke-static {p0}, Lmuc;->k(Ljava/lang/Comparable;)Lmuc;

    move-result-object p0

    invoke-static {p1}, Lmuc;->j(Ljava/lang/Comparable;)Lmuc;

    move-result-object p1

    invoke-static {p0, p1}, Lmym;->g(Lmuc;Lmuc;)Lmym;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;
    .locals 0

    invoke-static {p0}, Lmuc;->k(Ljava/lang/Comparable;)Lmuc;

    move-result-object p0

    invoke-static {p1}, Lmuc;->k(Ljava/lang/Comparable;)Lmuc;

    move-result-object p1

    invoke-static {p0, p1}, Lmym;->g(Lmuc;Lmuc;)Lmym;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lmuc;Lmuc;)Lmym;
    .locals 1

    new-instance v0, Lmym;

    invoke-direct {v0, p0, p1}, Lmym;-><init>(Lmuc;Lmuc;)V

    return-object v0
.end method

.method private static p(Lmuc;Lmuc;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lmuc;->e(Ljava/lang/StringBuilder;)V

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lmuc;->f(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lmym;->k(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lmym;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lmym;

    iget-object v0, p0, Lmym;->b:Lmuc;

    iget-object v2, p1, Lmym;->b:Lmuc;

    invoke-virtual {v0, v2}, Lmuc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmym;->c:Lmuc;

    iget-object p1, p1, Lmym;->c:Lmuc;

    invoke-virtual {v0, p1}, Lmuc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final h(Lmym;)Lmym;
    .locals 4

    iget-object v0, p0, Lmym;->b:Lmuc;

    iget-object v1, p1, Lmym;->b:Lmuc;

    invoke-virtual {v0, v1}, Lmuc;->a(Lmuc;)I

    move-result v0

    iget-object v1, p0, Lmym;->c:Lmuc;

    iget-object v2, p1, Lmym;->c:Lmuc;

    invoke-virtual {v1, v2}, Lmuc;->a(Lmuc;)I

    move-result v1

    if-ltz v0, :cond_1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    if-gtz v0, :cond_3

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    iget-object v0, p0, Lmym;->b:Lmuc;

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lmym;->b:Lmuc;

    :goto_2
    if-gtz v1, :cond_5

    iget-object v1, p0, Lmym;->c:Lmuc;

    goto :goto_3

    :cond_5
    iget-object v1, p1, Lmym;->c:Lmuc;

    :goto_3
    invoke-virtual {v0, v1}, Lmuc;->a(Lmuc;)I

    move-result v2

    if-gtz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    const-string v3, "intersection is undefined for disconnected ranges %s and %s"

    invoke-static {v2, v3, p0, p1}, Lmoz;->m(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lmym;->g(Lmuc;Lmuc;)Lmym;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lmym;->b:Lmuc;

    invoke-virtual {v0}, Lmuc;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lmym;->c:Lmuc;

    invoke-virtual {v1}, Lmuc;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/Comparable;
    .locals 1

    iget-object v0, p0, Lmym;->b:Lmuc;

    invoke-virtual {v0}, Lmuc;->b()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/Comparable;
    .locals 1

    iget-object v0, p0, Lmym;->c:Lmuc;

    invoke-virtual {v0}, Lmuc;->b()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/Comparable;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmym;->b:Lmuc;

    invoke-virtual {v0, p1}, Lmuc;->g(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmym;->c:Lmuc;

    invoke-virtual {v0, p1}, Lmuc;->g(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lmym;->b:Lmuc;

    sget-object v1, Lmua;->a:Lmua;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lmym;->c:Lmuc;

    sget-object v1, Lmty;->a:Lmty;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n(Lmym;)Z
    .locals 2

    iget-object v0, p0, Lmym;->b:Lmuc;

    iget-object v1, p1, Lmym;->c:Lmuc;

    invoke-virtual {v0, v1}, Lmuc;->a(Lmuc;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p1, p1, Lmym;->b:Lmuc;

    iget-object v0, p0, Lmym;->c:Lmuc;

    invoke-virtual {p1, v0}, Lmuc;->a(Lmuc;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lmym;->b:Lmuc;

    iget-object v1, p0, Lmym;->c:Lmuc;

    invoke-virtual {v0, v1}, Lmuc;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lmym;->a:Lmym;

    invoke-virtual {p0, v0}, Lmym;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmym;->b:Lmuc;

    iget-object v1, p0, Lmym;->c:Lmuc;

    invoke-static {v0, v1}, Lmym;->p(Lmuc;Lmuc;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
