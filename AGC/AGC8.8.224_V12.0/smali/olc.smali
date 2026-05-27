.class public final enum Lolc;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lolc;

.field public static final enum b:Lolc;

.field public static final enum c:Lolc;

.field private static final synthetic d:[Lolc;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lolc;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lolc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lolc;->a:Lolc;

    new-instance v1, Lolc;

    const-string v3, "UNDECIDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lolc;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lolc;->b:Lolc;

    new-instance v3, Lolc;

    const-string v5, "RESUMED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lolc;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lolc;->c:Lolc;

    const/4 v5, 0x3

    new-array v5, v5, [Lolc;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lolc;->d:[Lolc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lolc;
    .locals 1

    sget-object v0, Lolc;->d:[Lolc;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lolc;

    return-object v0
.end method
