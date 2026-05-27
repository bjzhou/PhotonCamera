.class public final enum Lcgg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcgg;

.field public static final enum b:Lcgg;

.field public static final enum c:Lcgg;

.field private static final synthetic d:[Lcgg;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcgg;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcgg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcgg;->a:Lcgg;

    new-instance v1, Lcgg;

    const-string v3, "INACTIVE_THROTTLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcgg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcgg;->b:Lcgg;

    new-instance v3, Lcgg;

    const-string v5, "ACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcgg;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcgg;->c:Lcgg;

    const/4 v5, 0x3

    new-array v5, v5, [Lcgg;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcgg;->d:[Lcgg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcgg;
    .locals 1

    sget-object v0, Lcgg;->d:[Lcgg;

    invoke-virtual {v0}, [Lcgg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcgg;

    return-object v0
.end method
