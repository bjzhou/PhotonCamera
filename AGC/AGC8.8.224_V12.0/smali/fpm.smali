.class public final enum Lfpm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lfpm;

.field public static final enum b:Lfpm;

.field private static final synthetic c:[Lfpm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lfpm;

    const-string v1, "TOPSHOT_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfpm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfpm;->a:Lfpm;

    new-instance v1, Lfpm;

    const-string v3, "LONGSHOT_MODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfpm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfpm;->b:Lfpm;

    const/4 v3, 0x2

    new-array v3, v3, [Lfpm;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lfpm;->c:[Lfpm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lfpm;
    .locals 1

    sget-object v0, Lfpm;->c:[Lfpm;

    invoke-virtual {v0}, [Lfpm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfpm;

    return-object v0
.end method
