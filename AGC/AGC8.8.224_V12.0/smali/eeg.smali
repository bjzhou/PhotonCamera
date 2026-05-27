.class public final enum Leeg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Leeg;

.field public static final enum b:Leeg;

.field public static final enum c:Leeg;

.field private static final synthetic d:[Leeg;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Leeg;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leeg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leeg;->a:Leeg;

    new-instance v1, Leeg;

    const-string v3, "OFF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leeg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leeg;->b:Leeg;

    new-instance v3, Leeg;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leeg;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leeg;->c:Leeg;

    const/4 v5, 0x3

    new-array v5, v5, [Leeg;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Leeg;->d:[Leeg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Leeg;
    .locals 1

    sget-object v0, Leeg;->d:[Leeg;

    invoke-virtual {v0}, [Leeg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leeg;

    return-object v0
.end method
