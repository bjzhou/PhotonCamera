.class public final enum Legb;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Legb;

.field public static final enum b:Legb;

.field public static final enum c:Legb;

.field public static final enum d:Legb;

.field public static final enum e:Legb;

.field private static final synthetic f:[Legb;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Legb;

    const-string v1, "NOT_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Legb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Legb;->a:Legb;

    new-instance v1, Legb;

    const-string v3, "NOT_REQUESTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Legb;-><init>(Ljava/lang/String;I)V

    sput-object v1, Legb;->b:Legb;

    new-instance v3, Legb;

    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Legb;-><init>(Ljava/lang/String;I)V

    sput-object v3, Legb;->c:Legb;

    new-instance v5, Legb;

    const-string v7, "THROTTLED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Legb;-><init>(Ljava/lang/String;I)V

    sput-object v5, Legb;->d:Legb;

    new-instance v7, Legb;

    const-string v9, "ENABLED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Legb;-><init>(Ljava/lang/String;I)V

    sput-object v7, Legb;->e:Legb;

    const/4 v9, 0x5

    new-array v9, v9, [Legb;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Legb;->f:[Legb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Legb;
    .locals 1

    sget-object v0, Legb;->f:[Legb;

    invoke-virtual {v0}, [Legb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Legb;

    return-object v0
.end method
