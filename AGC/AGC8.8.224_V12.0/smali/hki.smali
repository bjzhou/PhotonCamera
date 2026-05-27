.class public final enum Lhki;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhki;

.field public static final enum b:Lhki;

.field public static final enum c:Lhki;

.field private static final synthetic d:[Lhki;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lhki;

    const-string v1, "CAPTURE_SESSION_STARTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhki;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhki;->a:Lhki;

    new-instance v1, Lhki;

    const-string v3, "CAPTURE_SESSION_STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhki;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhki;->b:Lhki;

    new-instance v3, Lhki;

    const-string v5, "CAPTURE_SESSION_CLOSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhki;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhki;->c:Lhki;

    const/4 v5, 0x3

    new-array v5, v5, [Lhki;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lhki;->d:[Lhki;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhki;
    .locals 1

    sget-object v0, Lhki;->d:[Lhki;

    invoke-virtual {v0}, [Lhki;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhki;

    return-object v0
.end method
