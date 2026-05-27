.class public final Loxd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Loxb;

.field private static final b:Lomo;

.field private static final c:Lomo;

.field private static final d:Lomo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loxb;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Loxd;->a:Loxb;

    sget-object v0, Lokz;->g:Lokz;

    sput-object v0, Loxd;->b:Lomo;

    sget-object v0, Lokz;->h:Lokz;

    sput-object v0, Loxd;->c:Lomo;

    sget-object v0, Lokz;->i:Lokz;

    sput-object v0, Loxd;->d:Lomo;

    return-void
.end method

.method public static final a(Lola;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Loxd;->b:Lomo;

    invoke-interface {p0, v0, v1}, Lola;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final b(Lola;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    invoke-static {p0}, Loxd;->a(Lola;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Loxd;->a:Loxb;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Loxi;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Loxi;-><init>(Lola;I)V

    sget-object p1, Loxd;->d:Lomo;

    invoke-interface {p0, v0, p1}, Lola;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    check-cast p1, Lort;

    invoke-interface {p1, p0}, Lort;->cS(Lola;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final c(Lola;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Loxd;->a:Loxb;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Loxi;

    if-eqz v0, :cond_2

    check-cast p1, Loxi;

    iget-object p0, p1, Loxi;->c:[Lort;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_1

    :goto_0
    add-int/lit8 v0, p0, -0x1

    iget-object v1, p1, Loxi;->c:[Lort;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Loxi;->b:[Ljava/lang/Object;

    aget-object p0, v2, p0

    invoke-interface {v1, p0}, Lort;->cT(Ljava/lang/Object;)V

    if-ltz v0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    sget-object v0, Loxd;->c:Lomo;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lola;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lort;

    invoke-interface {p0, p1}, Lort;->cT(Ljava/lang/Object;)V

    return-void
.end method
