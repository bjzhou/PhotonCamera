.class final enum Lgxq;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgxq;

.field public static final enum b:Lgxq;

.field public static final enum c:Lgxq;

.field private static final synthetic d:[Lgxq;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lgxq;

    const-string v1, "PUBLISH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgxq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgxq;->a:Lgxq;

    new-instance v1, Lgxq;

    const-string v3, "ABANDON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lgxq;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgxq;->b:Lgxq;

    new-instance v3, Lgxq;

    const-string v5, "PENDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lgxq;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgxq;->c:Lgxq;

    const/4 v5, 0x3

    new-array v5, v5, [Lgxq;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lgxq;->d:[Lgxq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lgxq;
    .locals 1

    sget-object v0, Lgxq;->d:[Lgxq;

    invoke-virtual {v0}, [Lgxq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgxq;

    return-object v0
.end method
