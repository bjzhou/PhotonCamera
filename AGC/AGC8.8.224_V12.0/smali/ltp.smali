.class public final enum Lltp;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lltp;

.field public static final enum b:Lltp;

.field public static final enum c:Lltp;

.field private static final synthetic d:[Lltp;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lltp;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lltp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lltp;->a:Lltp;

    new-instance v1, Lltp;

    const-string v3, "WEP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lltp;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lltp;->b:Lltp;

    new-instance v3, Lltp;

    const-string v5, "WPA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lltp;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lltp;->c:Lltp;

    const/4 v5, 0x3

    new-array v5, v5, [Lltp;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lltp;->d:[Lltp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lltp;
    .locals 1

    sget-object v0, Lltp;->d:[Lltp;

    invoke-virtual {v0}, [Lltp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lltp;

    return-object v0
.end method
