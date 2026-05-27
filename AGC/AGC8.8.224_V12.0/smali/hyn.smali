.class public final enum Lhyn;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhyn;

.field public static final enum b:Lhyn;

.field public static final enum c:Lhyn;

.field public static final enum d:Lhyn;

.field public static final enum e:Lhyn;

.field private static final synthetic f:[Lhyn;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lhyn;

    const-string v1, "TABLET_LAYOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhyn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhyn;->a:Lhyn;

    new-instance v1, Lhyn;

    const-string v3, "PHONE_LAYOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhyn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhyn;->b:Lhyn;

    new-instance v3, Lhyn;

    const-string v5, "SIMPLIFIED_LAYOUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhyn;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhyn;->c:Lhyn;

    new-instance v5, Lhyn;

    const-string v7, "JARVIS_LAYOUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lhyn;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lhyn;->d:Lhyn;

    new-instance v7, Lhyn;

    const-string v9, "STARFISH_LAYOUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lhyn;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lhyn;->e:Lhyn;

    const/4 v9, 0x5

    new-array v9, v9, [Lhyn;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lhyn;->f:[Lhyn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhyn;
    .locals 1

    sget-object v0, Lhyn;->f:[Lhyn;

    invoke-virtual {v0}, [Lhyn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhyn;

    return-object v0
.end method
