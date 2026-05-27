.class public final enum Lklv;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lklv;

.field public static final enum b:Lklv;

.field public static final enum c:Lklv;

.field private static final synthetic d:[Lklv;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lklv;

    const-string v1, "FRONT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lklv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lklv;->a:Lklv;

    new-instance v1, Lklv;

    const-string v3, "BACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lklv;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lklv;->b:Lklv;

    new-instance v3, Lklv;

    const-string v5, "EXTERNAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lklv;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lklv;->c:Lklv;

    const/4 v5, 0x3

    new-array v5, v5, [Lklv;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lklv;->d:[Lklv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lklv;
    .locals 1

    sget-object v0, Lklv;->d:[Lklv;

    invoke-virtual {v0}, [Lklv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lklv;

    return-object v0
.end method
