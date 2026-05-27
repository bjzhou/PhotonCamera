.class public final enum Lccu;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lccu;

.field public static final enum b:Lccu;

.field public static final enum c:Lccu;

.field public static final enum d:Lccu;

.field public static final enum e:Lccu;

.field public static final enum f:Lccu;

.field public static final enum g:Lccu;

.field private static final synthetic h:[Lccu;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lccu;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccu;->a:Lccu;

    new-instance v1, Lccu;

    const-string v3, "AE_LOCKED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccu;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccu;->b:Lccu;

    new-instance v3, Lccu;

    const-string v5, "AF_LOCKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccu;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccu;->c:Lccu;

    new-instance v5, Lccu;

    const-string v7, "AE_AF_LOCKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccu;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccu;->d:Lccu;

    new-instance v7, Lccu;

    const-string v9, "AE_UNLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccu;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccu;->e:Lccu;

    new-instance v9, Lccu;

    const-string v11, "AF_UNLOCKED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lccu;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lccu;->f:Lccu;

    new-instance v11, Lccu;

    const-string v13, "UNLOCKED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lccu;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lccu;->g:Lccu;

    const/4 v13, 0x7

    new-array v13, v13, [Lccu;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lccu;->h:[Lccu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lccu;
    .locals 1

    sget-object v0, Lccu;->h:[Lccu;

    invoke-virtual {v0}, [Lccu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccu;

    return-object v0
.end method
