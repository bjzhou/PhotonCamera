.class public final enum Ljya;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ljya;

.field public static final enum b:Ljya;

.field public static final enum c:Ljya;

.field private static final synthetic d:[Ljya;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljya;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljya;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljya;->a:Ljya;

    new-instance v1, Ljya;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljya;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljya;->b:Ljya;

    new-instance v3, Ljya;

    const-string v5, "METADATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljya;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljya;->c:Ljya;

    const/4 v5, 0x3

    new-array v5, v5, [Ljya;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ljya;->d:[Ljya;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ljya;
    .locals 1

    sget-object v0, Ljya;->d:[Ljya;

    invoke-virtual {v0}, [Ljya;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljya;

    return-object v0
.end method
