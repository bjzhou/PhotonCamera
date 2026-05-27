.class public final enum Ljxr;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ljxr;

.field public static final enum b:Ljxr;

.field public static final enum c:Ljxr;

.field private static final synthetic e:[Ljxr;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljxr;

    const v1, 0x7f000789

    const-string v2, "SURFACE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljxr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljxr;->a:Ljxr;

    new-instance v1, Ljxr;

    const-string v2, "YUV_FLEXIBLE"

    const/4 v4, 0x1

    const v5, 0x7f420888

    invoke-direct {v1, v2, v4, v5}, Ljxr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ljxr;->b:Ljxr;

    new-instance v2, Ljxr;

    const-string v5, "YUV_SEMI_PLANAR"

    const/4 v6, 0x2

    const/16 v7, 0x15

    invoke-direct {v2, v5, v6, v7}, Ljxr;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ljxr;->c:Ljxr;

    const/4 v5, 0x3

    new-array v5, v5, [Ljxr;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    aput-object v2, v5, v6

    sput-object v5, Ljxr;->e:[Ljxr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljxr;->d:I

    return-void
.end method

.method public static values()[Ljxr;
    .locals 1

    sget-object v0, Ljxr;->e:[Ljxr;

    invoke-virtual {v0}, [Ljxr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxr;

    return-object v0
.end method
