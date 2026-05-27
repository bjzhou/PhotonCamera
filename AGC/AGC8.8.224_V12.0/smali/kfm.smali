.class public final enum Lkfm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lkfm;

.field public static final enum b:Lkfm;

.field public static final enum c:Lkfm;

.field public static final enum d:Lkfm;

.field public static final enum e:Lkfm;

.field private static final synthetic f:[Lkfm;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lkfm;

    const-string v1, "IMAGE_READER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkfm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkfm;->a:Lkfm;

    new-instance v1, Lkfm;

    const-string v3, "SURFACE_TEXTURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkfm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkfm;->b:Lkfm;

    new-instance v3, Lkfm;

    const-string v5, "SURFACE_VIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkfm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkfm;->c:Lkfm;

    new-instance v5, Lkfm;

    const-string v7, "SURFACE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lkfm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lkfm;->d:Lkfm;

    new-instance v7, Lkfm;

    const-string v9, "SURFACE_DEFERRED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lkfm;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lkfm;->e:Lkfm;

    const/4 v9, 0x5

    new-array v9, v9, [Lkfm;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lkfm;->f:[Lkfm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lkfm;
    .locals 1

    sget-object v0, Lkfm;->f:[Lkfm;

    invoke-virtual {v0}, [Lkfm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkfm;

    return-object v0
.end method
