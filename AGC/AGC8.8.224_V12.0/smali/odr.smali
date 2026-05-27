.class public final enum Lodr;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lodr;

.field public static final enum b:Lodr;

.field public static final enum c:Lodr;

.field public static final enum d:Lodr;

.field public static final enum e:Lodr;

.field public static final enum f:Lodr;

.field private static final synthetic h:[Lodr;


# instance fields
.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lodr;

    const-string v1, "BAD_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lodr;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lodr;->a:Lodr;

    new-instance v1, Lodr;

    const-string v3, "CANCELED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lodr;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lodr;->b:Lodr;

    new-instance v3, Lodr;

    const-string v5, "REQUEST_BODY_READ_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lodr;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lodr;->c:Lodr;

    new-instance v5, Lodr;

    const-string v7, "CONNECTION_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lodr;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lodr;->d:Lodr;

    new-instance v7, Lodr;

    const-string v9, "SERVER_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lodr;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lodr;->e:Lodr;

    new-instance v9, Lodr;

    const-string v11, "UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Lodr;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lodr;->f:Lodr;

    const/4 v11, 0x6

    new-array v11, v11, [Lodr;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lodr;->h:[Lodr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lodr;->g:Z

    return-void
.end method

.method public static values()[Lodr;
    .locals 1

    sget-object v0, Lodr;->h:[Lodr;

    invoke-virtual {v0}, [Lodr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lodr;

    return-object v0
.end method
