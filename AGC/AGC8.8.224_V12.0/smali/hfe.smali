.class public final enum Lhfe;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhfe;

.field public static final enum b:Lhfe;

.field public static final enum c:Lhfe;

.field private static final synthetic d:[Lhfe;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lhfe;

    const-string v1, "POPUP_SHARE_HANDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhfe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhfe;->a:Lhfe;

    new-instance v1, Lhfe;

    const-string v3, "LAUNCH_SHARE_PANEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhfe;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhfe;->b:Lhfe;

    new-instance v3, Lhfe;

    const-string v5, "TAP_SHARE_TARGET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhfe;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhfe;->c:Lhfe;

    const/4 v5, 0x3

    new-array v5, v5, [Lhfe;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lhfe;->d:[Lhfe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhfe;
    .locals 1

    sget-object v0, Lhfe;->d:[Lhfe;

    invoke-virtual {v0}, [Lhfe;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhfe;

    return-object v0
.end method
