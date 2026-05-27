.class public final Lolb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lola;


# static fields
.field public static final a:Lolb;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lolb;

    invoke-direct {v0}, Lolb;-><init>()V

    sput-object v0, Lolb;->a:Lolb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lolb;->a:Lolb;

    return-object v0
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final get(Loky;)Lokx;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final minusKey(Loky;)Lola;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final plus(Lola;)Lola;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
