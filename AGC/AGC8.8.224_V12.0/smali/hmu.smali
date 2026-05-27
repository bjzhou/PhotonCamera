.class public final enum Lhmu;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhmu;

.field public static final enum b:Lhmu;

.field public static final enum c:Lhmu;

.field private static final synthetic e:[Lhmu;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lhmu;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lhmu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhmu;->a:Lhmu;

    new-instance v1, Lhmu;

    const-string v3, "ACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lhmu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lhmu;->b:Lhmu;

    new-instance v3, Lhmu;

    const-string v5, "ON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lhmu;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lhmu;->c:Lhmu;

    const/4 v5, 0x3

    new-array v5, v5, [Lhmu;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lhmu;->e:[Lhmu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lhmu;->d:I

    return-void
.end method

.method public static a(Z)Lhmu;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lhmu;->a:Lhmu;

    goto :goto_0

    :cond_0
    sget-object p0, Lhmu;->b:Lhmu;

    :goto_0
    return-object p0
.end method

.method public static b(Lhmu;)Z
    .locals 1

    sget-object v0, Lhmu;->a:Lhmu;

    invoke-virtual {p0, v0}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static values()[Lhmu;
    .locals 1

    sget-object v0, Lhmu;->e:[Lhmu;

    invoke-virtual {v0}, [Lhmu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhmu;

    return-object v0
.end method
