.class final enum Lnoa;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lnoa;

.field public static final enum b:Lnoa;

.field public static final enum c:Lnoa;

.field private static final synthetic d:[Lnoa;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnoa;

    const-string v1, "NOT_RUN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnoa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnoa;->a:Lnoa;

    new-instance v1, Lnoa;

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnoa;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnoa;->b:Lnoa;

    new-instance v3, Lnoa;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnoa;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnoa;->c:Lnoa;

    const/4 v5, 0x3

    new-array v5, v5, [Lnoa;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnoa;->d:[Lnoa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lnoa;
    .locals 1

    sget-object v0, Lnoa;->d:[Lnoa;

    invoke-virtual {v0}, [Lnoa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnoa;

    return-object v0
.end method
