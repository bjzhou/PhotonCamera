.class public final enum Lkgx;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lkgx;

.field public static final enum b:Lkgx;

.field public static final enum c:Lkgx;

.field public static final enum d:Lkgx;

.field public static final enum e:Lkgx;

.field private static final synthetic g:[Lkgx;


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lkgx;

    const-string v1, "SESSION_BLOCKLIST"

    const/4 v2, 0x0

    const-string v3, "Session blocklist"

    invoke-direct {v0, v1, v2, v3}, Lkgx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkgx;->a:Lkgx;

    new-instance v1, Lkgx;

    const-string v3, "DEVICE_BLOCKLIST"

    const/4 v4, 0x1

    const-string v5, "Device blocklist"

    invoke-direct {v1, v3, v4, v5}, Lkgx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lkgx;->b:Lkgx;

    new-instance v3, Lkgx;

    const-string v5, "API_BLOCKLIST"

    const/4 v6, 0x2

    const-string v7, "Api blocklist"

    invoke-direct {v3, v5, v6, v7}, Lkgx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lkgx;->c:Lkgx;

    new-instance v5, Lkgx;

    const-string v7, "AAA_BLOCKLIST"

    const/4 v8, 0x3

    const-string v9, "Please use 3A methods exposed via frameserver for this operation"

    invoke-direct {v5, v7, v8, v9}, Lkgx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lkgx;->d:Lkgx;

    new-instance v7, Lkgx;

    const-string v9, "UNSUPPORTED_KEY"

    const/4 v10, 0x4

    const-string v11, "Unsupported key"

    invoke-direct {v7, v9, v10, v11}, Lkgx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lkgx;->e:Lkgx;

    const/4 v9, 0x5

    new-array v9, v9, [Lkgx;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lkgx;->g:[Lkgx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkgx;->f:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lkgx;
    .locals 1

    sget-object v0, Lkgx;->g:[Lkgx;

    invoke-virtual {v0}, [Lkgx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkgx;

    return-object v0
.end method
