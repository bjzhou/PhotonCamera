.class public final enum Liep;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Liep;

.field public static final enum b:Liep;

.field public static final enum c:Liep;

.field public static final enum d:Liep;

.field public static final enum e:Liep;

.field private static final synthetic f:[Liep;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Liep;

    const-string v1, "STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Liep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liep;->a:Liep;

    new-instance v1, Liep;

    const-string v3, "STATE_IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liep;-><init>(Ljava/lang/String;I)V

    sput-object v1, Liep;->b:Liep;

    new-instance v3, Liep;

    const-string v5, "STATE_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Liep;-><init>(Ljava/lang/String;I)V

    sput-object v3, Liep;->c:Liep;

    new-instance v5, Liep;

    const-string v7, "STATE_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Liep;-><init>(Ljava/lang/String;I)V

    sput-object v5, Liep;->d:Liep;

    new-instance v7, Liep;

    const-string v9, "STATE_UPDATED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Liep;-><init>(Ljava/lang/String;I)V

    sput-object v7, Liep;->e:Liep;

    const/4 v9, 0x5

    new-array v9, v9, [Liep;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Liep;->f:[Liep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Liep;
    .locals 1

    sget-object v0, Liep;->f:[Liep;

    invoke-virtual {v0}, [Liep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liep;

    return-object v0
.end method
