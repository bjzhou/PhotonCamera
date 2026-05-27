.class public final enum Lefz;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lefz;

.field public static final enum b:Lefz;

.field public static final enum c:Lefz;

.field private static final synthetic d:[Lefz;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lefz;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lefz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lefz;->a:Lefz;

    new-instance v1, Lefz;

    const-string v3, "DEBLUR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lefz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lefz;->b:Lefz;

    new-instance v3, Lefz;

    const-string v5, "ZOOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lefz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lefz;->c:Lefz;

    const/4 v5, 0x3

    new-array v5, v5, [Lefz;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lefz;->d:[Lefz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lefz;
    .locals 1

    sget-object v0, Lefz;->d:[Lefz;

    invoke-virtual {v0}, [Lefz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lefz;

    return-object v0
.end method
