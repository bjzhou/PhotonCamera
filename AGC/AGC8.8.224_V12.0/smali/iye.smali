.class public final enum Liye;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Liye;

.field public static final enum b:Liye;

.field public static final enum c:Liye;

.field private static final synthetic e:[Liye;


# instance fields
.field public final d:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Liye;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Liye;-><init>(Ljava/lang/String;ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Liye;->a:Liye;

    new-instance v1, Liye;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const-string v4, "COLOR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Liye;-><init>(Ljava/lang/String;ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v1, Liye;->b:Liye;

    new-instance v2, Liye;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    const-string v6, "ALPHA"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Liye;-><init>(Ljava/lang/String;ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v2, Liye;->c:Liye;

    const/4 v4, 0x3

    new-array v4, v4, [Liye;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Liye;->e:[Liye;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Liye;->d:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public static values()[Liye;
    .locals 1

    sget-object v0, Liye;->e:[Liye;

    invoke-virtual {v0}, [Liye;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liye;

    return-object v0
.end method
