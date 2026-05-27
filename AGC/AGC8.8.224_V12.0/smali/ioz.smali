.class public final enum Lioz;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lioz;

.field public static final enum b:Lioz;

.field public static final enum c:Lioz;

.field private static final synthetic d:[Lioz;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lioz;

    const-string v1, "ZOOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lioz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lioz;->a:Lioz;

    new-instance v1, Lioz;

    const-string v3, "SWITCH_CAMERA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lioz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lioz;->b:Lioz;

    new-instance v3, Lioz;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lioz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lioz;->c:Lioz;

    const/4 v5, 0x3

    new-array v5, v5, [Lioz;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lioz;->d:[Lioz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lioz;
    .locals 1

    sget-object v0, Lioz;->d:[Lioz;

    invoke-virtual {v0}, [Lioz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lioz;

    return-object v0
.end method
