.class public final enum Lelm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lelm;

.field public static final enum b:Lelm;

.field public static final enum c:Lelm;

.field public static final enum d:Lelm;

.field public static final enum e:Lelm;

.field private static final synthetic f:[Lelm;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lelm;

    const-string v1, "NOTIFICATION_CHIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lelm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lelm;->a:Lelm;

    new-instance v1, Lelm;

    const-string v3, "TOOLTIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lelm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lelm;->b:Lelm;

    new-instance v3, Lelm;

    const-string v5, "SMARTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lelm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lelm;->c:Lelm;

    new-instance v5, Lelm;

    const-string v7, "FIRST_RUN_TOAST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lelm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lelm;->d:Lelm;

    new-instance v7, Lelm;

    const-string v9, "SECOND_RUN_TOAST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lelm;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lelm;->e:Lelm;

    const/4 v9, 0x5

    new-array v9, v9, [Lelm;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lelm;->f:[Lelm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lelm;
    .locals 1

    sget-object v0, Lelm;->f:[Lelm;

    invoke-virtual {v0}, [Lelm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lelm;

    return-object v0
.end method
