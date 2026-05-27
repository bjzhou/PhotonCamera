.class public final enum Lhko;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhko;

.field public static final enum b:Lhko;

.field private static final synthetic c:[Lhko;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lhko;

    const-string v1, "VIEWFINDER_SURFACE_CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhko;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhko;->a:Lhko;

    new-instance v1, Lhko;

    const-string v3, "VIEWFINDER_SURFACE_READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhko;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhko;->b:Lhko;

    const/4 v3, 0x2

    new-array v3, v3, [Lhko;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lhko;->c:[Lhko;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhko;
    .locals 1

    sget-object v0, Lhko;->c:[Lhko;

    invoke-virtual {v0}, [Lhko;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhko;

    return-object v0
.end method
