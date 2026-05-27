.class final Losa;
.super Ljava/lang/Object;

# interfaces
.implements Lokx;
.implements Loky;


# static fields
.field public static final a:Losa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Losa;

    invoke-direct {v0}, Losa;-><init>()V

    sput-object v0, Losa;->a:Losa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lljr;->G(Lokx;Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Loky;)Lokx;
    .locals 0

    invoke-static {p0, p1}, Lljr;->H(Lokx;Loky;)Lokx;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Loky;
    .locals 0

    return-object p0
.end method

.method public final minusKey(Loky;)Lola;
    .locals 0

    invoke-static {p0, p1}, Lljr;->I(Lokx;Loky;)Lola;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lola;)Lola;
    .locals 0

    invoke-static {p0, p1}, Lljr;->J(Lokx;Lola;)Lola;

    move-result-object p1

    return-object p1
.end method
