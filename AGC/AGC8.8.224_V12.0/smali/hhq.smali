.class public final enum Lhhq;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhhq;

.field public static final enum b:Lhhq;

.field public static final enum c:Lhhq;

.field public static final enum d:Lhhq;

.field public static final enum e:Lhhq;

.field public static final enum f:Lhhq;

.field private static final synthetic g:[Lhhq;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lhhq;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhhq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhhq;->a:Lhhq;

    new-instance v1, Lhhq;

    const-string v3, "PREINITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhhq;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhhq;->b:Lhhq;

    new-instance v3, Lhhq;

    const-string v5, "INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhhq;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhhq;->c:Lhhq;

    new-instance v5, Lhhq;

    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lhhq;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lhhq;->d:Lhhq;

    new-instance v7, Lhhq;

    const-string v9, "PROCESSING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lhhq;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lhhq;->e:Lhhq;

    new-instance v9, Lhhq;

    const-string v11, "STOPPED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lhhq;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lhhq;->f:Lhhq;

    const/4 v11, 0x6

    new-array v11, v11, [Lhhq;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lhhq;->g:[Lhhq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhhq;
    .locals 1

    sget-object v0, Lhhq;->g:[Lhhq;

    invoke-virtual {v0}, [Lhhq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhhq;

    return-object v0
.end method
