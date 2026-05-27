.class public final enum Lluo;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lluo;

.field public static final enum b:Lluo;

.field public static final enum c:Lluo;

.field private static final synthetic d:[Lluo;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lluo;

    const-string v1, "ANNOTATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lluo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lluo;->a:Lluo;

    new-instance v1, Lluo;

    const-string v3, "ATTACHMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lluo;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lluo;->b:Lluo;

    new-instance v3, Lluo;

    const-string v5, "NOT_FOR_UPLOAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lluo;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lluo;->c:Lluo;

    const/4 v5, 0x3

    new-array v5, v5, [Lluo;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lluo;->d:[Lluo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lluo;
    .locals 1

    sget-object v0, Lluo;->d:[Lluo;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lluo;

    return-object v0
.end method
