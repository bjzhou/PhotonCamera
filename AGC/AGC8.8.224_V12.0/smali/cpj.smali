.class public final enum Lcpj;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcpj;

.field public static final enum b:Lcpj;

.field public static final enum c:Lcpj;

.field public static final enum d:Lcpj;

.field public static final enum e:Lcpj;

.field private static final synthetic f:[Lcpj;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcpj;

    const-string v1, "NO_RECORDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcpj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcpj;->a:Lcpj;

    new-instance v1, Lcpj;

    const-string v3, "CLOSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcpj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcpj;->b:Lcpj;

    new-instance v3, Lcpj;

    const-string v5, "STARTING_RECORDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcpj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcpj;->c:Lcpj;

    new-instance v5, Lcpj;

    const-string v7, "STOPPING_RECORDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcpj;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcpj;->d:Lcpj;

    new-instance v7, Lcpj;

    const-string v9, "RECORDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcpj;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcpj;->e:Lcpj;

    const/4 v9, 0x5

    new-array v9, v9, [Lcpj;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcpj;->f:[Lcpj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcpj;
    .locals 1

    sget-object v0, Lcpj;->f:[Lcpj;

    invoke-virtual {v0}, [Lcpj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcpj;

    return-object v0
.end method
