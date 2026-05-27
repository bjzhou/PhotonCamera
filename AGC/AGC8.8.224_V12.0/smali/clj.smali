.class public final enum Lclj;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lclj;

.field public static final enum b:Lclj;

.field public static final enum c:Lclj;

.field private static final synthetic d:[Lclj;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lclj;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lclj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lclj;->a:Lclj;

    new-instance v1, Lclj;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lclj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lclj;->b:Lclj;

    new-instance v3, Lclj;

    const-string v5, "CAPTURING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lclj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lclj;->c:Lclj;

    const/4 v5, 0x3

    new-array v5, v5, [Lclj;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lclj;->d:[Lclj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lclj;
    .locals 1

    sget-object v0, Lclj;->d:[Lclj;

    invoke-virtual {v0}, [Lclj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lclj;

    return-object v0
.end method
