.class public final enum Lbps;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbps;

.field public static final enum b:Lbps;

.field public static final c:Lbps;

.field private static final synthetic d:[Lbps;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbps;

    const-string v1, "PREFER_ARGB_8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbps;->a:Lbps;

    new-instance v1, Lbps;

    const-string v3, "PREFER_RGB_565"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbps;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbps;->b:Lbps;

    const/4 v3, 0x2

    new-array v3, v3, [Lbps;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lbps;->d:[Lbps;

    sput-object v0, Lbps;->c:Lbps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lbps;
    .locals 1

    sget-object v0, Lbps;->d:[Lbps;

    invoke-virtual {v0}, [Lbps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbps;

    return-object v0
.end method
