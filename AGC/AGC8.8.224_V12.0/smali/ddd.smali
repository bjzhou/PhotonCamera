.class public final enum Lddd;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lddd;

.field public static final enum b:Lddd;

.field public static final enum c:Lddd;

.field public static final enum d:Lddd;

.field public static final enum e:Lddd;

.field public static final enum f:Lddd;

.field private static final synthetic g:[Lddd;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lddd;

    const-string v1, "ENUMERATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lddd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lddd;->a:Lddd;

    new-instance v1, Lddd;

    const-string v3, "UNOPENABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lddd;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lddd;->b:Lddd;

    new-instance v3, Lddd;

    const-string v5, "FRONT_UNOPENABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lddd;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lddd;->c:Lddd;

    new-instance v5, Lddd;

    const-string v7, "BACK_UNOPENABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lddd;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lddd;->d:Lddd;

    new-instance v7, Lddd;

    const-string v9, "FRONT_ENUMERATION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lddd;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lddd;->e:Lddd;

    new-instance v9, Lddd;

    const-string v11, "BACK_ENUMERATION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lddd;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lddd;->f:Lddd;

    const/4 v11, 0x6

    new-array v11, v11, [Lddd;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lddd;->g:[Lddd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lddd;
    .locals 1

    sget-object v0, Lddd;->g:[Lddd;

    invoke-virtual {v0}, [Lddd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lddd;

    return-object v0
.end method
