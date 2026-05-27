.class public final Lmnl;
.super Lmnh;


# static fields
.field public static final a:Lmnl;

.field private static final b:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmnl;

    invoke-direct {v0}, Lmnl;-><init>()V

    sput-object v0, Lmnl;->a:Lmnl;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lmnl;->b:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lmnl;->b:Ljava/util/UUID;

    sget-object v1, Lmnn;->a:Lmno;

    const-string v2, ""

    invoke-direct {p0, v2, v0, v1}, Lmnh;-><init>(Ljava/lang/String;Ljava/util/UUID;Lmno;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Lmno;)Lmnt;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t create child trace for no trace!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
