.class public final enum Lhft;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhft;

.field public static final enum b:Lhft;

.field public static final enum c:Lhft;

.field public static final enum d:Lhft;

.field private static final synthetic e:[Lhft;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lhft;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhft;->a:Lhft;

    new-instance v1, Lhft;

    const-string v3, "THUMBNAIL_INVISIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhft;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhft;->b:Lhft;

    new-instance v3, Lhft;

    const-string v5, "SLOW_CAPTURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhft;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhft;->c:Lhft;

    new-instance v5, Lhft;

    const-string v7, "MARS_ENABLED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lhft;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lhft;->d:Lhft;

    const/4 v7, 0x4

    new-array v7, v7, [Lhft;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lhft;->e:[Lhft;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhft;
    .locals 1

    sget-object v0, Lhft;->e:[Lhft;

    invoke-virtual {v0}, [Lhft;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhft;

    return-object v0
.end method
