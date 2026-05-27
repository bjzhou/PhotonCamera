.class final Lmzc;
.super Lmyk;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final a:Lmzc;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmzc;

    invoke-direct {v0}, Lmzc;-><init>()V

    sput-object v0, Lmzc;->a:Lmzc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyk;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lmzc;->a:Lmzc;

    return-object v0
.end method


# virtual methods
.method public final a()Lmyk;
    .locals 1

    sget-object v0, Lmyj;->a:Lmyj;

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lmyj;->a:Lmyj;

    invoke-virtual {v0, p1}, Lmyk;->f(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    sget-object v0, Lmyj;->a:Lmyj;

    invoke-virtual {v0, p1, p2}, Lmyk;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1
.end method

.method public final bridge synthetic f(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lmyj;->a:Lmyj;

    invoke-virtual {v0, p1}, Lmyk;->c(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1
.end method

.method public final bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    sget-object v0, Lmyj;->a:Lmyj;

    invoke-virtual {v0, p1, p2}, Lmyk;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural().reverse()"

    return-object v0
.end method
