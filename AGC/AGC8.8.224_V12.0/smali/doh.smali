.class public final enum Ldoh;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldoh;

.field public static final enum b:Ldoh;

.field public static final enum c:Ldoh;

.field private static final synthetic d:[Ldoh;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ldoh;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldoh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldoh;->a:Ldoh;

    new-instance v1, Ldoh;

    const-string v3, "DUAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldoh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldoh;->b:Ldoh;

    new-instance v3, Ldoh;

    const-string v5, "DUAL_INDEPENDENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldoh;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldoh;->c:Ldoh;

    const/4 v5, 0x3

    new-array v5, v5, [Ldoh;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ldoh;->d:[Ldoh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldoh;
    .locals 1

    sget-object v0, Ldoh;->d:[Ldoh;

    invoke-virtual {v0}, [Ldoh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldoh;

    return-object v0
.end method
