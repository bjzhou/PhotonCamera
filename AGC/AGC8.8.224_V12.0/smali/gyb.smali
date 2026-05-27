.class public final enum Lgyb;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgyb;

.field public static final enum b:Lgyb;

.field private static final synthetic c:[Lgyb;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgyb;

    const-string v1, "MEDIA_STORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgyb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgyb;->a:Lgyb;

    new-instance v1, Lgyb;

    const-string v3, "MARS_STORE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lgyb;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgyb;->b:Lgyb;

    const/4 v3, 0x2

    new-array v3, v3, [Lgyb;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lgyb;->c:[Lgyb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lgyb;
    .locals 1

    sget-object v0, Lgyb;->c:[Lgyb;

    invoke-virtual {v0}, [Lgyb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgyb;

    return-object v0
.end method
