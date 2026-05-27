.class public final enum Ldrl;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldrl;

.field public static final enum b:Ldrl;

.field private static final synthetic c:[Ldrl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ldrl;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldrl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldrl;->a:Ldrl;

    new-instance v1, Ldrl;

    const-string v3, "EXCLUDE_FREQUENT_FACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldrl;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldrl;->b:Ldrl;

    const/4 v3, 0x2

    new-array v3, v3, [Ldrl;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ldrl;->c:[Ldrl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldrl;
    .locals 1

    sget-object v0, Ldrl;->c:[Ldrl;

    invoke-virtual {v0}, [Ldrl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldrl;

    return-object v0
.end method
