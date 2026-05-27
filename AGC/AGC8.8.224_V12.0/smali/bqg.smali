.class public final enum Lbqg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbqg;

.field public static final enum b:Lbqg;

.field private static final synthetic c:[Lbqg;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbqg;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbqg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbqg;->a:Lbqg;

    new-instance v1, Lbqg;

    const-string v3, "DISPLAY_P3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbqg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbqg;->b:Lbqg;

    const/4 v3, 0x2

    new-array v3, v3, [Lbqg;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lbqg;->c:[Lbqg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lbqg;
    .locals 1

    sget-object v0, Lbqg;->c:[Lbqg;

    invoke-virtual {v0}, [Lbqg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbqg;

    return-object v0
.end method
