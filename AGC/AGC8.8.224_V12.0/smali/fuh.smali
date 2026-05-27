.class public final enum Lfuh;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lfuh;

.field public static final enum b:Lfuh;

.field public static final enum c:Lfuh;

.field public static final enum d:Lfuh;

.field public static final enum e:Lfuh;

.field private static final synthetic f:[Lfuh;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lfuh;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfuh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfuh;->a:Lfuh;

    new-instance v1, Lfuh;

    const-string v3, "CLOUDY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfuh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfuh;->b:Lfuh;

    new-instance v3, Lfuh;

    const-string v5, "SUNNY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lfuh;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfuh;->c:Lfuh;

    new-instance v5, Lfuh;

    const-string v7, "INCANDESCENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lfuh;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfuh;->d:Lfuh;

    new-instance v7, Lfuh;

    const-string v9, "FLUORESCENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lfuh;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lfuh;->e:Lfuh;

    const/4 v9, 0x5

    new-array v9, v9, [Lfuh;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lfuh;->f:[Lfuh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lfuh;
    .locals 1

    sget-object v0, Lfuh;->f:[Lfuh;

    invoke-virtual {v0}, [Lfuh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfuh;

    return-object v0
.end method
